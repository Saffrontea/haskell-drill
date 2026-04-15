module Drill.D07Monad.MySequenceSpec (spec) where

import Test.Hspec
import Drill.D07Monad.MySequence

spec :: Spec
spec = do
  describe "mySequence" $ do
    it "空リストは Just []" $
      mySequence ([] :: [Maybe Int]) `shouldBe` Just []
    it "全て Just なら Just リスト" $
      mySequence [Just 1, Just 2, Just 3] `shouldBe` Just [1, 2, 3]
    it "1 つでも Nothing なら Nothing" $
      mySequence [Just 1, Nothing, Just 3] `shouldBe` (Nothing :: Maybe [Int])
    it "全て Nothing なら Nothing" $
      mySequence [Nothing, Nothing :: Maybe Int] `shouldBe` Nothing
