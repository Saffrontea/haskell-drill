# haskell-drill

Haskell の練習問題集。各問題の `undefined` を実装して `make test` で正解を確認する。

## セットアップ

```bash
stack build
```

## テストの実行

```bash
# 全問題を一括チェック
make test

# カテゴリ単位で実行
make category CAT=D01Basics
make category CAT=D02Recursion
make category CAT=D03Lists

# 関数名・問題名でしぼる
make match PATTERN="factorial"
make match PATTERN="Fibonacci"

# ファイル保存のたびに自動実行（全体）
make test-watch

# ウォッチしながら特定カテゴリだけ
make watch-match PATTERN=D03Lists
```

## 問題一覧

### D01Basics — 基本構文・関数定義

| ファイル | 関数 | 内容 |
|---|---|---|
| `src/Drill/D01Basics/Hello.hs` | `greet` | 挨拶文を返す |
| `src/Drill/D01Basics/Abs.hs` | `myAbs` | 絶対値（`abs` 禁止） |
| `src/Drill/D01Basics/MaxMin.hs` | `myMax` / `myMin` | 最大・最小（`max`/`min` 禁止） |
| `src/Drill/D01Basics/FizzBuzz.hs` | `fizzBuzz` | FizzBuzz |

### D02Recursion — 再帰

| ファイル | 関数 | 内容 |
|---|---|---|
| `src/Drill/D02Recursion/Factorial.hs` | `factorial` | 階乗（`product` 禁止） |
| `src/Drill/D02Recursion/Fibonacci.hs` | `fibonacci` | フィボナッチ数列 |
| `src/Drill/D02Recursion/Power.hs` | `myPower` | 累乗（`^` 禁止） |
| `src/Drill/D02Recursion/MySum.hs` | `mySum` | リスト合計（`sum` 禁止） |

### D03Lists — リスト操作・高階関数

| ファイル | 関数 | 内容 |
|---|---|---|
| `src/Drill/D03Lists/MyLength.hs` | `myLength` | リスト長（`length` 禁止） |
| `src/Drill/D03Lists/MyReverse.hs` | `myReverse` | 逆順（`reverse` 禁止） |
| `src/Drill/D03Lists/MyMap.hs` | `myMap` | map の自作 |
| `src/Drill/D03Lists/MyFilter.hs` | `myFilter` | filter の自作 |
| `src/Drill/D03Lists/MyFoldl.hs` | `myFoldl` | foldl の自作 |

## 新しい問題の追加

1. `src/Drill/D{NN}{Topic}/{ProblemName}.hs` を作成し `undefined` でスタブ
2. `test/Drill/D{NN}{Topic}/{ProblemName}Spec.hs` を作成（`spec :: Spec` を定義）
3. `stack test` が自動検出して実行される（hspec-discover）

```haskell
-- src/Drill/D04Maybe/SafeHead.hs
module Drill.D04Maybe.SafeHead where

-- | リストの先頭要素を安全に取得する
safeHead :: [a] -> Maybe a
safeHead = undefined
```

```haskell
-- test/Drill/D04Maybe/SafeHeadSpec.hs
module Drill.D04Maybe.SafeHeadSpec (spec) where

import Test.Hspec
import Drill.D04Maybe.SafeHead

spec :: Spec
spec = do
  describe "safeHead" $ do
    it "空リストは Nothing" $
      safeHead ([] :: [Int]) `shouldBe` Nothing
    it "先頭要素を Just で返す" $
      safeHead [1, 2, 3] `shouldBe` Just 1
```

## 技術スタック

- GHC 9.6.6 (lts-22.43)
- Stack
- Hspec + hspec-discover
