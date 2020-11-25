module Main (main) where

    main :: IO ()
    number :: Integer
    number = let x = 8 in x * x
    main = print number

    f x = if x < 0 then True else False
    duibudui = f(number)
    main2 :: IO ()
    main2 = print duibudui
    