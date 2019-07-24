module Lib
    ( someFunc, addOne, factorial, circumference
    ) where

someFunc :: IO ()
someFunc = putStrLn "Haskell, world!"

addOne :: Int -> Int
addOne = \x -> x + 1

factorial :: Integer -> Integer
factorial n = product [1..n]

circumference :: Double -> Double
circumference r = 2 * pi * r
