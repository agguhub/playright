# poc playright
# Execute these commands =>
docker-compose up -d
# In your container, launch =>
npm init playwright@latest
npx playwright test
npx playwright install
bash playright_extension.sh
npx playwright test
# if you want to see your report, then =>
npx playwright show-report