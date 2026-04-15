module Drill.D05DataTypes.Shape where

-- | 図形を表す代数的データ型
--   Circle r        : 半径 r の円
--   Rectangle w h   : 幅 w 、高さ h の長方形
data Shape
  = Circle Double
  | Rectangle Double Double
  deriving (Show, Eq)

-- | 図形の面積を返す。
-- （pi を使って構いません。Math.pi ではなく Prelude の pi を使用）
-- 例:
--   area (Circle 1.0)          ≒ 3.141592...
--   area (Rectangle 3.0 4.0)  == 12.0
area :: Shape -> Double
area = undefined
