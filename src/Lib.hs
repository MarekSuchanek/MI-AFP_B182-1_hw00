module Lib
    ( add
    , answer
    , linear
    , quadratic
    , factorial
    ) where


-- TODO: implement this function (replace undefined)
add :: Int -> Int -> Int
add x y = x + y

-- TODO: check what answer is expected in test/Spec.hs
answer = 42

-- TODO: write formula for quadratic function, you will need specify type
quadratic a b c x = a * x ^ 2 + b * x + c

-- Linear is same as quadratic with a=0.0 (partially applied function)
linear = quadratic 0.0

{- TODO: implement factorial with recursion
         (no need to solve negative n now)
-}
factorial 0 = 1
factorial n = n * factorial (n-1)
