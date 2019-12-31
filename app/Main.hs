module Main where

import           Lib
import           System.Environment (getArgs)

main :: IO ()
main = do
    args <- getArgs
    if length args /= 2
        then putStrLn "usage: starman WORD NUMBER_OF_GUESSES"
        else let word = args !! 0
                 guesses = read (args !! 1) :: Int
              in starman word guesses
