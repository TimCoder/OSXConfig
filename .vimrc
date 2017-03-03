"去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限 
set nocompatible 

"加入行号
set nu
"set relativenumber

"高亮匹配括号
set showmatch

"编码设置
set enc=utf-8
set langmenu=zh_CN.UTF-8
set helplang=cn

"检测文件的类型 
filetype on 

"背景使用黑色 
set background=dark 

"语法高亮度显示 
syntax on 

"vim使用自动对起，也就是把当前行的对起格式应用到下一行； 
set autoindent 

"依据上面的对起格式，智能的选择对起方式，对于类似C语言编 
set smartindent 

"设置tab键为4个空格
set tabstop=4 

"设置当行之间交错时使用4个空格 
set shiftwidth=4

"使用空格代替tab
set expandtab

"寻找匹配是高亮度显示的 
set hls 

"在编辑过程中，在右下角显示光标位置的状态行 
set ruler 

"修改一个文件后，自动进行备份，备份的文件名为原文件名加“~“后缀 
set backup

"查询时非常方便，如要查找book单词，当输入到/b时，会自动找到第一 
"个b开头的单词，当输入到/bo时，会自动找到第一个bo开头的单词，依 
"次类推，进行查找时，使用此设置会快速找到答案，当你找要匹配的单词 
"时，别忘记回车 
set incsearch 

"设置搜索结果高亮
set hlsearch 

"use mouse everywhere 
set mouse=a 
"
"设置配色方案
colorscheme rainbow

set rtp+=~/.vim/bundle/Vundle.vim

"自动开启目录树
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"自动补全
inoremap jk <esc>


"插件
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'git://github.com/scrooloose/nerdtree.git'

Plugin 'git://github.com/kien/ctrlp.vim.git'

call vundle#end()
filetype plugin indent on
