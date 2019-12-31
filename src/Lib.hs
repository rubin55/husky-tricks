module Lib
    ( starman, addOne, factorial, circumference
    ) where

starman :: String -> Int -> IO ()
starman word n = turn word ['-' | x <- word] n

addOne :: Int -> Int
addOne = \x -> x + 1

factorial :: Integer -> Integer
factorial n = product [1..n]

circumference :: Double -> Double
circumference r = 2 * pi * r

check :: String -> String -> Char -> (Bool,String)
check word display c
  = (c `elem` word, [if x==c
          then c
          else y | (x,y) <- zip word display])

mkguess :: String -> String -> Int -> IO ()
mkguess word display n =
  do putStrLn (display ++ "  " ++ take n (repeat '*'))
     putStr "  Enter your guess: "
     q <- getLine
     let (correct, display') = check word display (q!!0)
     let n' = if correct then n else n-1
     turn word display' n'

turn :: String -> String -> Int -> IO ()
turn word display n =
  do if n==0
       then putStrLn "You lose"
       else if word==display
              then putStrLn "You win!"
              else mkguess word display n

