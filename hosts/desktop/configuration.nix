{ pkgs, lib, inputs, ... }:

{
	imports =
	[
		./hardware-configuration.nix
	];
	
	diskencryption.enable = false;
	networking.hostName = "desktop";

	services.displayManager.sddm.enable = true;
	services.displayManager.sddm.wayland.enable = true;
	# Enable the KDE Plasma Desktop Environment.
	services.desktopManager.plasma6.enable = true;
	
	#programs.xwayland.enable = true;

	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.skull = {
	isNormalUser = true;
		description = "Andrew";
		extraGroups = [ "networkmanager" "wheel" ];
		password = "123";
	};

	# Enable automatic login for the user.
	#services.displayManager.autoLogin.enable = true; services.displayManager.autoLogin.user = "skull";

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
		steam
		brave
	];

	#programs.niri.enable = true;
	#programs.hyprland.enable = true;


	# Some programs need SUID wrappers, can be configured further or are
	# started in user sessions.
	# programs.mtr.enable = true;
	# programs.gnupg.agent = {
	#   enable = true;
	#   enableSSHSupport = true;
	# };

	# List services that you want to enable:

	# Enable the OpenSSH daemon.
	# services.openssh.enable = true;

	# Open ports in the firewall.
	# networking.firewall.allowedTCPPorts = [ ... ];
	# networking.firewall.allowedUDPPorts = [ ... ];
	# Or disable the firewall altogether.
	# networking.firewall.enable = false;

	# This value determines the NixOS release from which the default
	# settings for stateful data, like file locations and database versions
	# on your system were taken. It‘s perfectly fine and recommended to leave
	# this value at the release version of the first install of this system.
	# Before changing this value read the documentation for this option
	# (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
	system.stateVersion = "25.05"; # Did you read the comment?
}
