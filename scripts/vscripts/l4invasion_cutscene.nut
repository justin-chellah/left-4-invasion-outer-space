Msg("Quieting director for cutscene\n");

local infected = null;
local witch = null;
local player = null;

DirectorOptions <-
{
	ProhibitBosses = true
	SpecialRespawnInterval = 999999
	CommonLimit = 0
}
	
while (infected = Entities.FindByClassname(infected, "infected")) 
{
	infected.Kill();
}

while (witch = Entities.FindByClassname(witch, "witch")) 
{
	witch.Kill();
}
	
while (player = Entities.FindByClassname(player, "player"))
{
	if (player.IsSurvivor())
	{
		NetProps.SetPropFloat(player, "m_itTimer.m_timestamp", -1.0);
	
		StopSoundOn("Event.VomitInTheFace", player.GetEntityHandle());
	}
	else if (NetProps.GetPropInt(player, "m_iTeamNum") == 3)
	{
		player.Kill();
	}
}