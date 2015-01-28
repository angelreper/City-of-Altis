#include <macro.h>
/*
	File: fn_adminCompensate.sqf
	Author: ColinM9991
	
	Description:
	Figure it out.
*/
disableSerialization;
private["_value","_action","_unit","_display"];
_value = parseNumber(ctrlText 9922);
_display = findDisplay 9920;
_unit = lbData[9969,(lbCurSel 9969)];
_unit = call compile format["%1",_unit];

if(__GETC__(life_adminlevel) < 2) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};
if(_value < 0) exitWith {hint "You entered a number less than zero wtf you doing bruh.";};
if(_value > 999999) exitWith {hint localize "STR_ANOTF_Fail"};
diag_log format ["Acording to this script, the fucking unit is this: %1", _unit];
if(isNil "_unit") exitWith {hint "The unit you selected uhmm appears not to be a unit.";};
if(isNull _unit) exitWith {hint "The unit you selected uhmm appears not to be a unit.";};
if(_unit == player) exitWith {hint localize "STR_ANOTF_Error";};

_action = [
	format [localize "STR_ANOTF_CompWarn",[_value] call life_fnc_numberText],
	localize "STR_Admin_Compensate",
	localize "STR_Global_Yes",
	localize "STR_Global_No"
] call BIS_fnc_guiMessage;

if(_action) then {
	[[_value],"life_fnc_playerComp",_unit,false] spawn life_fnc_MP;
	closeDialog 0;
} else {
	hint localize "STR_NOTF_ActionCancel";
	closeDialog 0;
};