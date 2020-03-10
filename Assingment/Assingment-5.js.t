/********************************************************************************************
								Inheritance
********************************************************************************************/
function Person(firstName, lastName) {
  this.FirstName = firstName || "unknown";
  this.LastName = lastName || "unknown";
}

Person.prototype.getFullName = function () {
  return this.FirstName + " " + this.LastName;
}

function Student(firstName, lastName, schoolName, grade) {
  Person.call(this, firstName, lastName);

  this.SchoolName = schoolName || "unknown";
  this.Grade = grade || 0;
}
Student.prototype = new Person();
Student.prototype.constructor = Student;

var std = new Student("James", "Bond", "XYZ", 10);

console.log(std.getFullName());
console.log(std instanceof Student);
console.log(std instanceof Person);