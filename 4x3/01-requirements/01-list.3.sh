
  + Fluently interact with external programs
    : without quoting!
    : without marshalling!


    ls -l $ls_options

    === vs ===

    spawn ["ls", "-l"] ++ map shellEsc lsOptions







