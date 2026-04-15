module Drill.D06TypeClasses.MyOrdSpec (spec) where

import Test.Hspec
import Drill.D06TypeClasses.MyEq (Color (..))
import Drill.D06TypeClasses.MyOrd ()

spec :: Spec
spec = do
  describe "Ord Color" $ do
    it "Red < Green" $
      compare Red Green `shouldBe` LT
    it "Green < Blue" $
      compare Green Blue `shouldBe` LT
    it "同じ色は EQ" $
      compare Blue Blue `shouldBe` EQ
    it "Blue > Red" $
      compare Blue Red `shouldBe` GT
    it "(<) 演算子" $
      (Red < Blue) `shouldBe` True
    it "sort で昇順になる" $
      minimum [Blue, Red, Green] `shouldBe` Red
