import "theme" as t;
import "util" as util;
import "system" as system;

const theme = t::selected_theme;

fn hyprrgb(hex) {
    `rgb(${hex.sub_string(1)})`
}

fn hyprrgba(hex) {
    `rgba(${hex.sub_string(1)})`
}

fn hypr_monitors() {
    let lines = "";
    for monitor in system::monitors {
        lines += `monitor = ${monitor.name}, ${monitor.resolution[0]}x${monitor.resolution[1]}, ${monitor.position[0]}x${monitor.position[1]}, ${monitor.scale}, transform, ${monitor.rotation}`;
        lines += "\n";
    }

    lines
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