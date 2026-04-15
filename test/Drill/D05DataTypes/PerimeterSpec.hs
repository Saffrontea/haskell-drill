module Drill.D05DataTypes.PerimeterSpec (spec) where

import Test.Hspec
import Drill.D05DataTypes.Shape (Shape (..))
import Drill.D05DataTypes.Perimeter

spec :: Spec
spec = do
  describe "perimeter" $ do
    it "半径 1 の円の周の長さ" $
      perimeter (Circle 1.0) `shouldBe` 2.0 * pi
    it "半径 3 の円の周の長さ" $
      perimeter (Circle 3.0) `shouldBe` 6.0 * pi
    it "3x4 の長方形の周の長さ" $
      perimeter (Rectangle 3.0 4.0) `shouldBe` 14.0
    it "2x5 の長方形の周の長さ" $
      perimeter (Rectangle 2.0 5.0) `shouldBe` 14.0
