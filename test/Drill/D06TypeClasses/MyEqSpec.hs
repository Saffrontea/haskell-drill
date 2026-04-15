module Drill.D06TypeClasses.MyEqSpec (spec) where

import Test.Hspec
import Drill.D06TypeClasses.MyEq

spec :: Spec
spec = do
  describe "Eq Color" $ do
    it "同じ色は等しい (Red)" $
      (Red == Red) `shouldBe` True
    it "同じ色は等しい (Blue)" $
      (Blue == Blue) `shouldBe` True
    it "異なる色は等しくない" $
      (Red == Green) `shouldBe` False
    it "/= は == の逆" $
      (Blue /= Green) `shouldBe` True
