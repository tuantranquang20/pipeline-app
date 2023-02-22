echo "Deploying....."
yarn
yarn build
rm -rf /var/www
mkdir -p /var/www
cp -R ./build /var/www
echo "deployed"
