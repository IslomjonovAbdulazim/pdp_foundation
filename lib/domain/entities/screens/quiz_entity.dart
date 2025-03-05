class QuizEntity {
  final int id;
  final String question;
  final String codeSnippet;
  final String language;
  final List<String> options;
  final String correct;

  QuizEntity({
    required this.id,
    required this.question,
    required this.codeSnippet,
    required this.language,
    required this.options,
    required this.correct,
  });
}

List<QuizEntity> quizzes = [
  QuizEntity(
      id: 1,
      question: "What will be the output of the following Python code?",
      codeSnippet: """
def func(x, y=[]):
    y.append(x)
    return y

print(func(1))
print(func(2))
""",
      language: "Python",
      options: ["[1] [2]", "[1] [1, 2]", "[1, 2] [1, 2]", "[1] [1]"],
      correct: "[1, 2] [1, 2]"),
  QuizEntity(
      id: 2,
      question: "What does this JavaScript code print?",
      codeSnippet: """
console.log(0.1 + 0.2 == 0.3);
""",
      language: "JavaScript",
      options: ["true", "false", "undefined", "NaN"],
      correct: "false"),
  QuizEntity(
      id: 3,
      question: "What will this C++ code output?",
      codeSnippet: """
#include <iostream>
using namespace std;
int main() {
    int a = 10;
    int &b = a;
    b = 20;
    cout << a;
    return 0;
}
""",
      language: "C++",
      options: ["10", "20", "Compiler Error", "Garbage Value"],
      correct: "20"),
  QuizEntity(
      id: 4,
      question: "What is the output of this Dart snippet?",
      codeSnippet: """
void main() {
  String text = 'Dart';
  print(text[1]);
}
""",
      language: "Dart",
      options: ["D", "a", "r", "t"],
      correct: "a"),
  QuizEntity(
      id: 5,
      question: "Which keyword is used to inherit a class in Java?",
      codeSnippet: "",
      language: "Java",
      options: ["extends", "implements", "inherits", "super"],
      correct: "extends"),
  QuizEntity(
      id: 6,
      question: "What is the output of this TypeScript snippet?",
      codeSnippet: """
let x: unknown = "Hello";
console.log((x as string).toUpperCase());
""",
      language: "TypeScript",
      options: ["hello", "HELLO", "Compiler Error", "undefined"],
      correct: "HELLO"),
  QuizEntity(
      id: 7,
      question: "What does this HTML + CSS code do?",
      codeSnippet: """
<style>
  .box {
    width: 100px;
    height: 100px;
    background-color: red;
    transition: background-color 0.5s;
  }
  .box:hover {
    background-color: blue;
  }
</style>
<div class="box"></div>
""",
      language: "HTML/CSS",
      options: [
        "Changes color to green on hover",
        "Changes color to blue on hover",
        "Changes width on hover",
        "Nothing happens"
      ],
      correct: "Changes color to blue on hover"),
  QuizEntity(
      id: 8,
      question: "What will be printed by the following Rust code?",
      codeSnippet: """
fn main() {
    let x = 5;
    let y = x;
    println!("{}", x);
}
""",
      language: "Rust",
      options: ["5", "Compiler Error", "Garbage Value", "Runtime Error"],
      correct: "5"),
];
