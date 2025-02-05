# To assemble and link the code we will use the following command:
gcc --static -g -nostartfiles -nostdlib -Wl,--build-id=none -Wa,-alh -Xlinker -Map=empty.map empty.S -o empty > empty.lst

# ok lets see what happened
ls

# lets see what's in empty.lst
cat empty.lst


# lets examine this elf file
file empty
ls -l empty

# still pretty big given that we only asked to load 4 bytes of zeros into memory
# all the other stuff necessary to describe to the OS and other tools the program image

# use objdump tool to print out ascii data from the executable file
# -s
# --full-contents
# Display the full contents of any sections requested. By default all non-empty
# sections are displayed.
objdump -s empty

# Display the symbol table the locations that each "symbol" got assigned to by the linker
#  This is the kind of extra information that make the elf file larger than just the contents
#  note where _start got assigned to
objdump -t empty

# ok lets got to the debugger
