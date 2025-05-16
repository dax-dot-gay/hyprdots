import "theme" as t;
import "util" as util;

const theme = t::selected_theme;

fn hyprrgb(hex) {
    `rgb(${hex.sub_string(1)})`
}

fn hyprrgba(hex) {
    `rgba(${hex.sub_string(1)})`
}

export const config = #{
    gaps: #{
        _in: 4,
        _out: 8
    },
    borders: #{
        active: hyprrgb(theme.accent),
        inactive: hyprrgba(util::alpha(theme.accent, "66"))
    },
    radius: 4
};