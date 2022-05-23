


import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:quwinn/pages/user_home_page.dart';

import '../models/ui_helper.dart';
import '../models/user_model.dart';



class CompleteProfilePage extends StatefulWidget {
  const CompleteProfilePage({Key? key}) : super(key: key);


  @override
  State<CompleteProfilePage> createState() => _CompleteProfilePageState();
}

class _CompleteProfilePageState extends State<CompleteProfilePage> {
  File? imageFile;
  User? firebaseuser = FirebaseAuth.instance.currentUser;
  UserModel userModel = UserModel(
    uid: FirebaseAuth.instance.currentUser!.uid,
    email: '',
    fullname: '',
    profilepic: '',
    phoneNumber:'',
    dateOfBirth: '',
    gender: '',
    address: '',
    state: '',
  );

  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController stateController = TextEditingController();

  void selectImage(ImageSource source) async{
    XFile? pickedFile = await ImagePicker().pickImage(source: source);
    if(pickedFile!=null){
      croImage(pickedFile);
    }
  }
  void croImage(XFile file) async{
    File? cropedImage = await ImageCropper().cropImage(
      sourcePath: file.path,
      aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      compressQuality: 15,
    );
    if(cropedImage!=null){
      setState(() {
        imageFile = cropedImage;
      });
    }
  }

  void showPhotoOptions(){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: const Text('Upload Profile Picture!'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              onTap: (){
                Navigator.pop(context);
                selectImage(ImageSource.gallery);
              },
              leading: const Icon(Icons.photo_album),
              title: const Text('Select from gallery'),
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
                selectImage(ImageSource.camera);
              },
              leading: const Icon(Icons.camera_alt),
              title: const Text('Take a Photo'),
            ),
          ],
        ),
      );
    }
    );
  }

  void checkValues(){
    String fullName = fullNameController.text.trim();
    String phoneNumber = phoneNumberController.text.trim();
    String email =emailController.text.trim();
    String dateOfBirth = dateOfBirthController.text.trim();
    String gender = genderController.text.trim();
    String address = addressController.text.trim();
    String state = stateController.text.trim();

    if(fullName =='' || imageFile==null || phoneNumber =='' || email == '' || dateOfBirth == '' || gender == '' || address=='' || state == ''){
      UIHelper.showAlertDialod(context, 'Incomplete Data','please fill all the fields and upload the profile picture');

    }else{
      uploadData();
    }
  }
  void uploadData() async{
    UIHelper.showLoadingDialog(context, 'Uploading image...');

    UploadTask uploadTask = FirebaseStorage.instance.ref('profilepictures').child(userModel.uid.toString()).putFile(imageFile!);
    TaskSnapshot snapshot = await uploadTask;


    String? imageUrl = await snapshot.ref.getDownloadURL();
    String? fullName = fullNameController.text.trim();
    String? phoneNumber = phoneNumberController.text.trim();
    String? email =emailController.text.trim();
    String? dateOfBirth = dateOfBirthController.text.trim();
    String? gender = genderController.text.trim();
    String? address = addressController.text.trim();
    String? state = stateController.text.trim();

    userModel.fullname =fullName;
    userModel.profilepic=imageUrl;
    userModel.phoneNumber = phoneNumber;
    userModel.email = email;
    userModel.dateOfBirth = dateOfBirth;
    userModel.gender = gender;
    userModel.address = address;
    userModel.state = state;

    await FirebaseFirestore.instance.collection('users').
    doc(userModel.uid).set(userModel.toMap()).
    then((value){
      log('Data Uploaded!');
      Navigator.popUntil(context, (route) => route.isFirst);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return const UserHomePage();
      }));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,//stop back option
        title: const Text('Complete Profile'),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.blue[200],

          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: ListView(
            children: [
              const SizedBox(height: 20,),
              CupertinoButton(

                padding: const EdgeInsets.all(0),
                onPressed: showPhotoOptions,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage:imageFile!=null? FileImage(imageFile!):null,
                  child:imageFile==null? const Icon(Icons.person,size: 50,):null,

                ),
              ),

              const SizedBox(height: 20,),
              TextField(
                controller: fullNameController,
                decoration: InputDecoration(

                  labelText: 'Full Name',
                  hintText: 'enter the name',
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),

                  ),
                ),
              ),
              const SizedBox(height: 10,),
              TextField(
                controller: phoneNumberController,
                keyboardType: TextInputType.number,
                maxLength: 10,
                decoration: InputDecoration(

                  labelText: 'Phone Number',
                  hintText: 'enter the phone Number',
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),

                  ),
                ),
              ),
              const SizedBox(height: 10,),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(

                  labelText: 'Email',
                  hintText: 'enter the email',
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),

                  ),
                ),
              ),
              const SizedBox(height: 10,),
              TextField(
                controller: dateOfBirthController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(

                  labelText: 'Date of Birth',
                  hintText: 'dd/mm/yy',
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),

                  ),
                ),
              ),
              const SizedBox(height: 10,),
              TextField(
                controller: genderController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(

                  labelText: 'Gender',
                  hintText: 'enter your gender',
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),

                  ),
                ),
              ),
              const SizedBox(height: 10,),
              TextField(
                controller: addressController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(

                  labelText: 'Address',
                  hintText: 'enter your address',
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),

                  ),
                ),
              ),
              const SizedBox(height: 10,),
              TextField(
                controller: stateController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(

                  labelText: 'State',
                  hintText: 'enter the state',
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),

                  ),
                ),
              ),

              const SizedBox(height: 60,),

              CupertinoButton(
                onPressed:checkValues,
                color: Theme.of(context).colorScheme.secondary,
                child: const Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
