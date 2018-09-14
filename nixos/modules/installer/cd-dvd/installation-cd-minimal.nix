# This module defines a small NixOS installation CD.  It does not
# contain any graphical stuff.

{ ... }:

{
  imports =
    [ ./installation-cd-base.nix
     # Provide an initial copy of the NixOS channel so that the user
     # doesn't need to run "nix-channel --update" first.
     <nixpkgs/nixos/modules/installer/cd-dvd/channel.nix>
   ];

  boot.supportedFilesystems = [ "zfs" "bcachefs" ];
}
