import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

// TODO: Check if some variable has to be passed to a widget from here and the receiveing widget is a
// stateful widget and then how can we pass the private class of a stateful widget a variable
// is this an anti-pattern, what are the other ways or we generally don't pass any values from
// the main.dart file level

// if only single line of code in a function, can be written as arrow function
void main() => runApp(const Quiz());
// void main() {
//   runApp(const Quiz());
// }
