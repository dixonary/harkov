{-# LANGUAGE BangPatterns #-}

module Main where

import System.Environment (getArgs)
import System.Console.ANSI (cursorUp)
import Data.List (intersperse)

import Markov
import Markov.Train

main :: IO ()
main = do
    args <- getArgs
    case length args of
        0 -> putStrLn "Usage: \n markov filename"
        _ -> do
            let path = head args
            putStrLn "Constructing chain..."
            !chain <- trainOn path
        
            putStrLn "Press ENTER to generate a new name"

            let loop = do
                    getLine
                    cursorUp 1
                    putStrLn =<< concatWith " " <$> run chain
                    loop
                    in loop


concatWith :: String -> [String] -> String
concatWith w [] = ""
concatWith w [x] = x
concatWith w (x:xs) = x ++ w ++ concatWith w xs
        