if !filereadable("Makefile")
    setlocal makeprg=g++\ -o\ %<\ %\ -Wall
endif
"packadd! vim-cpp-modern
