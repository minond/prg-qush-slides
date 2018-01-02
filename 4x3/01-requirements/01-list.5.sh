
  + Fluently interact with external programs
    : without quoting!
    : without marshalling!
    : with complex i/o!
    : with environments!

    LS_COLORS=never ls -l "$filename"

    === vs ===

    spawn ["/usr/bin/env",
           "LS_COLORS=never",
           "ls", "-l", shellEsc filename]




