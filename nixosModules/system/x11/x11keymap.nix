{pkgs, lib, ... }:
{
	# Configure keymap in X11
	services.xserver.xkb = {
		layout = "us";
		variant = "";
		xkb.options = "caps:escape";
	};
	services.kmscon.useXkbConfig = true;
}
