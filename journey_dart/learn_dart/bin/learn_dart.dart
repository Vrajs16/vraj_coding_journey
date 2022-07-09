// void main(List<String> args) {
//   var s = Musician();
//   s.canPlayPiano = true;
//   s.entertainMe();
// }

// class Musician with Musical {}

// class Musical {
//   bool canPlayPiano = false;
//   bool canCompose = false;
//   bool canConduct = false;

//   void entertainMe() {
//     if (canPlayPiano) {
//       print('Playing piano');
//     } else if (canConduct) {
//       print('Waving hands');
//     } else {
//       print('Humming to self');
//     }
//   }
// }



// // void main() {
// //   var std = Student("john", 1, "dart");
// //   std.showStdInfo();

// //   print(greetBob(Person('Kathy')));
// //   print(greetBob(Impostor()));
// // }

// // class Student {
// //   String stdName = "";
// //   int stdAge = 0;
// //   String stdRollNu = "";
// //   Student(String stdName, int stdAge, String stdRollNu) {
// //     this.stdName = stdName;
// //     this.stdAge = stdAge;
// //     this.stdRollNu = stdRollNu;
// //     print("hello");
// //   }

// //   // Class Function
// //   showStdInfo() {
// //     print("Student Name is: $stdName");
// //     print("Student Age is: $stdAge");
// //     print("Student Roll Number is: $stdRollNu");
// //   }
// // }

// // class Point {
// //   double x = 0;
// //   double y = 0;

// //   Point(double x, double y) {
// //     // See initializing formal parameters for a better way
// //     // to initialize instance variables.
// //     this.x = x;
// //     this.y = y;
// //   }
// // }

// // class Person {
// //   // In the interface, but visible only in this library.
// //   final String _name;

// //   // Not in the interface, since this is a constructor.
// //   Person(this._name);

// //   // In the interface.
// //   String greet(String who) => 'Hello, $who. I am $_name.';
// // }

// // // An implementation of the Person interface.
// // class Impostor implements Person {
// //   @override
// //   String get _name => '';

// //   @override
// //   String greet(String who) => 'Hi $who. Do you know who I am?';
// // }

// // String greetBob(Person person) => person.greet('Bob');


// // import 'package:learn_dart/learn_dart.dart' as learn_dart;
// // import 'dart:core';

// // void x() {
// //   print('x');
// // }

// // void main(List<String> arguments) {
// //   print('Hello world: ${learn_dart.calculate()}!');
// //   x();

// //   ///Blocks -> Local but can access variables outside of the brackets however can't variables created inside by access outside of block
// //   // {
// //   //   print("TEST");
// //   //   print("$count");
// //   //   count += 234;
// //   //   int test = 0;
// //   // }
// //   // print(test);
// //   // print(count);

// //   ///Variables
// //   // int count = 0;
// //   // bool isValid = true;
// //   // var msg = "Hello World";
// //   // //List and maps and symbols as well
// //   // dynamic test = "H";
// //   // print(test.hashCode);
// //   // var heartSymbol = '\u2665';
// //   // var laughSymbol = '\u{1f600}';
// //   // print(heartSymbol);
// //   // // print(laughSymbol);
// //   // int count = 3;

// //   // assert(count == 3);

// //   // const f = [];

// //   // f.add("test");
// //   // f.add("test");
// //   // f.add("test");
// //   // f.add("test");
// //   // print(f);

// //   // var x = ["asdf"];
// //   // var y = [...x];
// //   // dynamic k = 3;
// //   // var d = 34;
// //   // var b = 3;
// //   // var c = d % b;
// //   // print(c);
// //   // //as`
// //   // print(k is! String);
// //   // Object? d = 3;

// //   // print(d);
// //   // var stringNumber = "3234234";
// //   // num x = double.infinity;
// //   // if (x.isInfinite) {
// //   //   print("asdfasdf");
// //   // }
// //   // var a = int.parse(stringNumber);
// //   // String word = "HELLO WORLD";
// //   // List().map
// //   // for(var x in word){

// //   // }

// //   // print(a.runtimeType);

// //   // print(EnumofYear.january.index);

// //   //Control flow same as java

// //   // bool isValid = true;

// //   // void initial() {
// //   //   var name = 'Will Smith'; // name is a local variable created by init

// //   //   void dispName() {
// //   //     // displayName() is the inner function, a closure
// //   //     print(name); // use variable declared in the parent function
// //   //     void test() {
// //   //       print(name);
// //   //     }
// //   //   }

// //   //   dispName();
// // }

// // // enum EnumofYear {
// // //   january,
// // //   february,
// // //   march,
// // //   april,
// // //   may,
// // //   june,
// // //   july,
// // //   august,
// // //   september,
// // //   october,
// // //   november,
// // //   december,
// // // }
