" Allow movement through display lines (wrapped lines)
nnoremap <silent> <expr> j v:count == 0 ? 'gj' : 'j'
nnoremap <silent> <expr> k v:count == 0 ? 'gk' : 'k'
nnoremap <silent> <expr> <DOWN> v:count == 0 ? 'gj' : '<DOWN>'
nnoremap <silent> <expr> <UP> v:count == 0 ? 'gk' : '<UP>'
xnoremap <silent> <expr> j v:count == 0 ? 'gj' : 'j'
xnoremap <silent> <expr> k v:count == 0 ? 'gk' : 'k'
xnoremap <silent> <expr> <DOWN> v:count == 0 ? 'gj' : '<DOWN>'
xnoremap <silent> <expr> <UP> v:count == 0 ? 'gk' : '<UP>'
inoremap <silent> <expr> <DOWN> pumvisible() 
            \ ? '<DOWN>' : '<Cmd>set ve+=onemore <bar> exe "norm! gj" <bar> set ve-=onemore<CR>'
inoremap <silent> <expr> <UP> pumvisible() 
            \ ? '<UP>' : '<Cmd>set ve+=onemore <bar> exe "norm! gk" <bar> set ve-=onemore<CR>'

" Navigate in insert mode
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" Navigate snippet placeholders
imap <expr> <C-j> vsnip#jumpable(1) ? '<Plug>(vsnip-jump-next)' : '<Down>'
smap <expr> <C-j> vsnip#jumpable(1) ? '<Plug>(vsnip-jump-next)' : '<C-j>'
imap <expr> <C-k> vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<Up>'
smap <expr> <C-k> vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<C-k>'

" Home moves to first non-whitespace on display line
nnoremap H g^
nnoremap L g$
nnoremap <expr> <Home> v:count == 0 ? "g^" : "^"
nnoremap <expr> <End> v:count == 0 ? "g$" : "$"
xnoremap H g^
xnoremap L g$
xnoremap <expr> <Home> v:count == 0 ? "g^" : "^"
xnoremap <expr> <End> v:count == 0 ? "g$" : "$"
inoremap <Home> <Cmd>normal g^<CR>
inoremap <End> <C-\><C-O>g$

" Yank, delete, paste
nnoremap <expr> y PlusYank()
nnoremap <expr> yy v:register == '"' ? '"+yy' : 'yy'
nnoremap <expr> Y v:register == '"' ? '"+y$' : 'y$'
nnoremap <M-p> "+p
nnoremap <M-P> "+P
xnoremap <expr> y v:register == '"' ? '"+y' : 'y'
xnoremap <expr> <S-Y> v:register == '"' ? '"+Y' : 'Y'
inoremap <M-p> <Cmd>set paste \| exec 'normal "+p' \| set nopaste<CR><RIGHT>
inoremap <M-P> <Cmd>set paste \| exec 'normal "+P' \| set nopaste<CR><RIGHT>

" File explorer
" nnoremap <silent> <Leader>e <Cmd>NvimTreeFindFile<CR>
" nnoremap <silent> <Leader>b <Cmd>lua Config.nvim_tree.toggle_no_focus()<CR>
nnoremap - <Cmd>LirExplore<CR>
nnoremap _ <Cmd>exe 'e ' . getcwd()<CR>
nnoremap <leader>es <Cmd>sp <bar> LirExplore<CR>
nnoremap <leader>ev <Cmd>vsp <bar> LirExplore<CR>
nnoremap <leader>ee <Cmd>call v:lua.Config.lir.toggle_float()<CR>
nnoremap <leader>E <Cmd>call v:lua.Config.lir.toggle_float(getcwd())<CR>

inoremap <M-Space> <Esc>

" Make session
nmap <silent> <M-s> <Cmd>SessionSave<CR>

" Begin new line above from insert mode
inoremap <M-Return> <Esc>O

