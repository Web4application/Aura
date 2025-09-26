let model = GenerativeModel(name: "RODA", apiKey: "AIzaSyAvrxOyAVzPVcnzxuD0mjKVDyS2bNWfC10")
let cookieImage = UIImage(...)
let prompt = "build models,train models,compile data,run data,convert websites to app,and perform deeplearning?";
let response = try await model.generateContent(prompt, cookieImage)
let response = try await model.generateContent(prompt)
async function interactWithChatGPT(response) {
    const apiKey = '$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';
    const apiUrl = 'https://api.openai.com/v1/chat/completions';

    const response = await fetch(apiUrl, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'Authorization':'Bearer ${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}`,
        },
        body: JSON.stringify({
            model: 'generative',
            messages: messages,
        }),
    });

    const result = await response.json();
    console.log(result.choices[0].message.content);
    // Process and display the model's response in your application
}

// Example usage
const conversation = [
    { role: 'system', content: 'You are a helpful technician.' },
    { role: 'user', content: 'can you build,run,compile,generate,automate design data and test,recreate,generate,narrate,rebuild,imaginate and perform deep machine learning ?' },
];

interactWithChatGPT(response, data);
{
  "postAttachCommand": {
    "server": "npm start",
    "db": ["mysql", "-u", "root", "-p", "my database"]
  }
}
