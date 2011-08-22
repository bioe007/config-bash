TASKPATH="$HOME/.wine/drive_c/cc51/bin"      # path to tasking binaries
DYNCPATH="$HOME/.wine/drive_c/DCRABBIT_9.21" # path to dynamic-C
WINECMD=$(which wine)
alias mk51="$WINECMD ${TASKPATH}/mk51.exe"
alias cc51="$WINECMD ${TASKPATH}/cc51.exe"     # compiler
alias mpp51="$WINECMD ${TASKPATH}/mpp51.exe"    # macro preprocessor
alias asm51="$WINECMD ${TASKPATH}/asm51.exe"    # assembler
alias ld51="$WINECMD ${TASKPATH}/link51.exe"   # linker
alias ihex51="$WINECMD ${TASKPATH}/ihex51.exe"   # hex converter
alias dync="$WINECMD ${DYNCPATH}/Dccl_cmp.exe" # dyn-c compiler
