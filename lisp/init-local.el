;;; ######## My Own Custom Settings >>>

;; display time
(display-time-mode t)
(setq display-time-24hr-format t)

;; modify the cursor to a vertical line
(setq-default cursor-type 'bar)

;; display line number with "nlinum"
(global-nlinum-mode 1)
(setq nlinum-format "%d: ")

;;(setq linum-format "%d \u2502 ")
;; highlight current line
(global-hl-line-mode t)

;; set default woking directory(C-x C-f/C-x C-v)
;;(setq default-directory "~/work/")

;;; ######## My Own Custom Settings <<<

(provide 'init-local)
