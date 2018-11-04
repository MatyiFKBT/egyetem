module Hf3 where

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib a = fib(a-1) + fib(a-2)

fibSeq :: Integer -> [Integer]
fibSeq 0 = []
fibSeq 1 = [0]
fibSeq a = [fib a | a <- [0..a-1]]
