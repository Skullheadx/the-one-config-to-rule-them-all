{ pkgs, lib, inputs, ... }:

{
	imports =
	[
		./hardware-configuration.nix
	];
	
	networking.hostName = "desktop";

	# Enable the KDE Plasma Desktop Environment.
	services.desktopManager.plasma6.enable = true;
	programs.niri.enable = true;
	programs.hyprland.enable = true;

	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.skull = {
	isNormalUser = true;
		description = "Andrew";
		extraGroups = [ "networkmanager" "wheel" ];
		password = "123";
	};

	# Allow unfree packages
	nixpkgs.config.allowUnfree = true;

	#Enable Flakes
	nix.settings.experimental-features=[ "nix-command" "flakes" ];

	# List packages installed in system profile. To search, run:
	# $ nix search wget
	environment.systemPackages = with pkgs; [
		neovim 
		wget
		neofetch
		firefox
		ghostty
		alacritty
		discord
		git
		github-desktop
		obsidian
		brave
	];

	programs.steam = {
	  enable = true;
	  remotePlay.openFirewall = true;
	  dedicatedServer.openFirewall = true;
	};

	# This value determines the NixOS release from which the default
	# settings for stateful data, like file locations and database versions
	# on your system were taken. It‘s perfectly fine and recommended to leave
	# this value at the release version of the first install of this system.
	# Before changing this value read the documentation for this option
	# (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
	system.stateVersion = "25.05"; # Did you read the comment?
}
