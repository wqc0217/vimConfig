mv ~/.vimrc ~/.vimrcbak
mv ~/.vim ~/.vimbak
git clone https://github.com/handy1989/vim.git
mv vim/.vimrc ~/.vim ~/

#第一个插件pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "
execute pathogen#infect()
syntax on
filetype plugin indent on 
" >> ~/.vimrc

#auto-pairs
git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs

#NERDTree
#用vim打开一个文件，在命令行模式下输入:NERDTree，然后回车
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle
echo "
map <C-n> :NERDTree<CR>
" >> ~/.vimrc

#MiniBufExplorer
mkdir -p ~/.vim/bundle/minibufexplorer/plugin && wget "http://www.vim.org/scripts/download_script.php?src_id=3640" -O ~/.vim/bundle/minibufexplorer/plugin/minibufexpl.vim

echo "
let g:miniBufExplMaxSize = 2
" >> ~/.vimrc

#ctags+taglist+omnicppcomplete
#ctags
#使用方式：ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++
yum install ctags -y 

#taglist
cd ~/.vim/bundle && wget "http://www.vim.org/scripts/download_script.php?src_id=19574" -O taglist.zip && unzip taglist.zip -d taglist

echo -e "
let Tlist_Show_One_File=1    \" 只展示一个文件的taglist
let Tlist_Exit_OnlyWindow=1  \" 当taglist是最后以个窗口时自动退出
let Tlist_Use_Right_Window=1 \" 在右边显示taglist窗口
let Tlist_Sort_Type="name"   \" tag按名字排序
" >> ~/.vimrc

#OmniCppComplete
cd ~/.vim/bundle && wget "http://www.vim.org/scripts/download_script.php?src_id=7722" -O omnicppcomplete.zip && unzip omnicppcomplete.zip -d omnicppcomplete

echo -e "
filetype plugin indent on
set completeopt=longest,menu
let OmniCpp_NamespaceSearch = 2     \" search namespaces in the current buffer   and in included files
let OmniCpp_ShowPrototypeInAbbr = 1 \" 显示函数参数列表
let OmniCpp_MayCompleteScope = 1    \" 输入 :: 后自动补全
let OmniCpp_DefaultNamespaces = [\"std\", \"_GLIBCXX_STD\"]
" >> ~/.vimrc

#SuperTab
cd ~/.vim/bundle && git clone https://github.com/ervandew/supertab.git





