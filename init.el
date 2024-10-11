
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1))

(use-package yasnippet-snippets
  :ensure t)

(use-package lsp-mode
  :ensure t
  :hook ((c++-mode python-mode java-mode js-mode) . lsp-defered )
  :commands lsp)

(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode
  :config
  (setq lsp-ui-doc-enable nil)
  (setq lsp-ui-doc-header t)
  (setq lsp-ui-doc-include-signature t)
  (setq lsp-ui-doc-border (face-foreground 'default))
  (setq lsp-ui-sideline-show-code-actions t)
  (setq lsp-ui-sideline-delay 0.05))

(use-package timu-macos-theme
  :ensure t
  ;;:config
  ;;(load-theme 'timu-macos t)
  )

(use-package magit
  :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode))

(use-package doom-themes
  :ensure t
  ;;:config (load-theme 'doom-acario-dark))
  :config (load-theme 'doom-gruvbox))

(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode))

(use-package all-the-icons
  :ensure t)

(use-package helm
  :ensure t
  :config (helm-mode 1))

(use-package projectile
  :ensure t
  :config
  (define-key projectile-mode-map (kbd "C-x p") 'projectile-command-map)
  (projectile-mode +1))


(use-package helm-projectile
  :ensure t
  :config (helm-projectile-on))


(use-package treemacs-projectile
  :after projectile treemacs
  :ensure t)

(use-package treemacs
  :ensure t
  :bind
  (:map global-map
        ([f8] . treemacs)
        ("C-x n " . treemacs-select-window))
  :config
  (setq treemacs-is-never-other-window t))


(use-package highlight-indent-guides
  :ensure t)

;; --------------------- UI config
(setq inhibit-startup-message t)

(tool-bar-mode -1)
(menu-bar-mode -1)

;; Exibir número da linha
(add-hook 'prog-mode-hook 'display-line-numbers-mode 'highlight-indent-guides-mode)

;; Destacar linha selecionada
(global-hl-line-mode t)

;; Remover scrollbar vertical
(scroll-bar-mode -1)

;; Remover scrollbar horizontal
(horizontal-scroll-bar-mode -1)

;;Exibir match parentese
(show-paren-mode 1)

;;(setq ido-everywhere t)
;;(setq ido-enable-flex-matching t)

;;(ido-mode t)

;;------------------- Org agenda
(setq org-agenda-files '("~/org"))
(setq org-todo-keywords
      '((sequence "TODO(t)" "PROG(p)" "DONE(d)")))

;;------------------- keyboard shortcuts
(global-set-key (kbd "C-x s") 'magit-status)

(setq-default tab-width 4) ; Set the tab width to 4 spaces
(setq c-basic-offset 4)   ;
(setq-default indent-tabs-mode nil) ; Use spaces instead of tabs

(setq-default fill-column 80)


(setq initial-frame-alist
      '((width . 205)    ; Largura da janela em caracteres
        (height . 48)))  ; Altura da janela em linhas
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("48042425e84cd92184837e01d0b4fe9f912d875c43021c3bcb7eeb51f1be5710" "dccf4a8f1aaf5f24d2ab63af1aa75fd9d535c83377f8e26380162e888be0c6a9" default))
 '(package-selected-packages
   '(highlight-indent-guides helm-ag which-key timu-macos-theme magit lsp-ui lsp-ivy helm-xref helm-projectile flycheck doom-themes doom-modeline dashboard company all-the-icons)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
