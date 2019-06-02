module Lib
    ( someFunc, addOne
    ) where

someFunc :: IO ()
someFunc = putStrLn "Haskell, world!"

addOne :: Int -> Int
addOne = \x -> x + 1
