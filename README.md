Description
Use the F10 and shift-F10 key to dynamically cycle through the available themes. This is useful to see how each color theme impacts the colors in the buffer.

Installation

Copy theme-cycle.el to ~/.emacs.d.

Add the following to your Emacs configuration

```elisp
(add-to-list 'load-path (expand-file-name "~/.emacs.d)

(require 'theme-cycle)

;; Load as many themes as you are interested in exploring.
(use-package doom-themes)
(use-package ef-themes)
(use-package modus-themes)
(use-package solarized-themes)
```

To Use

Use F10 to cycle forward through the themes. Use shift-F10 to cycle backward through the themes.

By default, the variable theme-list picks up all of the available themes in your setup. If you set it, the library will cycle through the set list.

```elisp
(setq theme-list (list
                      'doom-dracula
                      'doom-material-dark
                      'doom-palenight
                      'ef-maris-dark
                      'ef-night))
```
