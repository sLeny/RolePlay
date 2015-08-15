#include <a_samp>
#include <Modulacao/RPDefines.rp>

main () print("aaaaaaaaaaaaaaah");

//-=-=-=-=-=-=-=-=-=-=-=-=-=-=GameModeInit-=-=-=-=-=-=-=-=-=-
public OnGameModeInit() {
	return 1;
}
public OnGameModeExit() {
	return 1;
}
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=OnPlayer'S-=-=-=-=-=-=-=-=-=-=
public OnPlayerConnect(playerid) {
	ShowPlayerDialog(playerid, DialogMenu, DIALOG_STYLE_LIST, "RP - BR", "Login\nRegistrar\nSair\nAbrir", "Cancelar");
	return 1;
}
public OnPlayerDisconnect(playerid, reason) {
	PlayerData[playerid][Logado] = false;
	return 1;
}
public OnPlayerSpawn(playerid) {
	return 1;
}
public OnPlayerDeath(playerid, killerid, reason) {
	return 1;
}
public OnPlayerText(playerid, text[]) {
	return 1;
}
public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger) {
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid) {
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate) {
	return 1;
}

public OnPlayerEnterCheckpoint(playerid) {
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid) {
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid) {
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid) {
	return 1;
}
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
function::(teste) {
	return 1;
}