" Navigate buffers
nnoremap  <silent>   <tab> :bn<CR>
nnoremap  <silent> <s-tab> :bp<CR>
nnoremap <leader><leader> <Cmd>buffer #<CR>
nnoremap ~ <Cmd>buffer #<CR>
nnoremap <silent> <leader>w <Cmd>lua require'nvim-config.lib'.remove_buffer()<CR>
nnoremap <leader>W <Cmd>bd<CR>
nnoremap <silent> gb <Cmd>BufferLinePick<CR>

" Navigate tabs
nnoremap <silent> <Leader><Tab> <Cmd>tabn<CR>
nnoremap <silent> <Leader><S-Tab> <Cmd>tabp<CR>
nnoremap <leader>1 <Cmd>1tabn<CR>
nnoremap <leader>2 <Cmd>2tabn<CR>
nnoremap <leader>3 <Cmd>3tabn<CR>
nnoremap <leader>4 <Cmd>4tabn<CR>
nnoremap <leader>5 <Cmd>5tabn<CR>
nnoremap <leader>6 <Cmd>6tabn<CR>
nnoremap <leader>7 <Cmd>7tabn<CR>
nnoremap <leader>8 <Cmd>8tabn<CR>
nnoremap <leader>9 <Cmd>9tabn<CR>

" Navigate windows
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
nnoremap <C-x> <C-w>p
nnoremap <C-w><C-m> <Cmd>WinShift<CR>
nnoremap <C-w>m <Cmd>WinShift<CR>
nnoremap <C-w>X <Cmd>WinShift swap<CR>

" Window splits
nnoremap <leader>v <Cmd>vsp<CR>
nnoremap <leader>s <Cmd>sp<CR>

" Resize windows
nnoremap <C-M-h> <Cmd>vertical res -2<CR>
nnoremap <C-M-l> <Cmd>vertical res +2<CR>
nnoremap <C-M-j> <Cmd>res +1<CR>
nnoremap <C-M-k> <Cmd>res -1<CR>
tnoremap <C-M-h> <Cmd>vertical res -2<CR>
tnoremap <C-M-l> <Cmd>vertical res +2<CR>
tnoremap <C-M-j> <Cmd>res +1<CR>
tnoremap <C-M-k> <Cmd>res -1<CR>

nnoremap <Leader>q <Cmd>lua require'nvim-config.lib'.comfy_quit()<CR>
nnoremap <C-q> <Cmd>lua require'nvim-config.lib'.comfy_quit()<CR>

" Remap jump forward
nnoremap <C-S> <C-I>

" Move lines
nnoremap <A-K> <Cmd>m-2<CR>==
nnoremap <A-J> <Cmd>m+<CR>==
nnoremap <A-H> <<
nnoremap <A-L> >>
inoremap <A-K> <Cmd>m-2 \| normal! ==<CR>
inoremap <A-J> <Cmd>m+ \| normal! ==<CR>
inoremap <A-H> <Cmd>norm! <<<CR>
inoremap <A-L> <CMD>norm! >><CR>
vnoremap <A-K> :m '<-2<CR>gv=gv
vnoremap <A-J> :m '>+<CR>gv=gv
vnoremap <A-H> <gv
vnoremap <A-L> >gv

nnoremap <A-UP> <Cmd>m-2<CR>==
nnoremap <A-DOWN> <Cmd>m+<CR>==
inoremap <A-UP> <Cmd>m-2 \| normal! ==<CR>
inoremap <A-DOWN> <Cmd>m+ \| normal! ==<CR>
vnoremap <A-UP> :m '<-2<CR>gv=gv
vnoremap <A-DOWN> :m '>+<CR>gv=gv

" Select all
nnoremap <C-A> ggVG
inoremap <C-A> <ESC>ggVG
vnoremap <C-A> <ESC>ggVG 

" Shift+arrow selection
nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
imap <S-Up> <Esc>v<Up>
imap <S-Down> <Esc>v<Down>
imap <S-Left> <Esc>v
imap <S-Right> <Esc><Right>v

" Ctrl+backspace to delete prev word, ctrl+del to delete next word
" inoremap <C-H> <C-\><C-o>db
inoremap <C-Del> <C-\><C-o>dw

