import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  
 Interest interest = Interest();
 //Interest compoundInterest = Interest();

 print("${interest.simpleInterest()} is the simple interest");
 print("${interest.compoundInterest()} is the compound interest");
  

}

class Interest
{
  double? principal;
  double? time;
  double? rate;


    double simpleInterest()
   {
    print("Enter the principal");
    principal = double.parse(stdin.readLineSync()!);
  
    print("Enter the time");
    time = double.parse(stdin.readLineSync()!);
  
    print("Enter the rate");
   rate = double.parse(stdin.readLineSync()!);
   
  
    return (principal! * time! * rate!)/100;
   }

    double compoundInterest()
   {
    print("Enter the principal");
    principal = double.parse(stdin.readLineSync()!);
  
    print("Enter the time");
    time = double.parse(stdin.readLineSync()!);
  
    print("Enter the rate");
   rate = double.parse(stdin.readLineSync()!);
  
   double ans1 = 1 + (rate! / 100);
    double amount =  principal! * pow(ans1, time!) ;
    print("your amount is ${amount}");

    return amount - principal!;
   }


}













