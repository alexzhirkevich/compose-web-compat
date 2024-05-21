#./gradlew composeApp:clean
#./gradlew composeApp:compatBrowserProductionDistribution
#cp -r ./composeApp/build/dist/compat/productionExecutable/* .
#rm -rf ./META-INF
git add .
git commit -m "deploy"
git push origin gh-pages