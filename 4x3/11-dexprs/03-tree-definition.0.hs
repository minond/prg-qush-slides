
     Further Work: Syntax-Independent Macros

data Tpl a = Tok Token
           | Nest Token Token [a]
           | Item [a]

           | Annot [(String, a)] a
           | Macro String a
           | Quote a
           | Template [a]
           | Var (VarSpec a)

--          pattern  expr    expanded
transform :: Tpl -> Tpl -> Skel

-- implementation must handle loading and stages

