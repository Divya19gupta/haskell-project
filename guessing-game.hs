runGame :: Int -> IO ()
runGame incorrectGuesses = do
    let secretNumb = 2
    if incorrectGuesses == 3
        then putStrLn "Sorry, you lose :("
        else do 
            userInput <- getLine
            let guess = read userInput::Int
            if guess == secretNumb
                then putStrLn "Yay! you win."
                else runGame (incorrectGuesses + 1)


main :: IO ()
main = do
    runGame 0