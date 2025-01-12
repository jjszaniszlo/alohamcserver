{pkgs}:
pkgs.mkMinecraftServer {
    name = "proxy";
    src = ./servers/proxy;
    hash = "sha256-QUAZ5+S3obSUR+TmFwsYkfbUoys8+C7dASpGVYLwhDs=";
}
