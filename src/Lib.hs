module Lib
    ( starman
    , addOne
    , factorial
    , circumference
    ) where

addOne :: Int -> Int
addOne = (+ 1)

factorial :: Integer -> Integer
factorial n = product [1 .. n]

circumference :: Double -> Double
circumference r = 2 * pi * r

check :: String -> String -> Char -> (Bool, String)
check word display c =
    ( c `elem` word
    , [ if x == c
          then c
          else y
      | (x, y) <- zip word display
      ])

mkguess :: String -> String -> Int -> IO ()
mkguess word display n = do
    putStrLn (display ++ "  " ++ replicate n '*')
    putStr "  Enter your guess: "
    q <- getLine
    let (correct, display') = check word display (head q)
    let n' =
            if correct
                then n
                else n - 1
    turn word display' n'

turn :: String -> String -> Int -> IO ()
turn word display n
    | n == 0 = putStrLn "You lose"
    | word == display = putStrLn "You win!"
    | otherwise = mkguess word display n

starman :: String -> Int -> IO ()
starman word = turn word ['-' | x <- word]
