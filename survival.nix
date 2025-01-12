{pkgs}:
pkgs.mkMinecraftServer {
    name = "survival";
    src = ./servers/survival;
    hash = "sha256-D5m8NnOIKIyRUIw6oqqjP8MW5/WmzFOqp6RgT8iZ+cU=";
}
