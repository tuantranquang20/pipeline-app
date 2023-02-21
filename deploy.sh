echo "Deploying....."
rm -rf $HOME/pnh-test
mkdir -p $HOME/pnh-test
cd $HOME/pnh-test
git clone https://github.com/tuantranquang20/pnh-test.git .
npm install
npm run build
rm -rf /var/www/html
mkdir -p /var/www/html
cp -R ./build /var/www/html
echo "deployed"
