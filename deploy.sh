echo "Deploying....."
npm install
npm run build
rm -rf /var/www
mkdir -p /var/www
cp -R ./build /var/www
echo "deployed"
