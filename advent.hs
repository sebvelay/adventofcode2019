import System.Environment

fuel :: Int -> Int
fuel x
    | x > 6 = (x `div` 3 - 2) + fuel (x `div` 3 - 2)
    | otherwise = 0

main = do
    --on lit le fichier
    [file] <- getArgs
    content <- readFile file
    let linesOfFiles = lines content
    -- advent of code 2
    let res = [fuel (read x::Int) | x <- linesOfFiles]
    print (show $ sum res)