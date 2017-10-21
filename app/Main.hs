module Main where

import System.Environment
import Data.List

import Lib

main :: IO ()
main = do
   args <- getArgs
   progName <- getProgName
   putStrLn "The arguments are:"
   mapM putStrLn args
   putStrLn "The program name is:"
   putStrLn progName
