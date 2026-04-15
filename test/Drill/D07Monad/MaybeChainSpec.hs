module Drill.D07Monad.MaybeChainSpec (spec) where

import Test.Hspec
import Drill.D07Monad.MaybeChain

spec :: Spec
spec = do
  describe "safeDivTwice" $ do
    it "2 回とも成功する場合" $
      safeDivTwice 100 5 2 `shouldBe` Just 10
    it "1 回目が 0 除算" $
      safeDivTwice 100 0 2 `shouldBe` Nothing
    it "2 回目が 0 除算" $
      safeDivTwice 100 5 0 `shouldBe` Nothing
    it "両方 0 除算" $
      safeDivTwice 100 0 0 `shouldBe` Nothing
