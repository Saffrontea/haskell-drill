module Drill.D07Monad.EitherValidationSpec (spec) where

import Test.Hspec
import Drill.D07Monad.EitherValidation

spec :: Spec
spec = do
  describe "validateAge" $ do
    it "正常な年齢" $
      validateAge 25 `shouldBe` Right 25
    it "0 歳は有効" $
      validateAge 0 `shouldBe` Right 0
    it "負の年齢はエラー" $
      validateAge (-1) `shouldBe` Left "年齢は 0 以上である必要があります"
    it "150 超はエラー" $
      validateAge 200 `shouldBe` Left "年齢は 150 以下である必要があります"

  describe "validateName" $ do
    it "通常の名前" $
      validateName "Alice" `shouldBe` Right "Alice"
    it "空文字はエラー" $
      validateName "" `shouldBe` Left "名前は空にできません"

  describe "validateUser" $ do
    it "両方有効" $
      validateUser 25 "Alice" `shouldBe` Right ("Alice", 25)
    it "年齢が無効" $
      validateUser (-1) "Bob" `shouldBe` Left "年齢は 0 以上である必要があります"
    it "名前が無効" $
      validateUser 30 "" `shouldBe` Left "名前は空にできません"
