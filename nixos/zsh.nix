{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    ohMyZsh = {
      enable = true;
      plugins = ["git" "z"];
    };

    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    
    # Theme
    promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
    
    shellAliases = {
      ll = "ls -l";
      bt = "bluetoothctl";
      gs = "git status";
      gal = "git add --all";
<<<<<<< HEAD
=======
      ld0 = "swaymsg output eDP-1 disable";
      ld1 = "swaymsg output eDP-1 enable";
>>>>>>> bfb17b1 (Stash)
    };

    histSize = 10000;
    histFile = "$HOME/.zsh_history";
    setOptions = [
      "HIST_IGNORE_ALL_DUPS"
    ];
  };
}
