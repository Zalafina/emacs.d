;;; ######## My Own Custom Settings >>>

;; display time
(display-time-mode t)
(setq display-time-24hr-format t)

;; modify the cursor to a vertical line
(setq-default cursor-type 'bar)

;; display line number
(require 'linum)
(global-linum-mode t)
;; put one space separation
(setq linum-format "%d ")
;;(setq linum-format "%d \u2502 ")
;; highlight current line
(global-hl-line-mode t)

;; set default woking directory(C-x C-f/C-x C-v)
;;(setq default-directory "~/work/bev_tcu/code/base/18BEV_TCU")

;;; ######## My Own Custom Settings <<<

(provide 'init-local)
