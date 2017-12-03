//: Playground - noun: a place where people can play

import UIKit

// Hard Way
var emp1Salary = 39000.0
var emp2Salary = 42500.0
var emp3Salary = 59000.0

/* Everyone received a 10% raise but this can
 be done easier, right?! Remember D-R-Y!!!
 Don't Repeat Yourself */
emp1Salary = emp1Salary + (emp1Salary * 0.10)
emp2Salary = emp2Salary + (emp2Salary * 0.10)
emp3Salary = emp3Salary + (emp3Salary * 0.10)

// Better Way
var salaries = [39000.0, 42500.0, 59000.0, 36000.0, 45500.0, 86000.0]
salaries[0] = salaries[0] + (salaries[0] * 0.10)
salaries[1] = salaries[1] + (salaries[1] * 0.10)
salaries[2] = salaries[2] + (salaries[2] * 0.10)

// Even Better Way - While Loop

var index = 0
repeat {
    salaries[index] = salaries[index] + (salaries[index] * 0.10)
    index += 1
} while (index < salaries.count)

// Even More Better Way - For in Loop
for i in 0..<salaries.count {
    salaries[i] = salaries[i] + (salaries[i] * 0.10)
}

// For each Loop
for salary in salaries {
    print("Salary: \(salary)")
}
