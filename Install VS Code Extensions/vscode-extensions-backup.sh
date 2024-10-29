#!/bin/bash

# Usage:
# ./vscode-extensions-backup.sh export - to export extensions to a file
# ./vscode-extensions-backup.sh import - to install extensions from the file

FILE="vscode-extensions.txt"

if [ "$1" == "export" ]; then
    echo "Exporting installed extensions to $FILE..."
    code --list-extensions > $FILE
    echo "Extensions exported successfully."

elif [ "$1" == "import" ]; then
    if [ -f "$FILE" ]; then
        echo "Installing extensions from $FILE..."
        xargs -n 1 code --install-extension < $FILE
        echo "Extensions installed successfully."
    else
        echo "Error: $FILE does not exist. Please export extensions first."
    fi

else
    echo "Invalid option. Use 'export' to export extensions or 'import' to install them."
fi


