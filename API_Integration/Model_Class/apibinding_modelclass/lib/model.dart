class EmployeeModel{
  String? status;
  List<Data>? data;
  String? message;

  EmployeeModel(Map<String, dynamic> json ){
    status=json["status"];
    message=json["message"];

    data=[];
    if(json["data"]!=null){
      json["data"].forEach((mapObject){
        Data dataObj=Data(mapObject);
        data!.add(dataObj);
      });
    }
  }
  
}

class Data {
  int? empId;
  String? empName;
  int? empSal;
  int? empAge;
  String? profileImage;

  Data(Map<String, dynamic> json ){
    empId = json['id'];
    empName = json['employee_name'];
    empSal = json['employee_salary'];
    empAge = json['employee_age'];
    profileImage = json['profile_image'];
  }

}