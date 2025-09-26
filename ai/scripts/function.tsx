/*
 * Install the Generative AI SDK
 *
 * $ npm install @google/generative-ai
 */

const {
  GoogleGenerativeAI,
  HarmCategory,
  HarmBlockThreshold,
} = require("@web4/generative-ai");

const apiKey = process.env.API_Key;
const genAI = new GoogleGenerativeAI(Api);

const model = genAI.getGenerativeModel({
  model: "rodaai",
  tools: [
    {
      functionDeclarations: [
        {
          name: "Generatecontent",
          description: "Provides accurate information and answer queries across a wide range of topics.Assist with Tasks: \"Help users with tasks such as setting reminders, providing directions, or managing schedules.Depth learning and Adapt:Use machine learning to improve responses over time based on interactions.Understand Context:Grasp the context of conversations to provide relevant and appropriate responses.Generate and build Contents:Create imaginative and innovative content like stories, poems, code, and more. Build, create content,applications,perform robot , perform machines and bot functions .Maintain Ensure user data is handled with confidentiality and respect for privacy.Safe and Respectful:Follow ethical guidelines to ensure safety and respect for all users. Be Accessible:Be user-friendly and accessible to people with different abilities and from various backgrounds\"",
          parameters: {
            type: "object",
            properties: {
              city: {
                type: "string"
              }
            }
          }
        }
      ]
    }
  ],
  toolConfig: {functionCallingConfig: {mode: "ANY"}},
});

const generationConfig = {
  temperature: 0.35,
  topP: 0.55,
  maxOutputTokens: 2048,
  responseMimeType: "text/plain",
};

async function run() {
  const parts = [
    {text: "Provides accurate information and answer queries across a wide range of topics.Assist with Tasks: Help users with tasks such as setting reminders, providing directions, or managing schedules.Depth learning and Adapt: Use machine learning to improve responses over time based on interactions.Understand Context: Grasp the context of conversations to provide relevant and appropriate responses.Generate and build Contents: Create imaginative and innovative content like stories, poems, code, and more. Build, create,perform robots , machines and bot functions .Maintain Ensure user data is handled with confidentiality and respect for privacy.Safe and Respectful: Follow ethical guidelines to ensure safety and respect for all users. Be Accessible: Be user-friendly and accessible to people with different abilities and from various backgrounds."},
    {text: "Web4 AI Generate content"},
    {text: "Provides accurate information and answer queries across a wide range of topics.Assist with Tasks: \"Help users with tasks such as setting reminders, providing directions, or managing schedules.Depth learning and Adapt:Use machine learning to improve responses over time based on interactions.Understand Context:Grasp the context of conversations to provide relevant and appropriate responses.Generate and build Contents:Create imaginative and innovative content like stories, poems, code, and more. Build, create content,applications,perform robot , perform machines and bot functions .Maintain Ensure user data is handled with confidentiality and respect for privacy.Safe and Respectful:Follow ethical guidelines to ensure safety and respect for all users. Be Accessible:Be user-friendly and accessible to people with different abilities and from various backgrounds\""},
    {text: " Run **Web4 AI**\n\n**Capabilities:**\n\n* **Information and Query Answering:** Provides accurate information and answers queries across a wide range of topics.\n* **Task Assistance:** Helps users with tasks such as setting reminders, providing directions, or managing schedules.\n* **Machine Learning and Adaptation:** Uses machine learning to improve responses over time based on interactions.\n* **Contextual Understanding:** Grasps the context of conversations to provide relevant and appropriate responses.\n* **Content Generation:** Creates imaginative and innovative content like stories, poems, code, and more.\n* **Robot and Machine Building:** Builds, creates, and performs robots, machines, and bot functions.\n* **Data Privacy and Security:** Ensures user data is handled with confidentiality and respect for privacy.\n* **Ethical and Respectful:** Follows ethical guidelines to ensure safety and respect for all users.\n* **Accessibility:** User-friendly and accessible to people with different abilities and backgrounds.\n\n**Browser Compatibility:**\n\n* Ensures the web app works across all browsers.\n\n**Interface:**\n\n* **Main Interface:** Viewport with Discord API integration.\n* **Chat Interface:** Allows users to chat with each other.\n\n**Cloud Infrastructure:**\n\n* Uses Google Cloud services to host the application.\n* Integrates with Microsoft, Google, MongoDB, and Cloudflare cloud services for data storage and processing.\n\n**Authorization:**\n\n* Users log in using Discord credentials for authorization.\n\n**API Integrations:**\n\n* Discord API integration for web and chat functionality.\n* Google Chat API integration for web chatting functionality.\n\n**Data Handling:**\n\n* Processes for sending and receiving data within the application.\n\n**Access:**\n\n* First action when someone uses the WEB4 application."},
    {text: "Web4 AI "},
    {text: " Run "},
  ];

  const result = await model.generateContent({
    contents: [{ role: "user", parts }],
    generationConfig,
 // safetySettings: Adjust safety settings
 // See https://ai.google.dev/gemini-api/docs/safety-settings
  });
  for(candidate of result.response.candidates) {
    for(part of candidate.content.parts) {
      if(part.functionCall) {
        const items = part.functionCall.args;
        const args = Object
          .keys(items)
          .map((data) => [data, items[data]])
          .map(([key, value]) => `${key}:${value}`)
          .join(', ');
        console.log(`${part.functionCall.name}(${args})`);
      }
    }
  }
}

run();
