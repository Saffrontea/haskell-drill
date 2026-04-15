module Drill.D07Monad.EitherValidation where

-- | 年齢のバリデーション。0 未満または 150 超はエラー。
-- 例:
--   validateAge 25    == Right 25
--   validateAge (-1)  == Left "年齢は 0 以上である必要があります"
--   validateAge 200   == Left "年齢は 150 以下である必要があります"
validateAge :: Int -> Either String Int
validateAge = undefined

-- | 名前のバリデーション。空文字はエラー。
-- 例:
--   validateName "Alice"  == Right "Alice"
--   validateName ""       == Left "名前は空にできません"
validateName :: String -> Either String String
validateName = undefined

-- | 年齢と名前を両方バリデーションし、
-- 両方成功したら (名前, 年齢) のタプルを返す。
-- いずれか失敗したら最初のエラーを Left で返す。
--
-- ヒント: do 記法（または >>= ）を使って Either を連鎖させる
--
-- 例:
--   validateUser 25 "Alice"  == Right ("Alice", 25)
--   validateUser (-1) "Bob"  == Left "年齢は 0 以上である必要があります"
--   validateUser 30 ""       == Left "名前は空にできません"
validateUser :: Int -> String -> Either String (String, Int)
validateUser = undefined
