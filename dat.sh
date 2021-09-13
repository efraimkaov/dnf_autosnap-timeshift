#!/bin/bash
if [[ $EUID -ne 0 ]]; then
  echo "# dnf aliases" >> ~/.bashrc
  echo "alias dnf-in='sudo timeshift --create && sudo dnf install'" >> ~/.bashrc
  echo "alias dnf-rei='sudo timeshift --create && sudo dnf reinstall'" >> ~/.bashrc
  echo "alias dnf-rm='sudo timeshift --create && sudo dnf remove'" >> ~/.bashrc
  echo "alias dnf-up='sudo timeshift --create && sudo dnf upgrade'" >> ~/.bashrc
else
  echo "This script must be run as regular user!"
fi
