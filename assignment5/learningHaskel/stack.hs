module Main (main) where 
    main :: IO()
    
    --get the top element of a stack (last element in a list)
    --top :: [[Char]] -> [Char]

    top :: [[Char]] -> [Char]
    top stack = last stack

    --pop the top element off of the stack (last element on the list)
    pop :: [[Char]] -> [[Char]]
    pop stack = init stack

    --push an item onto the stack (add item to end of list)
    push :: [a] -> [a] -> [a]
    push stack item = stack ++ item


    s :: [[Char]]
    s = ["1", "23"]

    --topElement :: [Char]
    --topElement = top s

    --s2 :: [[Char]]
    --s2 = pop s

    --s3 :: [[Char]]
    --s3 = push s ["yeet"]

    main = print s
