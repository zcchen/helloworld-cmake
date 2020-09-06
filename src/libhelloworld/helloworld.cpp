#include <iostream>
#include "helloworld/helloworld.hpp"

int HelloWorld::hello(void)
{
	std::cout << "Hello World~~" << std::endl;
	return 0;
}

int HelloWorld::bye(void)
{
	std::cout << "bye..." << std::endl;
	return 0;
}
