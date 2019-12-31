module Main where

import Lib
import System.Environment
import Data.List

main :: IO ()
main = do
    (word:tries:_) <- getArgs
    starman word (read tries :: Int)

