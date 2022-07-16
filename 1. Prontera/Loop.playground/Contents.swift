import Foundation


//: # Loops
//: ### For in Loops
var myFirstInt: Int = 0

for i in 1...5 {
    myFirstInt += i
    
    print(myFirstInt)
}


for i in 1...5 {
    myFirstInt += i
    
    print("myFirstInt = \(myFirstInt) at iteration \(i)")
}

for i in 1...100 {
    if i % 3 == 0 {
        print(i)
    }
}

for i in 1...100 where i % 3 == 0 {
    print(i)
}



// The where clause provides a logical test that must be met to execute the loop’s code.
// If the condition established by the where clause is not met, then the loop’s code is not run
//: ### While Loops
var j = 1

while j < 6 {
    myFirstInt += 1
    
    print(myFirstInt)
    j += 1
}

//: ## Challenge
//: ### Create a FIZZ BUZZ game, from the range 1 through 10 playing Fizz Buzz should yield: "1, 2, FIZZ, 4, BUZZ, FIZZ, 7, 8, FIZZ, BUZZ.
//: ### Bonus Point: Use if else conditional and switch statement. When using the switch statement, make sure to match against a tuple in its various cases.


