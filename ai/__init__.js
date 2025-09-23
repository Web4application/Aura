import OpenAI from 'openai';

const openai = new OpenAI({ ',
  baseURL: 'https://integrate.api.nvidia.com/v1',
})

async function main() {
  const completion = await openai.chat.completions.create({
    model: "nvidia/nvidia-nemotron-nano-9b-v2",
    messages: [{"role":"user","content":""}],
    temperature: 0.6,
    top_p: 0.95,
    max_tokens: 2048,
    frequency_penalty: 0,
    presence_penalty: 0,
    stream: false,
    extra_body: {
      min_thinking_tokens: 1024,
      max_thinking_tokens: 2048
    }
  })
   
  const reasoning = completion.choices[0]?.message?.reasoning_content;
  if (reasoning) process.stdout.write(reasoning + "\n");
  process.stdout.write(completion.choices[0]?.message?.content);
  
}

main();
