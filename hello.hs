name::String
name = "sara"
numbOfGifts::Int
numbOfGifts = 36

main = do 
    -- let name = "sara"
    -- let numbOfGifts = "36"

    -----------------------------------
    --BASIC SYNTAX
    -----------------------------------
    putStrLn ("jdsakaskdaksjdhfa....." ++ name ++ "....sadfksajdasf")
    putStrLn ("sdkfaljlksdjfa" ++ show numbOfGifts ++ "sadfsdfsdsaf")

    putStrLn name
    print numbOfGifts

    print (ceiling 3.6)
    print (floor 3.6)
    print (round 3.6)

    putStrLn "Please enter your name"
    n <- getLine
    putStrLn n

    putStrLn "Please enter your age and we will calculate your new age"
    a <- getLine
    let oldAge = read a::Int
    let newAge = oldAge + 10
    print newAge
 
    -----------------------------------
    --CALCULATOR
    -----------------------------------

    putStrLn "Please enter 1st Number"
    oneNumb <- getLine
    putStrLn "Please enter 2nd Number"
    secNumb <- getLine

    let oNumb = read oneNumb::Int
    let sNumb = read secNumb::Int

    print ("Addition = " ++ show (oNumb + sNumb))
    print ("Subtraction = " ++ show (oNumb - sNumb))
    print ("Multiplication = " ++ show (oNumb * sNumb))
    --print (fromIntegral (7 `div` 3) :: Double)
    print ("Division = " ++ show (fromIntegral 7 / fromIntegral 3))




    ------------------
    --LIST
    ------------------