{
    "class": "Workflow", 
    "label": "Hello World", 
    "doc": "Outputs a message using echo", 
    "inputs": [
        {
            "type": "string", 
            "id": "#main/main/usermessage"
        }
    ], 
    "outputs": [
        {
            "outputSource": "#main/main/step0/response", 
            "type": "File", 
            "id": "#main/main/response"
        }
    ], 
    "steps": [
        {
            "run": {
                "class": "CommandLineTool", 
                "inputs": [
                    {
                        "type": "string", 
                        "doc": "The message to print", 
                        "default": "Hello World", 
                        "inputBinding": {
                            "position": 1
                        }, 
                        "id": "#main/main/step0/10673757-9f47-4d28-a8ec-84ff19d02951/message"
                    }
                ], 
                "baseCommand": "echo", 
                "arguments": [
                    "-n", 
                    "-e"
                ], 
                "stdout": "response.txt", 
                "outputs": [
                    {
                        "type": "File", 
                        "id": "#main/main/step0/10673757-9f47-4d28-a8ec-84ff19d02951/response", 
                        "outputBinding": {
                            "glob": "response.txt"
                        }
                    }
                ], 
                "id": "#main/main/step0/10673757-9f47-4d28-a8ec-84ff19d02951"
            }, 
            "in": [
                {
                    "source": "#main/main/usermessage", 
                    "id": "#main/main/step0/message"
                }
            ], 
            "out": [
                "#main/main/step0/response"
            ], 
            "id": "#main/main/step0"
        }
    ], 
    "id": "#main", 
    "cwlVersion": "v1.0"
}