import 'dart:io';

void main(){

  int choice;
  String? title;
  dynamic balance = 500;

  do{

    print('\nEnter the number: \n 1.For Account Creation \n 2.Credit \n 3.Debit \n 4.Balance Check \n 5.Account Detail \n 6.Exit\n ');
    String? choiceInStr = stdin.readLineSync();
    choice = int.parse(choiceInStr!);

    switch(choice)
    {

      case 1:
      print('Create Your Account\n');
      print('Enter your Account title');
      title = stdin.readLineSync();
      break;

      case 2:
      print('Credit\n');
      print('Enter the amount to Credit.');
      int? bal = int.parse(stdin.readLineSync()!);
      balance = bal+balance;
      break;

      case 3:
      print('Debit\n');
      print('Enter the amount to Debit.');
      int? bal = int.parse(stdin.readLineSync()!);
      if(bal>balance){
        print('Low Balance');
      }
      else{
        balance = balance-bal;
      }
      break;

      case 4:
      print('Balance Check\n');
      print('Account Balance: $balance \n');
      break;

      case 5:
      print('Account Detail\n');
      print('Title: $title');
      print('Balance: $balance');
      break;

      case 6:
      break;

      default:
      print('Please Choose number between 1-5');
      break;

    }

  }

  while(choice!= 6);
    
  
 



}
