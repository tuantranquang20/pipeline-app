echo "Deploying....."
whoami
ls -la
yarn --version
node -v
yarn
yarn build
rm -rf /var/www
mkdir -p /var/www
cp -R ./build /var/www
echo "deployed"
