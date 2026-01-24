# Description

- This is just my own dev environ

# Install
- to install the minimal setup. u can run these script in order.
```bash
$> ./start_Installation.sh # setup and installation of all the tools u might need [e.g: fish, kitty, i3, neovim, feh, pipewire.]
$> ./migrate_configs.fish  # copies the needed configration files into ~/.config/ but keeps a copy of yours at ~/.config_backedup/
```

# Roolback
- to roll back to whatever u had in .config u can run 
```bash
$> ./rollback.fish
```

# continues dev.
- to keep on editing files and apply whatever u have u can just apply whatever u want in the config files. then run
```bash
$> ./migrate_configs.fish # will copy over configs in their respective places
```
