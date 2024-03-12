#!/bin/awk -f


# Functions
function add(x, y) {
    print x + y
}


# BEGIN
BEGIN{
    # Variables
    name = "Paul"
    age = 20
    print "Hello world"
    # array
    arr1[0] = 1
    arr1[1] = 2

    marks["English"] = 50
    marks["maths"] = 40

    # For Loop
    for(i in arr1)
        print i
    
    for(subject in marks)
        print "Marks in " subject, marks[subject]

    for(i=1; i<10; i++)
        print i

    # while loop
    count = 10
    while(count<=15){
        print count
        count++
    }

}



# Action
{}



# END
END{
    print arr1[0], arr1[1]
    add(100, 200)
}