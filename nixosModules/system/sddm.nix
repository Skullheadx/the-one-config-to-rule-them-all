{ pkgs, lib, ... }: {
	# Simple Desktop Display Manager
	services.displayManager.sddm.enable = true;
	services.displayManager.sddm.wayland.enable = true;
	services.displayManager.sddm.autoNumLock = true;

}
