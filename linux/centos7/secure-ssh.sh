
# Check if a username is provided

if [ $# -ne 1 ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

USER_NAME=$1
SSH_DIR="/home/$USER_NAME/.ssh"
AUTHORIZED_KEYS="$SSH_DIR/authorized_keys"

# Create the user without a password

sudo useradd -m -s /bin/bash "$USER_NAME"

# Create .ssh directory and set permissions

sudo mkdir -p "$SSH_DIR"
sudo chmod 700 "$SSH_DIR"
sudo chown "$USER_NAME":"$USER_NAME" "$SSH_DIR"

# Copy the public key from the repository (modify as needed)
sudo cp ~Docker-Project/linux/public-keys/id_rsa.pub "$AUTHORIZED_KEYS"

# Set permissions for authorized_keys

sudo chmod 600 "$AUTHORIZED_KEYS"
sudo chown "$USER_NAME":"$USER_NAME" "$AUTHORIZED_KEYS"

echo "User $USER_NAME created and configured for SSH key authentication."

