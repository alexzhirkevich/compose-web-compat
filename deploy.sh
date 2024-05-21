./gradlew clean
./gradlew compatBrowserDistribution || return -1
rm -rf ./composeResources
cp -r ./example/webApp/build/dist/compat/productionExecutable/* .
rm -rf ./META-INF
git add .
git commit -m "deploy"
git push origin gh-pages