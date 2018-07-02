" Codificação de leitura
set encoding=utf-8

" Para trabalhar legal, desative a compatibilidade com o VI
set nocompatible

filetype off

" Definir o caminho de tempo de execução para incluir o Vundle e inicializar
set rtp+=~/.vim/bundle/Vundle.vim

" Mantenha os comandos do plugin entre o vundle#begin & vundle#end.
call vundle#begin()

Plugin 'scrooloose/nerdtree'

call vundle#end()

filetype plugin indent on
syntax enable

set background=dark

" Mova o cursor para a string correspondente
set incsearch
" Destaque da pesquisa
set hlsearch
" Pesquisa ignorar case sensitive
set ignorecase
" A pesquisa não envolve quebra de linhas
set nowrap

" Comece a rolar 5 linhas antes da borda da janela horizontal
set scrolloff=5

" Evite atrasos
set lazyredraw

" Exibir números de linha
set number
set numberwidth=4

" Para exibir a linha de status sempre
set laststatus=2

" Não descarregar buffers
set hidden

" Nova janela é colocada abaixo da atual
set splitbelow
" Nova janela é colocada à direita da atual
set splitright

" Mostrar comandos
set showcmd

" Ocultar o status do modo (INSERT, VISUAL)
set noshowmode

" Mostrar a posição do cursor
set ruler

" Permitir backspace no modo de inserção
set backspace=start,eol,indent

" Reduza a necessidade de % na correspondência
set showmatch
set matchtime=2

" Os caracteres de tabulação inseridos serão alterados para espaços
set expandtab
" Número de caracteres de espaço inseridos para recuo
set shiftwidth=2
set softtabstop=2

" Evita a criação de arquivos * .ext
set nowritebackup
set nobackup
set noswapfile

" Ler automaticamente as alterações
set autoread

" Buffer oculto em vez de fechar
set hidden

" Aumentar o histórico
set history=1000

" Espaço como líder
map <space> <leader>

" Navegação no buffer da janela
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Ctrl C + Ctrl V
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

" Mapeamento de múltiplos cursores
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Airline
let g:airline_powerline_fonts = 1

" Terminal RSpec com tmux ou iterm2
"let g:rspec_runner = 'os_x_iterm2'
let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'

" Remover Barras
set guioptions-=T
set guioptions-=t
set guioptions-=L
set guioptions-=l
set guioptions-=m
set guioptions-=r

" Pesquisa limpa
nmap \hl :nohlsearch<CR>

" Abra um novo buffer vazio
nmap <leader>N :enew<cr>

" Mover para o próximo buffer
nmap <leader>n :bnext<CR>

" Mover para o buffer anterior
nmap <leader>p :bprevious<CR>

" Mover para o buffer anterior
nmap <leader>D :bdelete<CR>

" Feche o buffer atual e mova para o anterior
nmap <leader>bq :bp <BAR> bd #<CR>

" Mostrar todos os buffers abertos e seu status
nmap <leader>bl :ls<CR>

" Alternar NERDTree
nmap <silent> <Leader>nt :NERDTreeToggle<CR>

" Alternar Tagbar
nmap <silent> <Leader>tt :TagbarToggle<CR>

" Remova todos os espaços em branco à direita ao salvar
autocmd BufWritePre * :%s/\s\+$//e

" RSpec.vim mapeamentos
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Vim slime with tmux
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"

" Corrigir cores vim no tmux
set term=screen-256color

" Ignore alguns diretórios
set wildignore+=**/node_modules,**/bower_components,**/tmp,**/vendor,**/git
let NERDTreeIgnore=['node_modules', 'bower_components', 'tmp', 'vendor', 'tags']
let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|tmp\|vendor\|DS_Store\|git|tags'

" Modo Python desabilitar algumas coisas
let g:pymode_options_colorcolumn = 0
let g:pymode_lint = 0
let g:pymode_run = 0
let g:pymode_virtualenv = 0
let g:pymode_doc = 0
let g:pymode_folding = 0
let g:pymode_rope = 0