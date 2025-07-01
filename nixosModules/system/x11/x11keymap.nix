{pkgs, lib, ... }:
{
	# Configure keymap in X11
	services.xserver.xkb = {
		layout = "us";
		variant = "";
		options = "caps:escape";
	};
	services.kmscon.useXkbConfig = true;
}
