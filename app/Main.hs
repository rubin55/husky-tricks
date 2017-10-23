module Main where

import Lib

import Options.Applicative
import Data.Semigroup ((<>))

data Options = Options
  { version    :: Bool
  , debug      :: Bool
  , configure  :: Bool
  , initialize :: Bool
  , list       :: String
  , search     :: String
  , add        :: String
  , modify     :: String
  , remove     :: String
}

options :: Parser Options
options = Options
       <$> switch
           ( long "version"
           <> short 'v'
           <> help "Display the program version")
       <*> switch
           ( long "debug"
           <> short 'd'
           <> help "Run the program in debug mode")
       <*> switch
           ( long "configure"
           <> short 'c'
           <> help "Configure the program for use")
       <*> switch
           ( long "initialize"
           <> short 'i'
           <> help "Clear configuration and reset to defaults")
       <*> strOption
           ( long "list"
          <> short 'l'
          <> metavar "LIST"
          <> help "List keys, credentials or data stores" )
       <*> strOption
           ( long "search"
          <> short 's'
          <> metavar "SEARCH"
          <> help "Search for a credential and return result" )
       <*> strOption
           ( long "add"
          <> short 'a'
          <> metavar "ADD"
          <> help "Add a key, credential or data store" )
       <*> strOption
           ( long "modify"
          <> short 'm'
          <> metavar "MODIFY"
          <> help "Modify a key, credential or data store" )
       <*> strOption
           ( long "remove"
          <> short 'r'
          <> metavar "REMOVE"
          <> help "Remove a key, credential or data store" )

main :: IO ()
main = greet =<< execParser opts
  where
    opts = info (options <**> helper)
      ( fullDesc
     <> progDesc "Husky Tricks"
     <> header "husky-tricks - An adventure into the unknown" )

bmiTell :: (RealFloat a) => a -> a -> IO ()
bmiTell weight height
    | weight / height ^ 2 <= 18.5 = putStrLn "You're underweight, you emo, you!"
    | weight / height ^ 2 <= 25.0 = putStrLn "You're supposedly normal. Pffft, I bet you're ugly!"
    | weight / height ^ 2 <= 30.0 = putStrLn "You're fat! Lose some weight, fatty!"
    | otherwise                   = putStrLn "You're a whale, congratulations!"

greet :: Options -> IO ()
greet (Options False False False False "x" "x" "x" "x" "x") = bmiTell 78 1.82
greet _ = return ()
