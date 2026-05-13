#!/bin/bash

# URL del Rickroll (reproducción automática y silenciado)
URL="https://www.youtube.com/watch?v=dQw4w9WgXcQ"

# Redirigimos la salida de error estándar (2>&1) y la normal a /dev/null 
# para que la terminal de la víctima no muestre ningún mensaje sospechoso.

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Entorno Linux
    xdg-open "$URL" > /dev/null 2>&1
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Entorno macOS
    open "$URL" > /dev/null 2>&1
elif [[ "$OSTYPE" == "cygwin" ]] || [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "win32" ]]; then
    # Entorno Windows (ejecutado desde Git Bash, Cygwin, WSL, etc.)
    start "" "$URL" > /dev/null 2>&1
else
    # Falla silenciosamente si no reconoce el sistema
    exit 0
fi