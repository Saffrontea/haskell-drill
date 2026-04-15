module Drill.D06TypeClasses.MyFunctor where

-- | 値を1つ包むコンテナ型
data Box a = Box a
  deriving (Show, Eq)

-- | Box の Functor インスタンスを実装する。
-- 例:
--   fmap (+1) (Box 3)       == Box 4
--   fmap show (Box 42)      == Box "42"
--   fmap (const True) (Box 'x') == Box True
instance Functor Box where
  fmap = undefined
