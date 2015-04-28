setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal listchars=tab:\ \ ,trail:·

let g:syntastic_html_tidy_ignore_errors = [
			\'trimming empty <i>',
			\'trimming empty <span>',
			\'<input> proprietary attribute "autocomplete"',
			\'proprietary attribute "role"',
			\'proprietary attribute "hidden"',
			\'proprietary attribute "ng-',
\]
