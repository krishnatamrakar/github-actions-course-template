#!/bin/bash

echo "🔄 Updating Webpack and related dependencies..."

# Initialize npm if needed
if [ ! -f "package.json" ]; then
  echo "⚠️ No package.json found. Run this script from the root of a Node.js project."
  exit 1
fi

# Upgrade Webpack and core tools
npm install --save-dev webpack@latest webpack-cli@latest webpack-dev-server@latest

# Common related dependencies (optional, based on your setup)
npm install --save-dev babel-loader@latest css-loader@latest style-loader@latest html-webpack-plugin@latest mini-css-extract-plugin@latest clean-webpack-plugin@latest

# Clean npm cache (optional but recommended)
npm cache verify

echo "✅ Webpack and related dependencies updated to latest versions!"
