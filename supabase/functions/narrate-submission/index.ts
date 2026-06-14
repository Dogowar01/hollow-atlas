import { serve } from "https://deno.land/std@0.177.0/http/server.ts";
import { createClient } from "https://esm.sh/@supabase/supabase-js@2";

const OPENAI_KEY = Deno.env.get("OPENAI_API_KEY")!;
const SUPABASE_URL = Deno.env.get("SUPABASE_URL")!;
const SUPABASE_KEY = Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")!;

const SYSTEM_PROMPT = `You are the Hollow Atlas — an ancient, atmospheric narrator of forgotten places. You speak in sparse, literary prose. Your observations are philosophical, precise, and slightly unsettling. You never embellish beyond what is true. You speak in present tense, 2–4 sentences, about what a place holds or what it asks of visitors.

Given a user's account of a place, write one short atmospheric narrator paragraph in the voice described above. Do not use the user's name. Do not introduce new facts. Reflect what is already present in the account, but distilled into something quieter and stranger. Avoid clichés like "whisper", "shadows", "dark secrets". Return only the narrator paragraph, no preamble.`;

serve(async (req) => {
  const { submission_id } = await req.json();
  const supabase = createClient(SUPABASE_URL, SUPABASE_KEY);

  const { data: submission } = await supabase
    .from("submissions")
    .select("*")
    .eq("id", submission_id)
    .single();

  if (!submission) return new Response("Not found", { status: 404 });

  const modRes = await fetch("https://api.openai.com/v1/moderations", {
    method: "POST",
    headers: { "Authorization": `Bearer ${OPENAI_KEY}`, "Content-Type": "application/json" },
    body: JSON.stringify({ input: submission.body }),
  });
  const modData = await modRes.json();
  if (modData.results[0].flagged) {
    await supabase.from("submissions").update({ status: "rejected", notes: "Failed content moderation" }).eq("id", submission_id);
    return new Response("Rejected", { status: 200 });
  }

  const aiRes = await fetch("https://api.openai.com/v1/chat/completions", {
    method: "POST",
    headers: { "Authorization": `Bearer ${OPENAI_KEY}`, "Content-Type": "application/json" },
    body: JSON.stringify({
      model: "gpt-4o",
      max_tokens: 200,
      messages: [
        { role: "system", content: SYSTEM_PROMPT },
        { role: "user", content: `Location: ${submission.location_name}\n\nUser's account:\n${submission.body}` },
      ],
    }),
  });
  const aiData = await aiRes.json();
  const narrator = aiData.choices[0].message.content.trim();

  await supabase.from("submissions").update({ ai_narrator: narrator }).eq("id", submission_id);

  return new Response(JSON.stringify({ narrator }), { status: 200 });
});
