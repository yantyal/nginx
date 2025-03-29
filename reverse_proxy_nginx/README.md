# Reverse Proxy with Nginx + Slack Notification

This project sets up a reverse proxy using Nginx with load balancing support and a scheduled request system.  
If the request fails, a Slack notification is automatically sent.

## Usage

1. Clone the repository

    ```bash
    git clone https://github.com/your-username/reverse-proxy-nginx.git
    cd reverse-proxy-nginx
    ```

2. Create `.env` file manually

    You must manually create the following file before running the scripts:

    ```text
    env/.env
    ```

    With the following content:

    ```env
    SLACK_WEBHOOK_URL=https://hooks.slack.com/services/XXX/YYY/ZZZ
    SLACK_JSON_PATH=C:\\path\\to\\slack_payload.json
    ```

    > This file contains secrets. Do not commit it to the repository.

3. Start containers

    ```bash
    docker-compose up -d
    ```

4. Send a test request manually

    ```bash
    scheduler\\curl_app.bat
    ```