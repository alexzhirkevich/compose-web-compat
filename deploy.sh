./gradlew clean
./gradlew compatBrowserDistribution
cp -r ./composeApp/build/dist/compat/productionExecutable/* .
rm -rf ./META-INF
git add .
git commit -m "deploy"
git push origin gh-pages