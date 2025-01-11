{pkgs}:
pkgs.mkMinecraftServer {
    name = "proxy";
    src = ./servers/proxy;
    hash = "";
}
