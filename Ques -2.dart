import 'dart:developer';
import 'dart:ffi';
import 'dart:io';


class Student{

  int?Student_id ;
  String?Name;
  late List<int>Marks;
  
  Student(int studentid,String stuName,List<int> stuMarks)
  {
      this.Student_id = studentid;
      this.Name = stuName;
      this.Marks = stuMarks;
}

void calculate_Marks()
{
   int total = 0;
   for(int num in Marks) total+=num;
   double avg = total/Marks.length;
   if(avg >= 90)
   {
    print("Grade A");
   }
   else if(avg >=75 && avg <=89)
   {
     print("Grade B");
   }
   else
   {
     print("Grade c");
   }
}

 void display_Marks()
 {
   print("Student Details:");
   print("Student Name :${Name} Student ID :${Student_id}");
   for(int i=0;i<Marks.length;i++)
   {
      print("Marks${i+1} :${Marks[i]}");
   }
  
 }

}

void main()
{
   print("Enter student id:");
   int id = int.parse(stdin.readLineSync()!);
   print("Enter Name of the student:");
   String name = stdin.readLineSync()!;
   List<int> Marks = [55,76,89,77,55];
   Student s =  Student(id,name,Marks);
   s.display_Marks();
   s.calculate_Marks();
   

}