import json
from config import base_url
import requests

def lambda_handler(event, context):
    res = requests.get(url=base_url+'todos/1')
    return {
        'statusCode': res.statusCode,
        'body': res.json()    
    }


'''Error: "errorMessage": "No module named 'requests'",
"errorType": "ModuleNotFoundError"

What it means:

AWS Lambda comes with a pre-installed set of Python libraries, but requests is not included by default.

When your function tries to import requests, Python cannot find it in the Lambda environment, so it raises a ModuleNotFoundError.

Key point: Any third-party library not included in the default Lambda environment must be packaged with your function or installed via a Lambda layer.

solution: Use a Lambda Layer for requests

1. Create a Lambda layer containing the requests library.

2. Attach the layer to your Lambda function.

3. Lambda will now be able to import requests without packaging it in your function.
'''