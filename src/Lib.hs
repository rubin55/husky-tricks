module Lib
    ( someFunc,
      tricl,
      sumsie,
      double,
      avg,
      qsort
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

sumsie :: Num a => [a] -> a
sumsie [] = 0
sumsie (n:ns) = n + sumsie ns

tricl = print (fac 20)
fac 0 = 1
fac n = n * fac (n-1)

double x = x + x

{-
prod [] = 1
prod (n:ns) = n * prod ns
-}

avg xs = sum xs `div` length xs

-- Ha a comment, how frizzle.
qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
    where
        smaller = [y | y<-xs, y<x]
        larger = [y | y<-xs, y>x]
