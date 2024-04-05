import 'package:flutter/widgets.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

dynamic database;

class Employee{
  final String empName;
  final int empId;

  final double empSal;

  Employee({
    required this.empId,
    required this.empName,
    required this.empSal
  });

  Map<String,dynamic> employeeMap(){
    return {
      'empId':empId,
      'empName':empName,
      'empSal':empSal,    
    };
  }
}
//insert into table
Future insertEmployeeData(Employee emp)async{
  final localDB=await database;

  await localDB.insert(
    "Employee",
    emp.employeeMap(),
    conflictAlgorithm:ConflictAlgorithm.replace
  );
}

//get data from table

Future<List<Map<String,dynamic>>> getEmployeeData()async{
  final localDB=await database;

  List<Map<String,dynamic>> empList=await localDB.query('Employee');

  return  empList;
}
//update data from table

void updateEmployeeData(Employee emp)async{
  final localDB=await database;
  await localDB.update(
    "Employee",
    emp.employeeMap(),
    where:'empId=?',
    whereArgs: [emp.empId],
  );


}

//delete from table
Future deleteEmployeeData(int id) async{
  final localDB=await database;

  await localDB.delete(
    'Employee',
    where:'empId=?',
    whereArgs: [id],
  );
}
void main()async{
  WidgetsFlutterBinding.ensureInitialized();

  database =openDatabase(
    join(await getDatabasesPath(),"EmployeeDB.db"),
    version: 1,
    onCreate: ((db, version) async{
      await db.execute('''create table Employee(
        empId INT primary key,
        empName TEXT,
        empSal REAL
      )''');
    })
  );
  Employee emp1=Employee(empId: 101, empName: "Ankita", empSal: 2.3);

  Employee emp2=Employee(empId: 102, empName: "Rahul", empSal: 2.8);
  Employee emp3=Employee(empId: 103, empName: "Teja", empSal: 1.5);
  Employee emp4=Employee(empId: 103, empName: "Nehal", empSal: 2.8);



  insertEmployeeData(emp1);
  insertEmployeeData(emp2);
  insertEmployeeData(emp3);
  insertEmployeeData(emp4);



  List<Map<String,dynamic>> empList=await getEmployeeData();
  for(int i=0;i<empList.length;i++){
    print(empList[i]);
  }
  updateEmployeeData(Employee(empId: 103, empName: "Neha", empSal: 2.8));
  print("After Updating");
  empList=await getEmployeeData();
  for(int i=0;i<empList.length;i++){
    print(empList[i]);
  }

  deleteEmployeeData(103);
  print("After Deleting");
  empList=await getEmployeeData();
  for(int i=0;i<empList.length;i++){
    print(empList[i]);
  }
}