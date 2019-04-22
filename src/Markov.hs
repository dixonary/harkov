module Markov where

import Data.Map (Map, keys, fromList, (!))
import Test.QuickCheck (generate, elements)

data Chain = Chain (Map String [Maybe String])
    deriving (Show)

run :: Chain -> IO [String]
run (Chain m) = do
    phoneme <- generate $ elements $ keys m
    runFrom (Chain m) phoneme

runFrom :: Chain -> String -> IO [String]
runFrom (Chain m) ph = do
    nextM <- generate $ elements $ m ! ph
    case nextM of
        Nothing   -> return $ []
        Just next -> (next :) <$> runFrom (Chain m) next

        