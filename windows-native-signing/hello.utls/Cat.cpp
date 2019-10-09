#include "pch.h"
#include "Cat.h"

Cat::Cat()
{
	_legs = 4;
	_meow = true;
	setName("Fluffy");
}

void Cat::setSize(string size)
{
	_size = size;
}

void Cat::setEars(string type)
{
	_earType = type;
}

string Cat::getName()
{
	return _name;
}

void Cat::setName(string name)
{
	_name = name;
}
