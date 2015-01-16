#include <macro.h>
/*
	File: fn_adminCompensate.sqf
	Author: ColinM9991
	
	Description:
	Figure it out.
*/
private["_value"];
_value = _this select 0;
life_atmCash = life_atmCash + _value;
hint format ["$%1 has been added to your account by an admin!", _value];
