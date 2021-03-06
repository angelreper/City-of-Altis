#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",7000],
			["TCG_CVPILBFD",8000],
			["DAR_TahoeEMS",9000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",5000],
			["O_Heli_Light_02_unarmed_F",7500],
			["Heli_Transport_DZ",12000],
			["Heli_Transport_CDN808",12000],
			["Heli_Transport_DK10",12000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["MMT_USMC",500],
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["LandRover_TK_CIV_EP1",20000],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",275000],
			["O_Truck_03_transport_F",200000],
			["O_Truck_03_covered_F",250000],
			["B_Truck_01_box_F",350000],
			["O_Truck_03_device_F",450000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",150000],
			["B_Heli_Light_01_F",325000]
		];
		
		if(license_civ_rebel) then
		{
			_return pushBack
			["B_G_Offroad_01_armed_F",750000];
			_return pushBack
			["LandRover_MG_TK_EP1",800000];
			
		};
	};
	
	case "cop_car":
	{
		_return pushBack
		["demian2435_police_car",5000];
		_return pushBack
		["TCG_CVPIFPBLBPD",6000];
		_return pushBack
		["demian2435_police_offroad",12000];
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_return =
			[
				["TCG_CVPIFPBPD",6500],
				["TCG_CVPIFPBLBSTATE",6500],
				["TCG_CVPIFPBSTATE",7000]
			];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return pushBack
			["demian2435_swat_offroad",20000];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return =
			[
				["demian2435_swat_hunter",30000],
				["TCG_CVPIUCBlack",8000],
				["TCG_CVPIUCWhite",8000]
			];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return pushBack
			["B_MRAP_01_F",30000];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000]
		];
	};
	
	case "cop_air":
	{
		_return pushBack
		["demian2435_police_helicopter",75000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Light_01_F",100000];
			_return pushBack
			["B_Heli_Transport_01_F",200000];
		};
	};
	
	case "cop_airhq":
	{
		_return pushBack
		["demian2435_police_helicopter",75000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Light_01_F",100000];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return pushBack
			["B_MRAP_01_hmg_F",750000];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;