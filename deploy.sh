#!/bin/bash
# Script de deploy corectat pentru GitHub Actions

SERVER_IP="${EC2_HOST:-3.79.167.173}"
KEY_PATH="${SSH_KEY_PATH:-~/.ssh/devops-keypair.pem}"
LOCAL_FILE="index.html"
REMOTE_PATH="/var/www/html/"

echo "🚀 Deploying $LOCAL_FILE to EC2 instance at $SERVER_IP..."

scp -i "$KEY_PATH" -o StrictHostKeyChecking=no "$LOCAL_FILE" ubuntu@$SERVER_IP:/home/ubuntu/
ssh -i "$KEY_PATH" -o StrictHostKeyChecking=no ubuntu@$SERVER_IP "sudo mv /home/ubuntu/index.html $REMOTE_PATH && sudo systemctl restart nginx"

echo "✅ Deploy finalizat!"
