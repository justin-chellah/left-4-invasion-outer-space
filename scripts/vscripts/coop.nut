Msg("L4Invasion: No boss music script\n");

DirectorOptions <-
{
	function ShouldPlayBossMusic(index)
	{
		// Msg("PlayBossMusic = " + PlayBossMusic + "\n");

		return PlayBossMusic;
	}
}

DirectorOptions.PlayBossMusic <- 1;

function DisableBossMusic()
{
	Msg("L4Invasion: Disabled boss music\n");

	DirectorOptions.PlayBossMusic <- 0;
}