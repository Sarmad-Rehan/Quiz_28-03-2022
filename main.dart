// Program to Create Bank Account.
// Optimized Code.

import 'dart:io';

void main(List<String> args) {
  int? choice;
  String? inputAccountTitle;
  double balance = 0.0;
  String? inputAmount;

  do {
    print("[1] Create Account");
    print("[2] Credit");
    print("[3] Debit");
    print("[4] Balance Check");
    print("[5] Account Details");
    print("[6] Exit");

    stdout.write("Enter Your Choice: ");
    String? inputChoice = stdin.readLineSync();
    choice = int.tryParse(inputChoice!);

    switch (choice) {
      case 1:
        stdout.write("Enter Account Title: ");
        inputAccountTitle = stdin.readLineSync();
        balance = 1000.0;
        print("Account Created with Following Details");
        print("Account Title: $inputAccountTitle");
        print("Account Title: $balance");
        break;

      case 2:
        stdout.write("Enter Amount you want to credit: ");
        inputAmount = stdin.readLineSync();
        if (double.tryParse(inputAmount!)! <= 0) {
          print("Can't insert Negative amount");
        } else {
          balance = balance + double.tryParse(inputAmount)!;
          print(
              "Your Amount has been credited in your Account \nYour Balance: $balance");
        }
        break;

      case 3:
        stdout.write("Enter Amount you want to debit: ");
        inputAmount = stdin.readLineSync();
        if (double.tryParse(inputAmount!)! > balance) {
          print(
              "Your Balance is low can't debit the Amount Provided.\nBalance: $balance");
        } else {
          balance = balance - double.tryParse(inputAmount)!;
          print(
              "Your Amount has been debited from your account \nYour Remaining Balance: $balance");
        }
        break;

      case 4:
        print("Your Balance: $balance");
        break;

      case 5:
        print("Account Title: $inputAccountTitle");
        print("Balance: $balance");
        break;

      case 6:
        print("Thank You for using Bank Management System");
        break;

      default:
        print("Invalid Choice");
        break;
    }
  } while (choice != 6);
}
