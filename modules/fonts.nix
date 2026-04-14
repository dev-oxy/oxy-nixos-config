{ pkgs, ... }:

{
  fonts.packages = with pkgs; [
    maple-mono.NF-CN
    noto-fonts-color-emoji
  ];
}
