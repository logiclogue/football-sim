import Test.HUnit

main :: IO ()
main = assertEqual "True is true" True True

anotherTest :: IO ()
anotherTest = assertEqual "42 is 42" 42 41
