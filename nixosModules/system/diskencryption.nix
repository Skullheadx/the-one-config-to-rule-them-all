{ pkgs, lib, config, ... }: {
	options = {
		diskencryption.enable =	
			lib.mkOption {
				description = "enables diskencryption";
				type = lib.types.bool;
				default = false;
			};
	};

	config = lib.mkIf config.diskencryption.enable {
		boot.initrd.luks.devices."luks-d764e3a8-8821-4e5a-a1aa-7247d7f8e719".device = "/dev/disk/by-uuid/d764e3a8-8821-4e5a-a1aa-7247d7f8e719";
	};
}
