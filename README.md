
Gradle script for building compat (js/wasm) bundle of the Compose Multiplatform web app based on client wasm GC availability
with single entry point and resources.

[Example compat app](https://alexzhirkevich.github.io/compose-web-compat/)

<img width="953" alt="image" src="https://github.com/alexzhirkevich/compose-web-compat/assets/63979218/af7f72b1-c238-4954-b461-572d0aabd509">

Tasks 
- `compatBrowserProductionDistribution`
- `compatBrowserDevelopmentDistribution`

 <img width="305" alt="image" src="https://github.com/alexzhirkevich/compose-web-compat/assets/63979218/8fb29c7b-9fb9-4c01-ab10-48ac4e43f88f">


 are used to generate a compat bundle to the `build/dist/compat` directory. 

Task 
1. Assembles js and wasm distributables
2. Merges two distributables to the single bundle
3. Appends wasmGC detection script to the `index.html`
4. Appends hashes for script files to avoid browser caching

https://github.com/GoogleChromeLabs/wasm-feature-detect is used to detect wasmGC feature.

To run locally default `jsBrowserRun` and `wasmJsBrowserRun` tasks can be used. Script will automatically add required js files to the `index.html`

