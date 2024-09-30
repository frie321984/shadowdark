 let
   nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.05";
   pkgs = import nixpkgs { config = {}; overlays = []; };
 in

 pkgs.mkShellNoCC {
   packages = with pkgs; [
     git
     vim
     kittysay
     lolcat
     gnumake
     python3
   ];

   HOWTO = ''
    make devserver - Startet lokal devserver
    make  - "baut" diese unglaublich komplizierte Anwendung
   '';

   shellHook = ''
     echo -e "Hallo "$USER"!\n\n"$HOWTO | kittysay | lolcat
   '';
 }
