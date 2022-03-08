
```
mkdir -p build/{Release,Debug}
cmake3 -DCMAKE_BUILD_TYPE=Release -G "Unix Makefiles" -DVANILLA_NO_EXAMPLES -DCMAKE_INSTALL_PREFIX=/workspace/adx/release ../../
cmake3 -DCMAKE_BUILD_TYPE=Debug -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX=/workspace/adx/debug ../../
```