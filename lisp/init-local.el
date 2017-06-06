;;; ######## My Own Custom Settings >>>

;;; Edit Utils >>>
;; indents 4 chars
(setq-default c-basic-offset 4)

;; Indent style setting
(setq c-default-style "Linux")

;; 4 char width for TAB char
(setq default-tab-width   4)

;; 4 char width for TAB char
(setq tab-width           4)
;;; Edit Utils <<<

;; display time
(display-time-mode t)
(setq display-time-24hr-format t)

;; modify the cursor to a vertical line
(setq-default cursor-type 'bar)

;; display line number with "linum-mode"
;;(global-linum-mode t)
;;(setq linum-format "%d: ")

;; hack for "nlinum-mode" does not normally worked on daemon-mode
(defun initialize-nlinum (&optional frame)
  (require 'nlinum)
  (add-hook 'prog-mode-hook 'nlinum-mode))
(when (daemonp)
  (add-hook 'window-setup-hook 'initialize-nlinum)
  (defadvice make-frame (around toggle-nlinum-mode compile activate)
  (nlinum-mode -1) ad-do-it (nlinum-mode 1)))

;; display line number with "nlinum-mode"
(global-nlinum-mode 1)
(setq nlinum-format "%d:")

;; highlight current line
(if window-system
    (global-hl-line-mode t))


;; set default woking directory(C-x C-f/C-x C-v)
;;(setq default-directory "~/work/")

;;; ######## My Own Custom Settings <<<

(provide 'init-local)
