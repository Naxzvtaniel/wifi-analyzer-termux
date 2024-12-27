# wifi-analyzer-termux
#!/bin/bash

# Wi-Fi Analyzer for Termux
echo "=== Wi-Fi Analyzer ==="

# Step 1: Install required packages
echo "Installing required packages..."
pkg update -y
pkg install git jq termux-api -y

# Step 2: Clone the repository from GitHub
echo "Cloning Wi-Fi Analyzer repository..."
git clone https://github.com/YourUsername/wifi-analyzer-termux.git
cd wifi-analyzer-termux

# Step 3: Granting permissions to run the script
echo "Making the script executable..."
chmod +x wifi_analyzer.sh

# Step 4: Running the script
echo "Running Wi-Fi Analyzer..."
./wifi_analyzer.sh

# Process information
echo "Scan completed. Results saved to wifi_report.txt."
