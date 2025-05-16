// Using catppuccin & dracula as options
export const themes = #{
    catppuccin_mocha: #{
        background: "#1e1e2e",          // Base
        background_accent: "#11111b",   // Crust
        background_paper: "#45475a",    // Surface1
        text: "#cdd6f4",                // Text
        text_dim: "#a6adc8",            // Subtext0
        accent: "#cba6f7",              // Mauve
        error: "#f38ba8",               // Red
        warning: "#fab387",             // Peach
        success: "#a6e3a1"              // Green
    },
    catppuccin_macchiato: #{
        background: "#24273a",          // Base
        background_accent: "#181926",   // Crust
        background_paper: "#494d64",    // Surface1
        text: "#cad3f5",                // Text
        text_dim: "#a5adcb",            // Subtext0
        accent: "#c6a0f6",              // Mauve
        error: "#ed8796",               // Red
        warning: "#f5a97f",             // Peach
        success: "#a6da95"              // Green
    },
    catppuccin_frappe: #{
        background: "#303446",          // Base
        background_accent: "#232634",   // Crust
        background_paper: "#51576d",    // Surface1
        text: "#c6d0f5",                // Text
        text_dim: "#a5adce",            // Subtext0
        accent: "#ca9ee6",              // Mauve
        error: "#e78284",               // Red
        warning: "#ef9f76",             // Peach
        success: "#a6d189"              // Green
    },
    catppuccin_latte: #{
        background: "#eff1f5",          // Base
        background_accent: "#dce0e8",   // Crust
        background_paper: "#bcc0cc",    // Surface1
        text: "#4c4f69",                // Text
        text_dim: "#6c6f85",            // Subtext0
        accent: "#8839ef",              // Mauve
        error: "#d20f39",               // Red
        warning: "#fe640b",             // Peach
        success: "#40a02b"              // Green
    },
    dracula: #{
        background: "#282a36",          // Background
        background_accent: "#44475a",   // Current Line
        background_paper: "#44475a",    // Selection
        text: "#f8f8f2",                // Foreground
        text_dim: "#6272a4",            // Comment
        accent: "#bd93f9",              // Purple
        error: "#ff5555",               // Red
        warning: "#ffb86c",             // Orange
        success: "#50fa7b"              // Green
    },
};

export const theme_name = "catppuccin_mocha";

export const selected_theme = themes[theme_name];