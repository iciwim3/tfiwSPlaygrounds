//: Playground - noun: a place where people can play

import UIKit

var employee1Salary = 45000.0
var employee2Salary = 50000.0
var employee3Salary = 63000.0
var employee4Salary = 65000.0

var employeeSalaries = [employee1Salary, employee2Salary, employee3Salary, employee4Salary]
employeeSalaries[2] = 65000.0
employeeSalaries[2]
print(employeeSalaries.count)

employeeSalaries.append(66000.0)
employeeSalaries.remove(at: 1)
print(employeeSalaries[1])

var students = [String]()
print(students.count)

students.append("Romni")
students.append("Keana")
students.append("Kaira")
students.append("Kaden")
students.append("Kamri")
students.append("Franchesca")

print(students)

students.count
students.remove(at: 5)

print(students)
