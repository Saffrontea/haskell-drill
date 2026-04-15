module Drill.D04Maybe.FromMaybeSpec (spec) where

import Test.Hspec
import Drill.D04Maybe.FromMaybe

spec :: Spec
spec = do
  describe "fromMaybe" $ do
    it "Just の場合はその値を返す" $
      fromMaybe 0 (Just 42) `shouldBe` 42
    it "Nothing の場合はデフォルト値を返す" $
      fromMaybe 0 Nothing `shouldBe` (0 :: Int)
    it "文字列でも動作する" $
      fromMaybe "default" (Just "hello") `shouldBe` "hello"
    it "文字列で Nothing" $
      fromMaybe "default" Nothing `shouldBe` "default"
