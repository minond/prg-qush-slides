
  + Fluently interact with external programs
    : without quoting!
    : without marshalling!
    : with complex i/o!

    ls -l "$filename" 2> /tmp/error.log \
                       | grep hello
    === vs ===

    log = open "/tmp/error.log"

    proc1 = spawn ["ls", "-l", shellEsc filename]
    proc2 = spawn ["grep", "hello"]

    pipe (fd proc1 2) log
    pipe (fd proc1 1) (fd proc1 0)

