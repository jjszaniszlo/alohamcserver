{pkgs}:
pkgs.mkMinecraftServer {
    name = "survival";
    src = ./servers/survival;
    hash = "";
}
