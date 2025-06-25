#!/bin/bash
cd /home/kavia/workspace/code-generation/turkish-defense-interactive-overview-59765-2bc9ff01/slide_deck_frontend_workspace/slide_deck_frontend
npx run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
  exit 1
fi

