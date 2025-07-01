{ pkgs, lib, config, ... }: {
	options = {
		autologin.enable =	
			lib.mkOption {
				description = "enables auto-login";
				type = lib.types.bool;
				default = false;
			};
	};

	config = lib.mkIf config.autologin.enable {
		services.displayManager.autoLogin.enable = true; 
		services.displayManager.autoLogin.user = "skull";
	};
}
