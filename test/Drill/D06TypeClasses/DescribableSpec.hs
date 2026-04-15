module Drill.D06TypeClasses.DescribableSpec (spec) where

import Test.Hspec
import Drill.D05DataTypes.Shape (Shape (..))
import qualified Drill.D06TypeClasses.Describable as Desc

spec :: Spec
spec = do
  describe "describe (Shape)" $ do
    it "円の説明" $
      Desc.describe (Circle 3.0) `shouldBe` "Circle with radius 3.0"
    it "長方形の説明" $
      Desc.describe (Rectangle 4.0 5.0) `shouldBe` "Rectangle with width 4.0 and height 5.0"
    it "半径 1.5 の円" $
      Desc.describe (Circle 1.5) `shouldBe` "Circle with radius 1.5"
