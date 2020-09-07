helloworld project
===========================================
This is a helloworld project to build and make the cpp program with CMake.

Principle
-------------------------------------------
1. Keep the original `make install`, no matter it from `CMakeLists.txt` or `Makefile`.
2. Use `debian/` folder to hold the `debian` related packing methods.
3. Use `docker/` folder to hold the `docker` image building methods.
   + Use `docker/Dockerfile` for local build and local installation.
   + Use `docker/Dockerfile.ci` for CI build and CI installation.
