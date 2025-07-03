import 'dart:io';

void main()
{
   print("Enter your Name : ");
   String? name = stdin.readLineSync()!;
   Display_Screen(name);

}

void Display_Screen( String name)
{
    print("Welcome ${name},Enjoy The college Festival....");
}