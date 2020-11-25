module Main (main) where

    main :: IO()
    main = print "make this useful"
    --following functions implement functionality of a stack
    --get the top element of a stack (last element in a list)
    top :: [[Char]] -> [Char]
    top stack = last stack

    --pop the top element off of the stack (last element on the list)
    pop :: [[Char]] -> [[Char]]
    pop stack = init stack

    --push an item onto the stack (add item to end of list)
    push :: [a] -> [a] -> [a]
    push stack item = stack ++ item

    --following functions implement concatination functions (perhaps there is a way to do this not from scratch)
    concatinate :: [[Char]] -> [Char]
    concatinate (x:xs) = x ++ concatinate xs
    concatinate [] = ""

    precedence :: [Char] -> Integer
    precedence "+" = 0
    precedence "-" = 0
    precedence "*" = 1
    precedence "/" = 1

    