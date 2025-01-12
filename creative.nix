{pkgs}:
pkgs.mkMinecraftServer {
    name = "creative";
    src = ./servers/creative;
    hash = "sha256-RwTL1tQcZ/YXidxjPjgni1Xiw5nBSCnBtQb5tWrrl7Y=";
}
