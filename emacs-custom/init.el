;; write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))


;; make backups of files, even when they're in version control
(setq vc-make-backup-files t)


(defun elisp-files-in-below-directory (directory)
       "List the .el files in DIRECTORY and in its sub-directories."
       (interactive "Directory name: ")
       (let (el-files-list
             (current-directory-list
              (directory-files-and-attributes directory t)))
         (while current-directory-list
           (cond
            ((equal ".el" (substring (car (car current-directory-list)) -3))
             (setq el-files-list
                   (cons (car (car current-directory-list)) el-files-list)))
            ((eq t (car (cdr (car current-directory-list))))
             (if
                 (equal "."
                        (substring (car (car current-directory-list)) -1))
                 ()
               (setq el-files-list
                     (append
                      (files-in-below-directory
                       (car (car current-directory-list)))
                      el-files-list)))))
           (setq current-directory-list (cdr current-directory-list)))
         el-files-list))


;; Settings for currently logged in user
(setq user-settings-dir
      (concat user-emacs-directory "users/" user-login-name))

;; conclude init by setting up specifics for the current user
(when (file-exists-p user-settings-dir)
  (mapc 'load (elisp-files-in-below-directory user-settings-dir)))

(put 'narrow-to-region 'disabled nil)
