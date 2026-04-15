module Drill.D06TypeClasses.MyFunctorSpec (spec) where

import Test.Hspec
import Drill.D06TypeClasses.MyFunctor

spec :: Spec
spec = do
  describe "Functor Box" $ do
    it "数値に関数を適用" $
      fmap (+1) (Box (3 :: Int)) `shouldBe` Box 4
    it "数値を文字列に変換" $
      fmap show (Box (42 :: Int)) `shouldBe` Box "42"
    it "id を fmap すると変化なし" $
      fmap id (Box 'x') `shouldBe` Box 'x'
    it "const を fmap" $
      fmap (const True) (Box 'x') `shouldBe` Box True
