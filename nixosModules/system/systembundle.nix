{ pkgs, lib, ...}: {
	
	imports = [
		./bootloader.nix
		./kernel.nix
		./diskencryption.nix
		./localization.nix
		./networking.nix
		./CUPS.nix
		./sound.nix
		./touchpad.nix
		./x11/x11keymap.nix
	];
}
