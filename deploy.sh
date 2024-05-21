./gradlew composeApp:clean
./gradlew composeApp:compatBrowserProductionDistribution

rm -rf ./docs
mkdir docs
cp -r ./composeApp/build/dist/compat/productionExecutable/* docs

git add .
git commit -m "deploy"
git push origin gh-pages