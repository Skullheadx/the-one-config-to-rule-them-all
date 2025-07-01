{ pkgs, lib, ... }: {
	# currently dont know what this is, so don't import it anywhere
	# Some programs need SUID wrappers, can be configured further or are started in user sessions.
	programs.mtr.enable = true;
	programs.gnupg.agent = {
		enable = true;
		enableSSHSupport = true;
	};
}