" Turn off search highlight until next search
nnoremap <Esc> <Cmd>noh<CR>
nnoremap <expr> * v:lua.Config.lib.expr.comfy_star()

" Search for selected text
vnoremap * "vy/\V<C-R>=escape(@",'/\')<CR><CR>

" Repeat prev macro
nmap , @@

" Telescope
nnoremap <C-P> <Cmd>lua require'nvim-config.lib'.workspace_files()<CR>
nnoremap <leader>p <Cmd>lua require'nvim-config.lib'.workspace_files({ all = true })<CR>
nnoremap <C-M-P> <Cmd>Telescope git_status<CR>
nnoremap <M-b> <Cmd>Telescope buffers<CR>
nnoremap <M-f> <Cmd>Telescope live_grep<CR>
nnoremap <M-O> <Cmd>Telescope lsp_dynamic_workspace_symbols<CR>
nnoremap <M-o> <Cmd>Telescope lsp_document_symbols<CR>
nnoremap <M-d> <Cmd>Telescope diagnostics bufnr=0<CR>
nnoremap z= <Cmd>Telescope spell_suggest theme=get_cursor<CR>
nnoremap <leader>fl <Cmd>Telescope current_buffer_fuzzy_find theme=get_ivy<CR>

" Git
nnoremap <leader>gl <Cmd>Git log -n256<CR>
nnoremap <leader>gcs <Cmd>Git commit<CR>
nnoremap <leader>gcc <Cmd>Git commit -a<CR>
nnoremap <leader>gca <Cmd>Git commit -a --amend<CR>
nnoremap <leader>gb <Cmd>Git blame <bar> wincmd p<CR>
nnoremap <leader>gd <Cmd>DiffviewOpen<CR>

" LspTrouble and Symbols outline
nnoremap <A-S-D> <Cmd>lua LspTroubleCustomToggle()<CR>
nnoremap <C-M-o> <Cmd>lua ToggleSymbolsOutline()<CR>
nnoremap <M-CR> <Cmd>lua UpdateMessagesWin()<CR>

" Open a terminal split
nnoremap <silent> <C-l> <Cmd>lua ToggleTermSplit()<CR>
tnoremap <silent> <C-l> <Cmd>lua ToggleTermSplit()<CR>
tnoremap <silent> <Esc> <C-\><C-n>
tnoremap <silent> <C-q> <Esc>

" Quickfix and Location list
nnoremap <M-q> <Cmd>lua ToggleQF()<CR>
" nnoremap [q <Cmd>cp<CR>
" nnoremap ]q <Cmd>cn<CR>
" nnoremap [Q <Cmd>cfirst<CR>
" nnoremap ]Q <Cmd>clast<CR>
nnoremap [l <Cmd>lprevious<CR>
nnoremap ]l <Cmd>lnext<CR>
nnoremap [L <Cmd>lfirst<CR>
nnoremap ]L <Cmd>llast<CR>

nnoremap <expr> [r v:lua.Config.lib.expr.next_reference(v:true)
nnoremap <expr> ]r v:lua.Config.lib.expr.next_reference()

" Trigger completion
" inoremap <silent><expr> <C-Space> compe#complete()
" inoremap <silent><expr> <Cr> compe#confirm("<Cr>")

" LSP
nnoremap <silent> gd <Cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <C-W>v<Cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gy <Cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gi <Cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <C-k> <Cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> gr <Cmd>Telescope lsp_references<CR>
nnoremap <silent> <leader>rn <Cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <F2> <Cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <leader>f <Cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> K <Cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <leader>. <Cmd>Telescope lsp_code_actions theme=get_cursor<CR>
vnoremap <leader>. <Cmd>Telescope lsp_range_code_actions theme=get_cursor<CR>
nnoremap <silent> <leader>ld <Cmd>lua vim.diagnostic.open_float()<CR>
" nnoremap <M-O> <Cmd>lua vim.lsp.buf.organize_imports()<CR>
nnoremap <silent> [d <Cmd>lua vim.diagnostic.goto_prev()<CR>
nnoremap <silent> ]d <Cmd>lua vim.diagnostic.goto_next()<CR>

