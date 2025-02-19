import "dart:io";
import "dart:math";

void main(List<String> args) {
  NumberGuessing game = NumberGuessing();
  game.Start();
}

class NumberGuessing {
  int RandomNumber = -1;
  int TryCount = 0;

  void Start() {
    Greeting();
    ComputerGuess();
    UserInput();
  }

  void Greeting() {
    print("Welcome to our number guessing game!");
    print("-------------------------------------");
    print(
        "There are some rules that you need to follow while playing the game I created:");
    print(
        "The first rule is thet you need to guess a number between 1 and 100");
    print(
        "The second one that you tries are counted, at the end of the game you will be notified about all of them!");
    print("GOOD LUCK!");
  }

  void ComputerGuess() {
    RandomNumber = Random().nextInt(100) + 1;
    print(RandomNumber);
  }

  void UserInput() {
    stdout.write("Please enter a number to find the random value: ");
    String userInput = stdin.readLineSync() ?? "";
    int Guess = int.tryParse(userInput) ?? -1;
    TryCount++;
    if (Guess == RandomNumber) {
      print("Congratulations! You have found the number in $TryCount tries!");
    } else if (Guess > RandomNumber) {
      print("The number you have entered is greater than the random number!");
      UserInput();
    } else {
      print("The number you have entered is smaller than the random number!");
      UserInput();
    }
  }
}
