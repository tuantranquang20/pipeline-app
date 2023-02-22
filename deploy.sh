echo "Deploying....."
yarn
yarn build
rm -rf /var/www
mkdir -p /var/www
cp -r ./build* /var/www/html
echo "deployed"
