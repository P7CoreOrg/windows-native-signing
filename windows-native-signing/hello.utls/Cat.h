#pragma once

#include <string>
using namespace std;
class  __declspec(dllexport) Cat
{

public:
	Cat();
	void setSize(string size);
	virtual void setEars(string type);
	string getName();
	void setName(string name);
private:
	string _size, _earType;
	int _legs;
	bool _meow;
	string _name;
};

