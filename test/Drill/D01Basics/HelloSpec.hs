module Drill.D01Basics.HelloSpec (spec) where

import Test.Hspec
import Drill.D01Basics.Hello

spec :: Spec
spec = do
  describe "greet" $ do
    it "World に対して Hello, World! を返す" $
      greet "World" `shouldBe` "Hello, World!"
    it "Haskell に対して Hello, Haskell! を返す" $
      greet "Haskell" `shouldBe` "Hello, Haskell!"
