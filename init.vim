let $BASE_PATH = $HOME."/.config/nvim/"
let $COMMON_PATH = $BASE_PATH."common/"
let $PLUG_PATH = $BASE_PATH."plugin-config/"

let files = [
 \	$BASE_PATH."plugin.vim",
 \	$COMMON_PATH."ui.vim",
 \	$COMMON_PATH."keymap.vim",
 \	$COMMON_PATH."custom-setting.vim",
 \	$PLUG_PATH."project-manage.vim",
 \	$PLUG_PATH."which-key.vim",
 \	$PLUG_PATH."lsp.vim",
 \	$PLUG_PATH."airline-config.vim",
 \	$PLUG_PATH."nerdcommenter.vim",
 \	$PLUG_PATH."fzf.vim",
 \	$PLUG_PATH."vim-go.vim",
 \ ]

function! SourceConfigFiles(files)
	for filePath in a:files
 		execute "source ".filePath
	endfor
endfunction

call SourceConfigFiles(files)
