import Test.HUnit
import Lib
import Team

main :: IO Counts
main = runTestTT tests

tests :: Test
tests = TestList [
    TestLabel
        "Team"
        (TestList [
            
        ])
    TestLabel
        "test1"
        (TestCase (assertEqual "42 is 42" 42 (add42 0))),
    TestLabel
        "test2"
        (TestCase (assertEqual "True is true" True True))]
