;
;
;(require 'un-define)

;; for emacsclient
;;(server-start)




(setq inhibit-startup-message t)

(load "mime-setup")
;(load "/usr/share/emacs/site-lisp/site-gentoo")
;(load "migemo")


(add-to-list 'load-path (expand-file-name "~/.elisp-local"))

(add-to-list 'load-path "/usr/share/emacs/site-lisp/wl")
(autoload 'wl "wl" "Wanderlust" t)
(autoload 'wl-other-frame "wl" "Wanderlust on new frame." t)
(autoload 'wl-draft "wl-draft" "Write draft with Wanderlust." t)
(setq wl-icon-directory "/usr/share/emacs/23.3/etc/wl/icons")



;;garbage collection
;(setq gc-cons-threshold 35000)


;; x-face
;(add-to-list 'load-path (expand-file-name "~/.elisp-local/x-face/"))
;(autoload 'x-face-decode-message-header "x-face-e21")
;(autoload 'x-face-insert "x-face-e21" nil t)
;(autoload 'x-face-save "x-face-e21" nil t)
;(autoload 'x-face-show "x-face-e21" nil t)
;(autoload 'x-face-ascii-view "x-face-e21" nil t)
;(autoload 'x-face-turn-off "x-face-e21")
;; Show X-Face images when `x-face-insert' is done.
;(setq x-face-auto-image t)

;; make-gray-x-face
;;(autoload 'convert-image-to-gray-x-face "make-gray-x-face" nil t)

;;ツールバー非表示
(tool-bar-mode 0)
(menu-bar-mode 0)


(set-language-environment "Japanese")
;(set-terminal-coding-system 'euc-jp)
;(set-keyboard-coding-system 'euc-jp)
;(set-clipboard-coding-system 'euc-jp)
;(setq default-file-name-coding-system 'euc-jp)
;(setq file-name-coding-system 'euc-jp)
;(set-default-coding-systems 'euc-jp)
;(set-buffer-file-coding-system 'euc-jp)

;(modify-coding-system-alist 'process "" 'euc-japan-unix)
;(set-w32-system-coding-system 'euc-jp)

(normal-erase-is-backspace-mode 0)
;(keyboard-translate ?\C-h ?\C-?)
;(keyboard-translate ?\C-? ?\C-d)

;(load-library "anthy")
;(setq default-input-method "japanese-anthy")
;(global-set-key [zenkaku-hankaku] 'anthy-mode)

;;色の設定
(if window-system
  (progn
  ;; 文字の色を設定します。
  (set-foreground-color "white")
  ;; 背景色を設定します。
  (set-background-color "#002200")
  ;(set-background-color "gray80")
  ;; モードラインの文字の色を設定します。
  (set-face-foreground 'mode-line "white")
  ;; モードラインの背景色を設定します。
  ;;(set-face-background 'modeline "MediumPurple2")
  (set-face-background 'mode-line "forest green")
  (set-face-background 'mode-line-inactive "dark olive green")
  ;; カーソルの色を設定します。
  ;;(set-cursor-color "MediumPurple2")
  (set-cursor-color "red")
  ;; マウスポインタの色を設定します。
  (set-mouse-color  "MediumPurple2")

;  (set-face-font 'default "-*-fixed-medium-r-normal--14-*")
;  (set-face-font 'default "Bitstream Vera Sans Mono-12")
(cond
  (window-system
    ;; デフォルトフォントの設定
    ;; フォント名-フォントサイズで指定する。
;    (set-default-font "VL Gothic-11")
;    (set-default-font "cinecaption-11")
    (set-default-font "M+1VM+IPAG circle-11")
    ;; 日本語(japanese-jisx0208)フォントの設定
    (set-fontset-font
      (frame-parameter nil 'font)
      'japanese-jisx0208
      '("M+1VM+IPAG circle" . "unicode-bmp")
;      '("cinecaption" . "unicode-bmp")
;      '("MeiryoKe_Gothic:weight=bold" . "unicode-bmp")
      ;; 手元の環境では、↑のようにボールドの設定をしておか
      ;; ないと、いわゆる半角英数文字のボールドフォントが、
      ;; 設定したもの(ここでは VL ゴシック)にならない。
    )
  )
)

;  (global-set-key [delete] 'delete-char)
;  (load "term/keyswap")

)(progn
;(setq yc-rK-trans-key [?\C-\;])
;(load "yc")
;(global-yc-mode 1)
;(global-set-key "\C-o" 'toggle-input-method)
;Homeキーでファイルの先頭に
;(global-set-key [home] 'beginning-of-buffer)
;;Endキーでファイルの末尾へ
;(global-set-key [end]  'end-of-buffer)

;(define-key global-map [home] 'beginning-of-buffer)
;(define-key global-map [end] 'end-of-buffer)

))


;;リージョンに色を付ける
(setq transient-mark-mode t)
(set-face-foreground 'region "white")
(set-face-background 'region "dim gray")

;; shiftと移動でリージョン選択
;(pc-selection-mode)

;; 対応するカッコを色表示する
(show-paren-mode t)
(setq blink-matching-paren t) ; default is t
(setq blink-matching-delay 1) ; default is 1
(setq blink-matching-paren-distance 12000 ); default is 12000


;; スクロールバーの位置
(set-scroll-bar-mode 'right) ;; 右側

;;デフォルトのフレーム設定
(setq default-frame-alist
      (append (list
	       '(width . 80)
	       '(height . 40)
	       '(scroll-bar-width . 12);; スクロールバー幅
	       )
	      default-frame-alist)
      )


;; タブ文字、全角空白、文末の空白の色付け
;; font-lockに対応したモードでしか動作しません
(defface my-face-b-1 '((t (:background "dim gray"))) nil)
(defface my-face-b-2 '((t (:foreground "red" :underline t))) nil)
;(defface my-face-u-1 '((t (:foreground "SteelBlue" :underline t))) nil)
(defface my-face-u-1 '((t (:background "SteelBlue"))) nil)
(defvar my-face-b-1 'my-face-b-1)
(defvar my-face-b-2 'my-face-b-2)
(defvar my-face-u-1 'my-face-u-1)

(defadvice font-lock-mode (before my-font-lock-mode ())
  (font-lock-add-keywords
   major-mode
   '(
     ("\t" 0 my-face-b-2 append)
     ("　" 0 my-face-b-1 append)
     ("[ \t]+$" 0 my-face-u-1 append)
     )))
(ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
(ad-activate 'font-lock-mode)

;(normal-top-level-add-subdirs-to-load-path)
(setq pgp-version 'gpg)

(setq cursor-in-non-selected-windows nil)

(global-font-lock-mode t)
(setq font-lock-support-mode 'jit-lock-mode)

(set-language-environment "Japanese")
(setq default-buffer-file-coding-system 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))
(setq default-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8-unix)

(setq process-coding-system-alist
      (cons
       '(".*" utf-8 . utf-8)
       process-coding-system-alist))

;;(setq default-tab-width 4)

;;;
;;; kingtr
;(modify-coding-system-alist 'process "king" 'euc-jp)
; (autoload 'king-lookup-word "king" nil t)
; (autoload 'king-translate-region "king" nil t)
; (autoload 'king-translate-buffer "king" nil t)
; (autoload 'king-translate-file "king" nil t)
; (autoload 'king-add-userdict-region "king" nil t)
; (autoload 'king-add-userdict-buffer "king" nil t)
; (autoload 'king-add-userdict-file "king" nil t)
;(require 'king)

;;  Or if you want KingTranslation to be loaded from the beginning,
;;  you can put the following in your .emacs:
;;
;;  (require 'king)

;;  Suggested bindings are:
;;
;  (global-set-key "\C-c\C-w" 'king-lookup-word)
;  (global-set-key "\C-c\C-r" 'king-translate-region)
;  (global-set-key "\C-c\C-b" 'king-translate-buffer)
;  (global-set-key "\C-c\C-f" 'king-translate-file)
;  (global-set-key "\C-c\C-e" 'king-add-userdict-region)
;  (global-set-key "\C-c\C-a" 'king-add-userdict-buffer)
;  (global-set-key "\C-c\C-u" 'king-add-userdict-file)
;;
;;  Set 'king-default-bindings' to t before loading king.el if you
;;  want to enable these default key bindings.



;;;
;;; dos<->unix format change
;;;
(defun dos-unix ()
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))
(defun unix-dos ()
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\n" nil t) (replace-match "\r\n")))

;; browse-url-netscape
;;(setq browse-url-netscape-arguments '(""))
;; broser firefox
;;(setq browse-url-browser-function 'browse-url-netscape)
;;(autoload 'browse-url-at-mouse "browse-url"
;;	  "Ask a WWW browser to load a URL clicked with the mouse." t)
;;(setq browse-url-mozilla-program "firefox")
;;(setq browse-url-browser-function 'w3m-browse-firefox)
(setq browse-url-browser-function 'browse-url-generic
          browse-url-generic-program "chromium")


;; GnuPG
(setq pgp-version 'gpg)


;;時計の表示
(display-time)
;;行 列 の表示
(line-number-mode 1)
(column-number-mode 1)


;;最近使ったファイルの表示
(require 'recentf)
(recentf-mode 1)

;;(eval-after-load "subst-jis" '(load "subst-jisx0208ex"))


;;;
;;; gtags
;;;
(autoload 'gtags-mode "gtags" "" t)
(setq gtags-mode-hook
      '(lambda ()
         (local-set-key "\M-t" 'gtags-find-tag)
         (local-set-key "\M-r" 'gtags-find-rtag)
         (local-set-key "\M-s" 'gtags-find-symbol)
         (local-set-key "\C-t" 'gtags-pop-stack)
         ))

(add-hook 'c-mode-common-hook
          '(lambda()
             (gtags-mode 1)
             (gtags-make-complete-list)
             ))



;;;howm
(setq howm-menu-lang 'ja)
(global-set-key "\C-c,," 'howm-menu)
(autoload 'howm-menu "howm-mode" "Hitori Otegaru Wiki Modoki" t)
(eval-after-load "calendar"
  '(progn
     (define-key calendar-mode-map
       "\C-m" 'my-insert-day)
     (defun my-insert-day ()
       (interactive)
       (let ((day nil)
             (calendar-date-display-form
			  '("[" year "-" (format "%02d" (string-to-int month))
				"-" (format "%02d" (string-to-int day)) "]")))
         (setq day (calendar-date-string
                    (calendar-cursor-to-date t)))
         (exit-calendar)
         (insert day)))))
;; リンクを TAB で辿る
(eval-after-load "howm-mode"
  '(progn
     (define-key howm-mode-map [tab] 'action-lock-goto-next-link)
     (define-key howm-mode-map [(meta tab)] 'action-lock-goto-previous-link)))
;; 「最近のメモ」一覧時にタイトル表示
(setq howm-list-recent-title t)
;; 全メモ一覧時にタイトル表示
(setq howm-list-all-title t)
;; メニューを 2 時間キャッシュ
(setq howm-menu-expiry-hours 2)

;; howm の時は auto-fill で
(add-hook 'howm-mode-on-hook 'auto-fill-mode)

;; RET でファイルを開く際, 一覧バッファを消す
;; C-u RET なら残る
(setq howm-view-summary-persistent nil)

;; メニューの予定表の表示範囲
;; 4 日前から
(setq howm-menu-schedule-days-before 4)
;; 14 日後まで
(setq howm-menu-schedule-days 14)

;; howm のファイル名
;; 以下のスタイルのうちどれかを選んでください
;; で，不要な行は削除してください
;; 1 メモ 1 ファイル (デフォルト)
;(setq howm-file-name-format "%Y/%m/%Y-%m-%d-%H%M%S.howm")
;; 1 日 1 ファイルであれば
(setq howm-file-name-format "%Y/%m/%Y-%m-%d.howm")

(setq howm-view-grep-parse-line
      "^\\(\\([a-zA-Z]:/\\)?[^:]*\\.howm\\):\\([0-9]*\\):\\(.*\\)$")
;; 検索しないファイルの正規表現
(setq
 howm-excluded-file-regexp
 "/\\.#\\|[~#]$\\|\\.bak$\\|/CVS/\\|\\.doc$\\|\\.pdf$\\|\\.ppt$\\|\\.xls$")

;; いちいち消すのも面倒なので
;; 内容が 0 ならファイルごと削除する
(if (not (memq 'delete-file-if-no-contents after-save-hook))
    (setq after-save-hook
          (cons 'delete-file-if-no-contents after-save-hook)))
(defun delete-file-if-no-contents ()
  (when (and
         (buffer-file-name (current-buffer))
         (string-match "\\.howm" (buffer-file-name (current-buffer)))
         (= (point-min) (point-max)))
    (delete-file
     (buffer-file-name (current-buffer)))))

;; http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?SaveAndKillBuffer
;; C-cC-c で保存してバッファをキルする
(defun my-save-and-kill-buffer ()
  (interactive)
  (when (and
         (buffer-file-name)
         (string-match "\\.howm"
                       (buffer-file-name)))
    (save-buffer)
    (kill-buffer nil)))
(eval-after-load "howm"
  '(progn
     (define-key howm-mode-map
       "\C-c\C-c" 'my-save-and-kill-buffer)))

(defun howm-open-from-calendar ()
  "カレンダー上の日付に対応したファイル名の howm メモを開く."
  (interactive)
  (require 'howm-mode)
  (let* ((mdy (calendar-cursor-to-date t))
         (m (car mdy))
         (d (second mdy))
         (y (third mdy))
         (ti (encode-time 0 0 0 d m y))
         (pc (howm-folder-get-page-create howm-directory (howm-file-name ti)))
         (page (car pc))
         (createp (cdr pc)))
    (other-window 1)
    (howm-page-open page)
    (if createp
		(howm-create-here)
      (howm-set-mode))))
(require 'calendar)
(define-key calendar-mode-map "c" 'howm-open-from-calendar)

(require 'calendar)
(setq  number-of-diary-entries 31)
(define-key calendar-mode-map "f" 'calendar-forward-day)
(define-key calendar-mode-map "n" 'calendar-forward-day)
(define-key calendar-mode-map "b" 'calendar-backward-day)
(setq mark-holidays-in-calendar t)
;(install-elisp "http://www.meadowy.org/meadow/netinstall/export/799/branches/3.00/pkginfo/japanese-holidays/japanese-holidays.el")
(require 'japanese-holidays)
(setq calendar-holidays
      (append japanese-holidays local-holidays other-holidays))
(setq calendar-weekend-marker 'diary)
(add-hook 'today-visible-calendar-hook 'calendar-mark-weekend)
(add-hook 'today-invisible-calendar-hook 'calendar-mark-weekend)

; #!ではじまるスクリプトを保存するとき、自動的に chmod +x する
(add-hook 'after-save-hook
          'executable-make-buffer-file-executable-if-script-p)

;; 圧縮されたファイルを編集する
(auto-compression-mode t)


;; perl-mode の 代わりに cperl-modeを読み込む
;;(autoload 'perl-mode "cperl-mode" "alternate mode for editing Perl programs" t)

(setq indent-tabs-mode nil)

;;; cperl-mode indent
(setq
    cperl-indent-level 4
;    cperl-continued-statement-offset 1
;    cperl-close-paren-offset -1
    cperl-comment-column 80
;    cperl-highlight-variables-indiscriminately t
;    cperl-indent-parens-as-block nil
;    cperl-label-offset -1
;    cperl-tab-always-indent nil
;    cperl-font-lock nil
 )
;
;(add-hook 'cperl-mode-hook
;         '(lambda ()
;            (progn
;              (setq indent-tabs-mode nil)
;              (setq tab-width 2)
;              )))
;
;; perl-mode-plus
(setq cperl-mode-hook
      '(lambda ()
	 (require 'perlplus)
	 (define-key cperl-mode-map [backtab] 'perlplus-complete-symbol)
	 (perlplus-setup)))


;;perl-debug
(autoload 'perl-debug "perl-debug" nil t)
(autoload 'perl-debug-lint "perl-debug" nil t)
(add-hook 'perl-mode-hook
	  (lambda ()
	    (define-key perl-mode-map "\C-cc" 'perl-debug-lint)
	    (define-key perl-mode-map "\C-cd" 'perl-debug)))

(add-hook 'cperl-mode-hook
          (lambda ()
            (require 'perl-debug)
            (perl-debug-set-coding-system)
            (define-key cperl-mode-map "\C-cc" 'perl-debug-lint)
            (define-key cperl-mode-map "\C-cd" 'perl-debug)))




;; autoheader
(autoload 'header-insert "header" "Put stamp in file header" t)
(add-hook 'write-file-hooks 'header-insert)


;;comment
(setq comment-style 'multi-line)

;; region highlight
(transient-mark-mode 1)


;;auto header2

;; C-c H	モード/ファイルの拡張子にあわせたへッダを生成する
;; C-u C-c H	モード/ファイルの拡張子にあわせた修正時用のへッダを挿入する
;; C-c T	現在時間を挿入する
(load "header2")
(setq header-template-dir "~/.emacs.d/headers")

(setq emacs-ime (getenv "anthy"))


;; php-mode
(autoload 'php-mode "php-mode.el" "Php mode." t)
(setq auto-mode-alist (append '(("/*.\.php[345]?$" . php-mode)) auto-mode-alist))

;; python-mode
(autoload 'python-mode "python-mode.el" "Python mode." t)
(setq auto-mode-alist (append '(("/*.\.py$" . python-mode)) auto-mode-alist))

;; php-mode
(autoload 'php-mode "php-mode.el" "Php mode." t)
(setq auto-mode-alist (append '(("/*.\.php[345]?$" . php-mode)) auto-mode-alist))

;; mozc
;(set-language-environment "Japanese")
;(require 'mozc)  ; or (load-file "/path/to/mozc.el")
;(setq default-input-method "japanese-mozc")

