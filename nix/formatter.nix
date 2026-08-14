{ pkgs, ... }:

{
  projectRootFile = "flake.nix";

  programs.prettier = {
    enable = true;
    package = pkgs.prettier;
  };

  settings.formatter.prettier = {
    includes = [ "*.md" ];
    options = [
      "--parser"
      "markdown"
      "--prose-wrap"
      "preserve"
    ];
  };
}