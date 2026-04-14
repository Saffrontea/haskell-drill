module Drill.D01Basics.FizzBuzzSpec (spec) where

import Test.Hspec
import Drill.D01Basics.FizzBuzz

spec :: Spec
spec = do
  describe "fizzBuzz" $ do
    it "1 -> \"1\"" $
      fizzBuzz 1 `shouldBe` "1"
    it "3 -> \"Fizz\"" $
      fizzBuzz 3 `shouldBe` "Fizz"
    it "5 -> \"Buzz\"" $
      fizzBuzz 5 `shouldBe` "Buzz"
    it "15 -> \"FizzBuzz\"" $
      fizzBuzz 15 `shouldBe` "FizzBuzz"
    it "7 -> \"7\"" $
      fizzBuzz 7 `shouldBe` "7"
    it "30 -> \"FizzBuzz\"" $
      fizzBuzz 30 `shouldBe` "FizzBuzz"
