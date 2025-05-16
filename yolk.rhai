import "configs/hypr" as hypr;
import "theme" as theming;

export const theme = theming::selected_theme;
export const theme_name = theming::theme_name;

export const data = #{
    hypr: hypr::config,
    hyfetch: #{
        preset: "lesbian"
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
    }
};

fn replace_json_string(value) {
    regex_replace(`:\s?".*"`, get_yolk_text(), `: "${value}"`)
}
