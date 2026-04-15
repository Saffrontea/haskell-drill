module Drill.D05DataTypes.ShapeSpec (spec) where

import Test.Hspec
import Drill.D05DataTypes.Shape

spec :: Spec
spec = do
  describe "area" $ do
    it "半径 1 の円の面積" $
      area (Circle 1.0) `shouldBe` pi
    it "半径 2 の円の面積" $
      area (Circle 2.0) `shouldBe` 4.0 * pi
    it "3x4 の長方形の面積" $
      area (Rectangle 3.0 4.0) `shouldBe` 12.0
    it "5x5 の正方形の面積" $
      area (Rectangle 5.0 5.0) `shouldBe` 25.0
