# spacemacs layers

My spacemacs layers and configurations (`init.el`).

## Usage

Clone this repository to `~/.spacemacs.d`.

Layers in the directory `layers` can be added to the
`dotspacemacs-configuration-layers` block in your `init.el` or `.spacemacs`
files.

## Screenshot
![spacemacs_ct](img/spacemacs-scrot.png)

## Contents (List of Layers)

### ct-editor

Settings of some basic extensions to Emacs, with the following packages:
- browse-kill-ring
- whitespace
- auto-insert (with templates)

### ct-cafemol

Major mode `cafemol-mode`, for editing input files for _CafeMol_ (a
coarse-grained molecular dynamics simulation package).

### ct-cpp

For `c++-mode`, including settings for `irony-mode`.

### ct-elisp

Settings such as `nameless` and `lispy` for `elisp-mode`.

### ct-dired

Settings for `dired-mode`, including useful features provided by the `dired+` package.

### ct-erc

Settings to erc, like ignoring stupid messages, and changing erc prompt.

### ct-ibuffer

Add auto-update to mode-hook, change key `g` to update the ibuffer list.
Automatically delete empty filters.

### ct-org

Settings of org-mode.  Most of these are for my personal usage, thus might not
be of general interest.

### ct-osx

The `proced-mode` doesn't work on OS X.  Change to use `vkill` instead.
