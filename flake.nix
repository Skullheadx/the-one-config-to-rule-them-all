{
	description = "the very best config for nixos";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs?ref=25.05";

	};
	outputs = { self, nixpkgs }@inputs : {
		nixosConfigurations = {
			desktop = nixpkgs.lib.nixosSystem {
				system = "x86_64-linux";
				specialArgs = { inherit inputs; };
				modules = [
					./hosts/desktop/configuration.nix
					./nixosModules/default.nix
				];

			};
		};
	};
}
