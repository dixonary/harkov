module Markov.Train where

import Data.Function ((&))
import Control.Applicative (pure)
import Data.Bifunctor (second)
import Data.Map (empty, insertWith, delete)
import Markov

trainOn :: String -> IO Chain
trainOn dataPath = do
    linedata <- readFile dataPath

    let pairs = linedata
              & lines
              & map words
              & map (\x -> zip x (map Just (tail x) ++ [Nothing]))
              & concat

    -- Turn pairs (a,b) into (a, [b]), and insert by concating [b]
    -- onto the existing value for key a

    let m = foldr (uncurry (insertWith (++)) . second pure) empty pairs

    return $ Chain m
