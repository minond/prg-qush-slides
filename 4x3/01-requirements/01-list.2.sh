
  + Fluently interact with external programs
    : without quoting!
    : without marshalling!


    ls -l "$filename"

    === vs ===

    spawn ["ls", "-l", "'" ++
                       subst "\\" "'\\\\\'" ++
                       "'"]





