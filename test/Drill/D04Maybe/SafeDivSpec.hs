module Drill.D04Maybe.SafeDivSpec (spec) where

import Test.Hspec
import Drill.D04Maybe.SafeDiv

spec :: Spec
spec = do
  describe "safeDiv" $ do
    it "通常の除算は Just を返す" $
      safeDiv 10 2 `shouldBe` Just 5
    it "割り切れない場合は商を Just で返す" $
      safeDiv 7 3 `shouldBe` Just 2
    it "0 で割ると Nothing を返す" $
      safeDiv 10 0 `shouldBe` Nothing
    it "0 ÷ 0 も Nothing を返す" $
      safeDiv 0 0 `shouldBe` Nothing
    it "被除数が 0 でも除数が非 0 なら Just 0" $
      safeDiv 0 5 `shouldBe` Just 0
