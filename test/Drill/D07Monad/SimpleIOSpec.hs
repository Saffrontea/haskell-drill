module Drill.D07Monad.SimpleIOSpec (spec) where

import Test.Hspec
import Drill.D07Monad.SimpleIO

-- greetUser は IO アクションなので、純粋ヘルパー makeGreeting をテストする
spec :: Spec
spec = do
  describe "makeGreeting" $ do
    it "通常の名前" $
      makeGreeting "Alice" `shouldBe` "Hello, Alice!"
    it "別の名前" $
      makeGreeting "Haskell" `shouldBe` "Hello, Haskell!"
    it "空文字" $
      makeGreeting "" `shouldBe` "Hello, !"
