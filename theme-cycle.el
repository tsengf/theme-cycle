;; Idea borrowed from karls
;; https://gist.github.com/karls/9d0d5e25cd72d633893f

;; Theme changer
(defvar curr-theme-index 0)
(defvar theme-list
  (custom-available-themes) ;; Get a list of all supported themes
  ;; Or replace with a list of themes to cycle through
  ;;'(ef-autumn ef-bio ef-cherie ef-dark ef-deuteranopia-dark ef-duo-dark ef-elea-dark ef-maris-dark ef-night ef-symbiosis ef-trio-dark ef-tritanopia-dark ef-winter)
  "List of themes to cycle through.")

(defun get-theme-name (idx)
  (nth idx theme-list))

(defun cycle-themes (&optional up-down)
  (interactive)
  (let* (theme next-theme next-theme-index
               (num-themes (length theme-list)))
    (setq theme (get-theme-name curr-theme-index))
    (if up-down
        (setq next-theme-index (mod (+ 1 curr-theme-index) num-themes))
      (setq next-theme-index (mod (+ (- num-themes 1) curr-theme-index) num-themes)))
    (setq next-theme (get-theme-name next-theme-index))
    (setq curr-theme-index next-theme-index)
    (disable-theme theme)
    (load-theme next-theme t)
    (message "Load theme %d/%d %s" next-theme-index num-themes (get-theme-name curr-theme-index))))

;; Use F10 and shift-F10 to cycle through themes
(when window-system
  (global-set-key (kbd "<f10>") (lambda () (interactive) (cycle-themes 1))))
  (global-set-key (kbd "S-<f10>") 'cycle-themes)

(provide 'theme-cycle)
