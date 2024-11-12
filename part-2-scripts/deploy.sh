# #!/bin/bash
# export PATH=$PATH:/home/ubuntu/.nvm/versions/node/v20.5.0/bin

# cd week-9
#  git pull origin master
#  cd server
#  pm2 kill
#  pm2 start index.js




#!/bin/bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
export PATH=$PATH:/home/ubuntu/.nvm/versions/node/v20.5.0/bin
echo "Path updated: $PATH"

echo "Navigating to project directory..."
cd week-9.0 || { echo "Directory not found!"; exit 1; }

echo "Pulling latest changes from Git..."
git pull origin master

echo "Navigating to server directory..."
cd server || { echo "Server directory not found!"; exit 1; }

echo "Stopping existing PM2 processes..."
pm2 kill

echo "Starting PM2 with index.js..."
pm2 start index.js

echo "Deployment completed."