# app/main.py
from utils.setup import setup_agent
from utils.chat import chat_with_agent

print("Sales Agent is ready! Type 'quit' to exit.")
while True:
    user_input = input("You: ")
    if user_input.lower() in ['quit', 'exit']:
        break
    response = chat_with_agent(user_input)
    print(f"Agent: {response}")
