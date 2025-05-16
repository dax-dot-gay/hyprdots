import "configs/hypr" as hypr;
import "theme" as theming;

export const theme = theming::selected_theme;
export const theme_name = theming::theme_name;

export const data = #{
    hypr: hypr::config
};

export const eggs = #{
    hypr: #{
        targets: "~/.config/hypr",
        templates: ["hyprland.conf"],
        enabled: true
    }
};
