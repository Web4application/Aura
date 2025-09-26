import speech_recognition as sr
import pyttsx3
from transformers import pipeline

# Initialize the text-to-speech engine
tts_engine = pyttsx3.init()

# Initialize the speech recognizer
recognizer = sr.Recognizer()

# Load the conversational AI model
conversation_pipeline = pipeline('conversational', model='microsoft/DialoGPT-medium')

def recognize_speech():
    with sr.Microphone() as source:
        print("Listening...")
        audio = recognizer.listen(source)
        try:
            print("Recognizing...")
            text = recognizer.recognize_google(audio)
            print(f"User: {text}")
            return text
        except sr.UnknownValueError:
            print("Could not understand the audio.")
            return ""
        except sr.RequestError:
            print("Could not request results from the recognition service.")
            return ""

def generate_response(text):
    conversation = conversation_pipeline(text)
    response = conversation[0]['generated_text']
    print(f"AI: {response}")
    return response

def speak_text(text):
    tts_engine.say(text)
    tts_engine.runAndWait()

def main():
    while True:
        user_input = recognize_speech()
        if user_input.lower() in ["exit", "quit"]:
            break
        response = generate_response(user_input)
        speak_text(response)

if __name__ == "__main__":
    main()
