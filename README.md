# Espanso Shortcode Manager 
A small interactive TUI to manage Espanso shortcodes on **Linux**.

Overview
--------

`esc` is a lightweight interactive script that helps you add, list, and remove Espanso shortcodes from your Espanso `base.yml` matches file. It's designed to be simple, POSIX-compatible, and safe to use from a terminal.

Requirements
------------

- A Linux distro. (It won't work on windows or mac os)
- Espanso installed and configured: https://espanso.org/

Install
-------

1. Run the command below (as root), or install the `esc` package manually.

```bash
sudo bash -c "$(curl -fsSL https://raw.githubusercontent.com/pptoobox/esc/main/install.sh)"
```

2. Ensure Espanso's config directory exists and Espanso is running. The script writes to:

```
$HOME/.config/espanso/match/base.yml
```

Usage
-----

Run the script from a terminal:

```bash
esc
```

When launched you'll see a simple menu to:
- Add new shortcode (trigger + replacement)
- View all shortcodes
- Delete a shortcode

Behavior notes
--------------

- When adding a shortcode the script will initialize `matches: []` if no matches are present.
- Deleting a shortcode removes the matching entry and will restore `matches: []` when no matches remain.
- The script edits your Espanso YAML in-place; consider backing up `base.yml` before bulk changes.

Examples
--------

Add a new shortcode (interactive):

```bash
esc
# choose: 1) Add new shortcode
# trigger: email
# replacement: you@example.com
```

License
-------

This project is licensed under the [MIT License](LICENSE).

Contributing
------------

Issues and pull requests are welcome. Please include a clear description of the change and a short test or reproduction steps for behavior changes.

Author
------

PP Toolbox (2025)

