;;; .doom.d/config.el -*- lexical-binding: t; -*-

(setq doom-theme 'doom-dracula)
(setq display-line-numbers-type 'relative)
;(setq auto-save-default t)
(setq confirm-kill-emacs nil)
(setq doom-font (font-spec :family "Iosevka Nerd Font" :size 15 :weight 'light))
(doom/set-frame-opacity 85)

(defvar +fl/splashcii-query ""
  "The query to search on asciiur.com")

(defun +fl/splashcii-banner ()
  (mapc (lambda (line)
          (insert (propertize (+doom-dashboard--center +doom-dashboard--width line)
                              'face 'doom-dashboard-banner) " ")
          (insert "\n"))
        (split-string (with-output-to-string
                        (call-process "~/.doom.d/scripts/ascii_splash.sh" nil standard-output nil +fl/splashcii-query))
                      "\n" t)))

(setq +doom-dashboard-ascii-banner-fn #'+fl/splashcii-banner)

(setq +fl/splashcii-query "")
