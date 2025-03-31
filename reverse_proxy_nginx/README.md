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

## Slack Notification Setup

To receive notifications on Slack when a request fails, follow these steps:

1. **Create an Incoming Webhook in Slack**

    - Open your Slack workspace.
    - Go to [Incoming Webhooks](https://api.slack.com/messaging/webhooks).
    - Click **Create your own app**.
    - Choose a name (e.g., "Reverse Proxy Notifier") and select the workspace.
    - Go to **Incoming Webhooks** → **Activate Incoming Webhooks**.
    - Click **Add New Webhook to Workspace** and choose a channel (e.g., `#alerts`).
    - Copy the **Webhook URL** provided.

2. **Update your `.env` file**

    Save the following content in `env/.env`:

    ```env
    SLACK_WEBHOOK_URL=https://hooks.slack.com/services/XXX/YYY/ZZZ
    SLACK_JSON_PATH=C:\\path\\to\\slack_payload.json
    ```

    Replace `https://hooks.slack.com/services/...` with your actual Webhook URL.
