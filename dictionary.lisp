
(defparameter *dictionary* ())

(defstruct dict-entry
  word
  definition
  aliases)

(defmacro create-dict-entry (word definition aliases)
  `(setq ,word (make-dict-entry
		:word ',word
		:definition ,definition
		:aliases ,aliases)))

(macroexpand-1 '(create-dict-entry test "this is a test" nil))
(create-dict-entry test "this is a test" nil)

(defun add-entry (word definition aliases)
  (push (make-dict-entry
	 :word word
	 :definition definition
	 :aliases aliases)
	*dictionary*))

(add-entry 'foo4 "forut" nil)

(defun list-entries ()
  (mapcar #'dict-entry-word 
