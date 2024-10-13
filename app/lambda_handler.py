import json


def lambda_handler(event, context):
    # obter body do evento SQS recebido
    try:
        body = json.loads(event['Records'][0]['body'])
        print(body)

    except Exception as e:
        print(e)
        return {
            "statusCode": 400,
            "body": json.dumps({
                "message": "Invalid request"
            }),
        }
    return {
        "statusCode": 200,
        "body": json.dumps({
            "message": "OK"
        }),
    }