add_library(libhelloworld SHARED helloworld.cpp)

set_target_properties(libhelloworld PROPERTIES PREFIX ""
        VERSION ${PROJECT_VERSION} SOVERSION ${PROJECT_VERSION_MAJOR})

install(TARGETS libhelloworld
        LIBRARY DESTINATION lib/${CMAKE_LIBRARY_ARCHITECTURE})

