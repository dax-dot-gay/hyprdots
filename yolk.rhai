import "configs/hypr" as hypr;
import "configs/gtk" as gtk;
import "theme" as theming;

export const theme = theming::selected_theme;
export const theme_name = theming::theme_name;

export const data = #{
    hypr: hypr::config,
    hyfetch: #{
        preset: "lesbian"
    },
    ulauncher: #{
        radius: "8px"
    }
};

export const eggs = #{
    hypr: #{
        targets: "~/.config/hypr",
        templates: ["hyprland.conf"],
    },
    hyfetch: #{
        targets: "~/.config/hyfetch",
        templates: ["hyfetch.json"]
    },
    zsh: #{
        targets: #{
            ".zshrc": "~/.zshrc",
        },
        main_file: ".zshrc"
    },
    starship_catppuccin: #{
        targets: #{
            "starship.toml": "~/.config/starship.toml"
        },
        enabled: theme_name.starts_with("catppuccin_")
    },
    starship_dracula: #{
        targets: #{
            "starship.toml": "~/.config/starship.toml"
        },
        enabled: theme_name == "dracula"
    },
    ghostty: #{
        targets: "~/.config/ghostty",
        templates: ["./**"]
    },
    gtk: #{
        targets: gtk::generate_theme_target(theme_name),
        unsafe_shell_hooks: #{
            post_deploy: "~/.config/scripts/deploy.sh",
            post_undeploy: "~/.config/scripts/undeploy.sh"
        },
        templates: ["deploy.sh", "undeploy.sh"]
    },
    ulauncher: #{
        targets: "~/.config/ulauncher",
        templates: ["./*.json", "./**/*.css"]
    }
};

fn replace_json_string(value) {
    regex_replace(`:\s?".*"`, get_yolk_text(), `: "${value}"`)
}
