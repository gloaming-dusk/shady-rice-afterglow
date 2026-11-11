{
  description = "Afterglow, a rice for the Shady compositor";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

  outputs = { self, nixpkgs, ... }:
    let
      systems = [ "x86_64-linux" "aarch64-linux" ];
      forAllSystems = f: nixpkgs.lib.genAttrs systems (system: f nixpkgs.legacyPackages.${system});
    in {
      # share/shady/rices/afterglow: on XDG_DATA_DIRS (a NixOS system package, or
      # programs.shady.rices), SHADY_RICE=afterglow picks it.
      packages = forAllSystems (pkgs: rec {
        afterglow = pkgs.runCommand "shady-rice-afterglow" {
          meta.description = "Afterglow: the desktop above an open sea at sunset";
        } ''
          dest=$out/share/shady/rices/afterglow
          mkdir -p $dest
          cd ${self}
          cp -r config.lua init.lua shell.lua theme.sh greeter README.md $dest/
        '';
        default = afterglow;
      });
    };
}
