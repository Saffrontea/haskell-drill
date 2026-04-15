module Drill.D03Lists.MyReverse where

-- | リストを逆順にする（reverse を使わずに実装すること）
-- 例:
--   myReverse []        == []
--   myReverse [1,2,3]   == [3,2,1]
--   myReverse "hello"   == "olleh"
myReverse :: [a] -> [a]
myReverse = foldl (flip (:)) []
-- flipは2引数関数の引数を入れ替える関数
-- :はリストの結合演算子
-- foldlを用いて新規のListに順番にflipした結合を適用すると
-- [a,b,c] [] / [a,b,c] [a] / [a,b,c] [b,a] / [a,b,c] [c,b,a]となりreverseが成立する
-- myReverse [] = []
-- myReverse (x:xs) = myReverse xs <> [x]
-- でも成立するが、毎回xのListを生成するのは無駄
