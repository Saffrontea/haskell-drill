module Drill.D04Maybe.SafeHeadSpec (spec) where

import Test.Hspec
import Drill.D04Maybe.SafeHead

spec :: Spec
spec = do
  describe "safeHead" $ do
    it "空リストは Nothing" $
      safeHead ([] :: [Int]) `shouldBe` Nothing
    it "要素ありリストは先頭を Just で返す" $
      safeHead [1, 2, 3] `shouldBe` Just 1
    it "単一要素のリスト" $
      safeHead [42 :: Int] `shouldBe` Just 42
    it "文字列（= [Char]）にも使える" $
      safeHead "hello" `shouldBe` Just 'h'
