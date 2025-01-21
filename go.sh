echo "Build Eliza"
cd ./eliza
if [ ! -d "node_modules" ]; then
    echo "First time setup - installing dependencies..."
    pnpm install --no-frozen-lockfile
else
    pnpm install
fi
pnpm build
echo "Run Eliza"
echo "---"
echo "Please make sure you have set up the following environment variables in eliza-starter/.env:"
echo "- CRONOS_PRIVATE_KEY (Your private key) e.g. 0x..."
echo "- OPENAI_API_KEY (Your OpenAI API key) e.g. sk-..."
echo "- TELEGRAM_BOT_TOKEN (Your Telegram bot token) e.g. 1234567890:AA..."
echo "---"
cd ../eliza-starter && ./go.sh
