# spacemacs private
---

My spacemacs layers and configurations (`init.el`).

## Usage
---

Clone this repository to `~/.spacemacs.d`.

Layers in the directory `layers` can be added to the
`dotspacemacs-configuration-layers` block in your `init.el` or `.spacemacs`
files.

## Contents (List of Layers)
---

### ct-editor

Settings of some basic extensions to Emacs, with the following packages:
- browse-kill-ring
- whitespace

### ct-erc

Settings to erc, like ignoring stupid messages, and changing erc prompt.

### ct-ibuffer

Add auto-update to mode-hook, change key `g` to update the ibuffer list.
Automatically delete empty filters.

### ct-osx

The `proced-mode` doesn't work on OS X.  Change to use `vkill` instead.
