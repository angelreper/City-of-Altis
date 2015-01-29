/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	case "C_Offroad_01_F": {90};
	case "B_G_Offroad_01_F": {90};
	case "B_Quadbike_01_F": {30};
	case "I_Truck_02_covered_F": {300};
	case "I_Truck_02_transport_F": {250};
	case "C_Hatchback_01_F": {60};
	case "C_Hatchback_01_sport_F": {45};
	case "C_SUV_01_F": {80};
	case "C_Van_01_transport_F": {150};
	case "I_G_Van_01_transport_F": {150};
	case "C_Van_01_box_F": {200};
	case "C_Boat_Civil_01_F": {85};
	case "C_Boat_Civil_01_police_F": {85};
	case "C_Boat_Civil_01_rescue_F": {85};
	case "B_Truck_01_box_F": {450};
	case "B_Truck_01_transport_F": {325};
	case "B_MRAP_01_F": {65};
	case "O_MRAP_02_F": {60};
	case "I_MRAP_03_F": {58};
	case "B_Heli_Light_01_F": {90};
	case "O_Heli_Light_02_unarmed_F": {210};
	case "I_Heli_Transport_02_F": {375};
	case "C_Rubberboat": {80};
	case "O_Boat_Armed_01_hmg_F": {175};
	case "B_Boat_Armed_01_minigun_F": {175};
	case "I_Boat_Armed_01_minigun_F": {175};
	case "B_G_Boat_Transport_01_F": {70};
	case "B_Boat_Transport_01_F": {70};
	case "O_Truck_03_transport_F": {350};
	case "O_Truck_03_covered_F": {400};
	case "O_Truck_03_device_F": {350};
	case "Land_CargoBox_V1_F": {1000};
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {700};
	case "DAR_TahoeEMS": {200};
	case "demian2435_swat_offroad": {100};
	case "demian2435_swat_hunter": {250};
	case "demian2435_police_car": {80};
	case "demian2435_police_offroad": {100};
	case "demian2435_police_helicopter":{220};
	case "Heli_Transport_DZ":{350};
	case "Heli_Transport_CDN808":{350};
	case "Heli_Transport_DK10":{350};
	case "MMT_USMC":{15};
	case "LandRover_TK_CIV_EP1":{200};
	case"TCG_CVPILBFD":{80};
	default {-1};
};