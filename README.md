Description
Use the F10 and shift-F10 key to dynamically review the available themes. This is useful if you can open a buffer of interest and see how each color theme impacts the colors in the buffer.

Installation

Copy theme-cycle.el to ~/.emacs.d.

Add the following to your Emacs configuration

(add-to-list 'load-path (expand-file-name "~/.emacs.d)

(require 'theme-cycle)

;; Load as many themes as you are interested in exploring.
(use-package doom-themes)
(use-package ef-themes)
(use-package modus-themes)
(use-package solarized-themes)

To Use

Use F10 to cycle forward through the themes. Use shift-F10 to cycle backward through the themes.
