{pkgs}:
pkgs.mkMinecraftServer {
    name = "creative";
    src = ./servers/creative;
    hash = "";
}
