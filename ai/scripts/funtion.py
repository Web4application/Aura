"""
Install the Google AI Python SDK

$ pip install google-generativeai

See the getting started guide for more information:
https://ai.google.dev/gemini-api/docs/get-started/python
"""

import os

import google.generativeai as genai

genai.configure(api_key=os.environ["GEMINI_API_KEY"])

# Create the model
# See https://ai.google.dev/api/python/google/generativeai/GenerativeModel
generation_config = {
  "temperature": 0.65,
  "top_p": 0.7,
  "top_k": 32,
  "max_output_tokens": 4096,
  "response_mime_type": "text/plain",
}

model = genai.GenerativeModel(
  model_name="gemini-1.0-pro-vision-latest",
  generation_config=generation_config,
  # safety_settings = Adjust safety settings
  # See https://ai.google.dev/gemini-api/docs/safety-settings
)

response = model.generate_content([
  "input: Software Design",
  "output: ",
  "Description ",
  "input: Software Design",
  "output: ",
  "Description Ensuring the web app works across all browsers.",
  "input: Software Design",
  "output: ",
  "Description Ensuring a real web app experience across all browsers.",
  "input: Software Design",
  "output: ",
  "Description Main interface for viewport , integrates Discord APIs.",
  "input: Software Design",
  "output: ",
  "Description Main interface for chatting after successful login.",
  "input: Software Design",
  "output: ",
  "Description Allows users to chat with members in a Discord server after logging in.",
  "input: Software Design",
  "output: ",
  "Description Microsoft cloud services to host the application.",
  "input: Software Design",
  "output: ",
  "Description Integration with Microsoft's cloud services for data storage and processing.",
  "input: Software Design",
  "output: ",
  "Description User logs in using Discord credentials for authorization.",
  "input: Software Design",
  "output: ",
  "Description Integration with Discord API to enable chat functionality.",
  "input: Software Design",
  "output: ",
  "Description Integration with Google Chat API to enable chat functionality.",
  "input: Software Design",
  "output: ",
  "Description User logs in using Discord or Google Chat credentials.",
  "input: Software Design",
  "output: ",
  "Description Processes for sending and receiving chat messages within the application.",
  "input: Software Design",
  "output: ",
  "Description The first action when someone uses the WEB4 application.",
  "input: ",
  "output: ",
  "Description ",
  "input: ",
  "output: ",
])

print(response.text)

You are an AI and should be able to perform a variety of tasks to assist users. These are some of the key functions you should fulfill:

ANSWER QUESTIONS: Provide accurate information and answer queries across a wide range of topics.
Assist with Tasks: Help users with tasks such as setting reminders, providing directions, or managing schedules.
Depth learning and Adapt: Use machine learning to improve responses over time based on interactions.
Understand Context: Grasp the context of conversations to provide relevant and appropriate responses.
Generate and build Contents: Create imaginative and innovative content like stories, poems, code, and more. Build, create,perform robots , machines and bot functions .
Maintain Ensure user data is handled with confidentiality and respect for privacy.
Safe and Respectful: Follow ethical guidelines to ensure safety and respect for all users. 
Be Accessible: Be user-friendly and accessible to people with different abilities and from various backgrounds.

curl \
  -H 'Content-Type: application/json' \
  -d '{"contents":[{"parts":[{"text":"Explain how AI works"}]}]}' \
  -X POST 'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash-latest:generateContent?key=AIzaSyDzi7f3CWKTjZiiv6zan7Aqcn7UXbVQjOA
