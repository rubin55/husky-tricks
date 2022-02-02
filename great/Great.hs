module Great where

import Text.Printf

doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y


main :: IO ()
main = printf "This is %d times as great!\n" ((doubleUs 1 2) :: Integer)
