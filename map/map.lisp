

(defvar lexical-analysis "converting a stream of characters into a series of tokens")
(defvar lexing lexical-analysis)
(defvar scanning lexical-analysis)
(defvar parsing "converting series of tokens into a tree structure")

(defvar binding "connects each identifier to a name")
(defvar resolution binding)
(defvar scope "region of source code where a name can be used or accessed")

(defvar intermediate-representation "a representation of code with a degree of separation between source and destination form")
(defvar bytecode "virtual machine code produced by a compiler, not designed for any specific hardware")

(defvar single-pass-compiler "Produces output code directly in the parser, without a syntax tree or IR")
(defvar tree-walk-interpreter "Executes code after parsing it to an AST, by evaluating the the tree one node or leaf at a time")
(defvar transpiler "Converts a language to another high-level language, and uses the pre-existing compilers for that language to compile the code")
(defvar transcompiler transpiler)

(defvar compiling "Implementation technique that translates a source language to another")
(defvar compiler "Translates source code to another form, but doesn't execute it")
(defvar interpreter "Takes source code and executes it immediately")

(defparameter chapterwords (list
			    lexical-analysis
			    binding
			    scope
			    intermediate-representation
			    bytecode
			    single-pass-compiler
			    tree-walk-interpreter
			    transpiler
			    compiling
			    compiler
			    interpreter))
chapterwords

(defun print_definitions (lst)
  (mapcar #'whatis lst))

(print_definitions chapterwords)


(defun whatis (a)
  (fresh-line)
  (princ a))

;;(setq deee (list 'a 'b 'c))
;;(cadr deee)


;;(whatis lexing)
;;(whatis parsing)
