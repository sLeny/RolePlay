#include <a_samp>
#include <Modulacao/RPDefines.rp>

main () print("aaaaaaaaaaaaaaah");

//-=-=-=-=-=-=-=-=-=-=-=-=-=-=GameModeInit-=-=-=-=-=-=-=-=-=-
public OnGameModeInit() {
	LimitGlobalChatRadius(0.20);
	return 1;
}
public OnGameModeExit() {
	return 1;
}
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=OnPlayer'S-=-=-=-=-=-=-=-=-=-=
public OnPlayerConnect(playerid) {

	GetPlayerName(playerid, PlayerName[playerid], 24);
	ShowPlayerDialog(playerid, DialogMenu, DIALOG_STYLE_LIST, "RP - BR", "Login\nRegistrar\nSair","Abrir", "Cancelar");
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
	new MsgText[130];
	if(PlayerData[playerid][Logado] != false) {
		format(MsgText, sizeof(MsgText), "* %s [%d]: %s", PlayerName[playerid], playerid, text);
		SendClientMessageToAll(GetPlayerColor(playerid), MsgText);
	}
	return 0;
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
