import "theme" as theme;

fn palette() {
    let output = "";
    for key in theme::selected_theme.keys() {
        output += `@define-color ${key} ${theme::selected_theme[key]};`;
        output += "\n";
    }

    output
}

export const bars = #{
    primary: #{
        config: "~/.config/waybar/bars/primary.jsonc",
        displays: ["eDP-1"],
        position: "bottom"
    }
};

fn launchers(bars) {
    let out = "";
    for bar in bars.values() {
        if bar.displays.len() > 0 {
            out += `waybar -c ${bar.config}`;
            out += "\n";
        }
    }

    out
}

fn monitors(bars, bar_name) {
    let result = "";
    for monitor in bars[bar_name].displays {
        result += `"${monitor}",`;
    }

    result.pop();
    `    "monitors": [${result}],`
}