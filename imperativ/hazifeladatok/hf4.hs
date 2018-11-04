module Hf4 where

fact :: Integer -> Integer
fact a
    | a < 2 && a >= 0 = 1 
    | a < 0 = error "Factorial calculation is defined for non-negative integers only."
    | otherwise = a * fact (a-1)

bmi :: (Fractional a, Ord a) => a -> a -> [Char]
bmi a b
    | a / b^2 <= 18 = "underweight"
    | a / b^2 > 25 = "overweight"
    | otherwise = "normal"
