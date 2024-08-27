name::String
name = "sara"
numbOfGifts::Int
numbOfGifts = 36
classA :: [String] = ["a","b","c","d"]

data Student = Student {
        nm:: String
        , mjr:: String
        , ag:: Int
        , gpa:: Double
    } deriving Show 
    --allow us to print this data to console


--putting the data into the console. 
--adding type to the function
main :: IO() 
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
    print ("Division = " ++ show (fromIntegral oNumb / fromIntegral sNumb))

    ------------------
    --LIST
    ------------------
    let scores :: [Int] = [34,56,78] -- Index: [0,1,2]

    print(scores !! 0) -- like in c scores[0]
    print (head scores) -- scores[0]
    print (last scores) -- scores[i-1]
    print (init scores) -- will print all except the last one
    print (tail scores) -- will print all except the first one

    --------------------
    --FUNCTIONS
    --------------------
    printMultiple
    print (cube 3)
    --assigning return value to another var
    let c = cube 3
    print c

    --------------------
    --CONDITIONS IF-ELSE
    --------------------
    let isRaining = True
    travelToWork "cloudy" isRaining

    --------------------
    --CASE STATEMENTS
    --------------------

    let grade = "A"

    case grade of 
        "A" -> putStrLn "Good Work!"
        "B" -> putStrLn "Pretty good."
        "C" -> putStrLn "Can do better."
        "D" -> putStrLn "Needs Improvement."
        "F" -> putStrLn "Failed."
        _ -> putStrLn "Sorry, try again."

    --------------------
    --RECORDS (objects)
    --------------------

    let student1 = Student {
        nm = "Al",
        mjr = "cse",
        ag = 23,
        gpa = 2.0
    }
    print student1
    print (ag student1)
    print (gpa student1)
    putStrLn (mjr student1)

    ---------------------
    --LOOPS
    ---------------------
    printTo100(2)
    printStudentsOfClassA 0

--functions
sayHi :: String -> IO ()
sayHi name = putStrLn ("Hello " ++ name ++ " Calling a function.")

--print all the data inside the function
printMultiple :: IO ()
printMultiple = do
    putStrLn "user1"
    sayHi "Div"
    putStrLn "user2"

--returning values
cube :: Int -> Int
cube num = num * num * num

--conditional functions
travelToWork :: String -> Bool -> IO ()
travelToWork weather isRaining = do
    if weather == "cloudy" && isRaining
        then putStrLn "drive to work"
        else putStrLn "walk to work"

--loops
printTo100 :: Int -> IO ()
printTo100 num = do
    if num <= 100
        then do
            print num
            printTo100(num + 1)
            else putStrLn "Completed the loop"

printStudentsOfClassA :: Int -> IO ()
printStudentsOfClassA num = do 
    if(num <= 3)
        then do 
            putStrLn (classA !! num)
            printStudentsOfClassA(num + 1)
        else putStrLn "printed all students"








