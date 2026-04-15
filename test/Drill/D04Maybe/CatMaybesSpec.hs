module Drill.D04Maybe.CatMaybesSpec (spec) where

import Test.Hspec
import Drill.D04Maybe.CatMaybes

spec :: Spec
spec = do
  describe "catMaybes" $ do
    it "空リストは空リスト" $
      catMaybes ([] :: [Maybe Int]) `shouldBe` []
    it "Just の値だけを集める" $
      catMaybes [Just 1, Nothing, Just 3] `shouldBe` [1, 3]
    it "すべて Nothing の場合は空リスト" $
      catMaybes [Nothing, Nothing, Nothing :: Maybe Int] `shouldBe` []
    it "すべて Just の場合はそのまま" $
      catMaybes [Just 1, Just 2, Just 3] `shouldBe` [1, 2, 3]
    it "文字列でも動作する" $
      catMaybes [Just "a", Nothing, Just "b"] `shouldBe` ["a", "b"]
