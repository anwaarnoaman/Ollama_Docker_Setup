#!/bin/bash

# Start Ollama in the background.
/bin/ollama serve &
# Record Process ID.
pid=$!


# Pause for Ollama to start.
sleep 5

echo " Retrieve MMAMA3 model..."
ollama pull mistral:7b
ollama pull gemma3:12b
ollama pull qwen3:14b
ollama pull deepseek-r1:14b
ollama pull mistral-small3.1
ollama pull llama3.2:3b
ollama pull llama2:13b
ollama pull llama3.2-vision:11b



 

echo " Done"



# Wait for Ollama process to finish.
wait $pid