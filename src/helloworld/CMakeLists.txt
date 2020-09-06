add_executable(helloworld main.cpp)
target_link_libraries(helloworld libhelloworld)
install(TARGETS helloworld
        RUNTIME DESTINATION bin)
