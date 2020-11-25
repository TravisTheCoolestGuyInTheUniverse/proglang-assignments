module Main (main) where
    main :: IO()
    list :: [[Char]]
    list = [" yeet ", " peat ", " ruh roh"]

    --function that takes lists of strings and returns all the strings concatinated together
    concatinate :: [[Char]] -> [Char]
    concatinate (x:xs) = x ++ concatinate xs
    concatinate [] = ""

    --test function
    output :: [Char]
    output = concatinate list
    main = print output


    