xnoremap @ :<C-u>lua require'nvim-config.lib'.execute_macro_over_visual_range()<CR>

inoremap <silent> <Tab> <Cmd>lua require'nvim-config.lib'.full_indent()<CR>

" Show highlight group under cursor
nnoremap <F10> <Cmd>lua require'nvim-config.lib'.print_syn_group()<CR>

" COMMANDS
command! -nargs=+ Rnew lua Config.lib.read_new(<q-args>)
command! -bar Ssync syntax sync minlines=3000
command! -bar DiffSaved lua Config.lib.diff_saved()
command! -bar -range -bang -nargs=? SplitOn lua Config.lib.split_on_pattern(
            \ [[<args>]], { <range>, <line1>, <line2> }, <q-bang> == "!")
command! -bar -range ExecuteSelection lua Config.lib.cmd_exec_selection({ <line1>, <line2> })
command! -bar -bang BRemove lua Config.lib.remove_buffer("<bang>" == "!")
command! -nargs=+ Grep lua Config.lib.comfy_grep(<f-args>)
command! -bar Spectre lua require'spectre'.open()
command! -bar SpectreFile lua require'spectre'.open_file_search()
command! -bar HiShow exe 'redir=>a | silent hi | redir END | exe "e " . tempname() . "/Highlights" '
            \ . '| call setline(1, split(g:a, "\n")) | setl bt=nofile | ColorizerAttachToBuffer'
command! -bar Messages lua UpdateMessagesWin()
command! -bar Scratch lua Config.lib.new_scratch_buf()
command! -bar -nargs=1 -complete=help HelpHere lua Config.lib.cmd_help_here([[<args>]])
command! -bar -nargs=* -complete=customlist,man#complete ManHere lua Config.lib.cmd_man_here(<f-args>)
command! -bar -nargs=+ -complete=dir CompareDir
            \ tabnew | let t:paths = [<f-args>] | let t:compare_mode = 1 | vsp
            \ | silent exe '1windo lcd ' . t:paths[0] . ' | ' . ' 2windo lcd ' . t:paths[1]
            \ | windo exe 'exe "edit " . getcwd()'

" ABBREVIATIONS
cnoreabbrev msg Messages
cnoreabbrev brm! BRemove!
cnoreabbrev sch Scratch
cnoreabbrev hh HelpHere
cnoreabbrev mh ManHere
cnoreabbrev T Telescope
cnoreabbrev gs Telescope git_status
cnoreabbrev gb Telescope git_branches
cnoreabbrev gl Telescope git_commits
cnoreabbrev Qa qa
cnoreabbrev QA qa
cnoreabbrev Qa! qa!
cnoreabbrev QA! qa!
cnoreabbrev Wa wa
cnoreabbrev Wa! wa!
cnoreabbrev Wqa wqa
cnoreabbrev Wqa! wqa!
cnoreabbrev we w <Bar> e
cnoreabbrev ftd filetype detect

" OPERATOR FUNCTIONS

" Always yank to plus registry by default.
function! PlusYank(type = "")
    if a:type == ''
        let b:_register = v:register
        set opfunc=PlusYank
        return 'g@'
    endif

    let l:reg = b:_register == '"' ? '+' : b:_register
    let sel_save = &selection
    let cb_save = &clipboard
    let visual_marks_save = [getpos("'<"), getpos("'>")]

    try
        set clipboard= selection=inclusive
        let commands = #{
                    \ line: "'[V']\"" . l:reg . "y",
                    \ char: "`[v`]\"" . l:reg . "y",
                    \ block: "`[\<c-v>`]\"" . l:reg . "y",
                    \ }
        silent exe 'keepjumps normal! ' .. get(commands, a:type, '')
    finally
        call setpos("'<", visual_marks_save[0])
        call setpos("'>", visual_marks_save[1])
        let &clipboard = cb_save
        let &selection = sel_save
    endtry
endfunction
