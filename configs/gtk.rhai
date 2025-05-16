fn generate_theme_target(theme_name) {
    let targets = #{};

    targets[`themes/${theme_name}`] = `~/.themes/${theme_name}`;
    targets[`themes/${theme_name}/gtk-4.0/gtk.css`] = `~/.config/gtk-4.0/gtk.css`;
    targets[`themes/${theme_name}/gtk-4.0/gtk-dark.css`] = `~/.config/gtk-4.0/gtk-dark.css`;

    if theme_name == "dracula" {
        targets[`themes/${theme_name}/assets`] = `~/.config/assets`;
    } else {
        targets[`themes/${theme_name}/gtk-4.0/assets`] = `~/.config/gtk-4.0/assets`;
    }

    targets[`icons/${theme_name}/`] = `~/.icons/${theme_name}`;
    targets["deploy.sh"] = "~/.config/scripts/deploy.sh";
    targets["undeploy.sh"] = "~/.config/scripts/undeploy.sh";

    targets
}