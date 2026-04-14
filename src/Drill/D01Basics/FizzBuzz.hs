module Drill.D01Basics.FizzBuzz where

-- | FizzBuzz: 3の倍数は "Fizz"、5の倍数は "Buzz"、
--   両方の倍数は "FizzBuzz"、それ以外は数字をそのまま文字列で返す
-- 例:
--   fizzBuzz 1  == "1"
--   fizzBuzz 3  == "Fizz"
--   fizzBuzz 5  == "Buzz"
--   fizzBuzz 15 == "FizzBuzz"
fizzBuzz :: Int -> String
fizzBuzz
 x | (x `mod` 15) == 0 = "FizzBuzz"
   | (x `mod` 5) == 0 = "Buzz"
   | (x `mod` 3) == 0 = "Fizz"
   | otherwise = show x　
   -- 剰余は`mod`を用いる。関数であるため二項演算子として用いるにはbackquoteが必要
   -- また、Haskellは関数適用と単項演算子適用の順序が関数が先なので、-1 `mod` 26はnegate (mod 1 26)と等価になる
   -- そのため、(-1) `mod` 26と-1 `mod` 26は異なる結果を返す
   -- show関数を用いるとShow type classを実装している型はString型に変換可能
