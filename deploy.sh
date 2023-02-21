echo "Deploying....."
npm install
npm run build
rm -rf /var/www/html
mkdir -p /var/www/html
cp -R ./build /var/www/html
echo "deployed"
