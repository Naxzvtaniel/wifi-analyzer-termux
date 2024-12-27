#!/bin/bash
# Wi-Fi Analyzer for Termux

echo "=== Wi-Fi Analyzer ==="

# Sprawdzanie dostępnych sieci Wi-Fi
echo "Scanning Wi-Fi networks..."
termux-wifi-scaninfo > wifi_data.json

# Wyświetlanie dostępnych sieci Wi-Fi
echo "Available Wi-Fi networks:"
jq -r '.[] | "\(.ssid) - Signal Strength: \(.rssi) dBm"' wifi_data.json

# Sortowanie sieci po sile sygnału
echo ""
echo "Sorting by signal strength..."
jq -r 'sort_by(.rssi)[] | "\(.ssid) - Signal Strength: \(.rssi) dBm"' wifi_data.json | tac

# Zapisanie wyników do pliku
echo ""
echo "Saving results to wifi_report.txt..."
jq -r 'sort_by(.rssi)[] | "\(.ssid) - Signal Strength: \(.rssi) dBm"' wifi_data.json | tac > wifi_report.txt
echo "Results saved to wifi_report.txt!"
