./gradlew clean
./gradlew compatBrowserDistribution || return -1
cp -r ./composeApp/build/dist/compat/productionExecutable/* .
rm -rf ./META-INF
git add .
git commit -m "deploy"
git push origin gh-pages