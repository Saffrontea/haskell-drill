module Drill.D01Basics.Hello where

-- | 文字列を受け取って "Hello, {name}!" を返す
-- 例: greet "World" == "Hello, World!"
greet :: String -> String
greet s = "Hello, " <> s <> "!"
-- Stringは[Char]であるから結合方法が二つ存在する
-- <>は半群=結合法則を持つことを示し、TextやStringなどが結合法則を持つことを示す
-- ++ は Listの結合であるから[Char]のStringは結合できるが、Textなどとの結合は表せない
-- 演算子の結合順序としては<> > ++であるから、混ぜた場合は"Hello, "++(s<>"!")のように評価される
