{-
fizzBuzz :: [Int] -> String
fizzBuzz [] = ""
fizzBuzz (x:xs)
	| mod x 3 == 0 = "fizz " ++ fizzBuzz xs
	| mod x 5 == 0 = "buzz " ++ fizzBuzz xs
	| otherwise = ((show x) ++ " ") ++ fizzBuzz xs
-}	
	
	{-
fizzBuzz :: [Int] -> IO ()
fizzBuzz [] = print ""
fizzBuzz (x:xs)
	| mod x 3 == 0 = (print "fizz ") ++ fizzBuzz xs
-}

oneFizzBuzz :: Int -> String
oneFizzBuzz x 
    | x `mod` 3 == 0 = "Fizz"
    | x `mod` 5 == 0 = "buzz"
    | otherwise = show x
    

main :: IO ()
main = do
    linha <- getLine
    let palavras = fmap (\ ps -> read ps :: Int) $ words linha
    let fizBuzzArray =  fmap oneFizzBuzz palavras 
    putStrLn $ show fizBuzzArray
    
    
-- Implementar em IO usando funcoes fragmentadas.