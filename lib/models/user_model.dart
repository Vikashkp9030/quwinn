class UserModel{
  String? uid;
  String? fullname;
  String? phoneNumber;
  String? email;
  String? profilepic;
  String? dateOfBirth;
  String? gender;
  String? address;
  String? state;
  UserModel({this.uid,this.fullname,this.phoneNumber,this.email,this.profilepic,this.dateOfBirth,this.gender,this.address,this.state});

  UserModel.fromMap(Map<String,dynamic> map){
    uid=map['uid'];
    fullname=map['fullname'];
    phoneNumber = map['phoneNumber'];
    email=map['email'];
    profilepic=map['profilepic'];
    dateOfBirth=map['dateOfBirth'];
    gender=map['gender'];
    address=map['address'];
    state=map['state'];


  }

  Map<String,dynamic> toMap(){
    return {
      'uid':uid,
      'fullname':fullname,
      'phoneNumber':phoneNumber,
      'email':email,
      'profilepic':profilepic,
      'dateOfBirth':dateOfBirth,
      'gender':gender,
      'address':address,
      'state':state,
    };
  }
}