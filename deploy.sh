#!/bin/bash

# init script
PUBLIC_DIR=_generated
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)" 
YELLOW='\033[1;33m'
WHITE='\033[1;37m'
SET='\033[0m'
pushd "$script_dir"

set -o errexit
set -o pipefail
set -o nounset

echo -e "${YELLOW}INFO:${WHITE} Starting deploy script...${SET}"
sleep 1

# Clean up old files
echo -e "${YELLOW}1/4:${WHITE} Clean up old files${SET}"
rm -rv $PUBLIC_DIR
hexo clean

# Generate blog
echo -e "${YELLOW}2/4:${WHITE} Generate blog files${SET}"
hexo generate

# Run PostCSS
echo -e "${YELLOW}3/4:${WHITE} Run PostCSS${SET}"
cd $PUBLIC_DIR
postcss css/style.css --replace --verbose

# Deploy to Github Pages
echo -e "${YELLOW}4/4:${WHITE} Deploy to Github Pages${SET}"
hexo deploy

echo -e "${YELLOW}INFO:${WHITE} Script finished, will close in 5 seconds...${SET}"
sleep 5