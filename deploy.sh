echo "Deploying....."
rm -rf $HOME/pipeline-app
mkdir -p $HOME/pipeline-app
cd $HOME/pipeline-app
git clone https://github.com/tuantranquang20/pipeline-app.git .
npm install
npm run build
rm -rf /var/www/html
mkdir -p /var/www/html
cp -R ./build /var/www/html
echo "deployed"
