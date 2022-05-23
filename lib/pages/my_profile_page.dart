import 'dart:developer';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  File? imageFile;
  String? imageUrl;

  String currentUserName = '';
  String currentUserPicURL = '';
  String currentUserPhoneNumber = '';
  String currentUserEmail = '';
  String currentUserDateofBirth = '';
  String currentUserGender = '';
  String currentUserAddress = '';
  String currentUserState = '';
  String key = '';

  void selectImage(ImageSource source) async {
    XFile? pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      croImage(pickedFile);
    }
  }

  void croImage(XFile file) async {
    File? cropedImage = await ImageCropper().cropImage(
      sourcePath: file.path,
      aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      compressQuality: 15,
    );
    if (cropedImage != null) {
      imageFile = cropedImage;
      UploadTask uploadTask = FirebaseStorage.instance
          .ref('profileable')
          .child(FirebaseAuth.instance.currentUser?.uid as String)
          .putFile(imageFile!);
      TaskSnapshot snapshot = await uploadTask;

      imageUrl = await snapshot.ref.getDownloadURL();
    }
  }

  void showPhotoOptions() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Upload Profile Picture!'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    selectImage(ImageSource.gallery);
                  },
                  leading: const Icon(Icons.photo_album),
                  title: const Text('Select from gallery'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    selectImage(ImageSource.camera);
                  },
                  leading: const Icon(Icons.camera_alt),
                  title: const Text('Take a Photo'),
                ),
              ],
            ),
          );
        });
  }

  _fetch() async {
    final fbCurrentUser = FirebaseAuth.instance.currentUser;
    if (fbCurrentUser != null) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(fbCurrentUser.uid)
          .get()
          .then((ds) {
        currentUserName = ds.get('fullname');
        currentUserPicURL = ds.get('profilepic');
        currentUserPhoneNumber = ds.get('phoneNumber');
        currentUserAddress = ds.get('address');
        currentUserDateofBirth = ds.get('dateOfBirth');
        currentUserEmail = ds.get('email');
        currentUserState = ds.get('state');
        currentUserGender = ds.get('gender');
        imageUrl = currentUserPicURL;
        key = fbCurrentUser.uid;
      }).catchError((e) {
        log(e);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightBlue[100],
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: FutureBuilder(
                future: _fetch(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState != ConnectionState.done) {
                    return Container(
                      height: 200,
                      width: 200,
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          CircularProgressIndicator(),
                          SizedBox(
                            height: 30,
                          ),
                          Text('Waiting'),
                        ],
                      ),
                    );
                  }

                  return Column(
                    children: [
                      Container(
                        color: Colors.blue[50],
                        height: 323,
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 220,
                              color: Colors.lightBlue[700],
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    CircleAvatar(
                                      radius: 40,
                                      backgroundColor: Colors.lightBlue[50],
                                      backgroundImage:
                                          NetworkImage(currentUserPicURL),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '              ' + currentUserName,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              updateProfile(
                                                  currentUserPicURL,
                                                  imageUrl!,
                                                  currentUserName,
                                                  currentUserPhoneNumber,
                                                  context,
                                                  key);
                                            },
                                            icon: const Icon(Icons.edit_note))
                                      ],
                                    ),
                                    Text(
                                      currentUserPhoneNumber,
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              margin: const EdgeInsets.only(
                                left: 15,
                                right: 15,
                                top: 180,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: Stack(
                                              children: [
                                                CircleAvatar(
                                                  radius: 23,
                                                  backgroundColor:
                                                      Colors.blue[100],
                                                  child: const Icon(
                                                    Icons.phone_android,
                                                    size: 25,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                IconButton(
                                                  padding: const EdgeInsets.only(
                                                      top: 27, left: 27),
                                                  icon: Icon(
                                                    Icons.verified,
                                                    color:
                                                        Colors.greenAccent[700],
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            'MOBILE',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          InkWell(
                                            child: Stack(
                                              children: [
                                                CircleAvatar(
                                                  radius: 23,
                                                  backgroundColor:
                                                      Colors.blue[100],
                                                  child: const Icon(
                                                    Icons.mail,
                                                    size: 25,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                IconButton(
                                                  padding: const EdgeInsets.only(
                                                      top: 27, left: 27),
                                                  icon: Icon(
                                                    Icons.verified,
                                                    color:
                                                        Colors.greenAccent[700],
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            'MAIL',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Stack(
                                            children: [
                                              CircleAvatar(
                                                radius: 23,
                                                backgroundColor:
                                                    Colors.blue[100],
                                                child: const Icon(
                                                  Icons.accessibility_sharp,
                                                  size: 25,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              IconButton(
                                                padding: const EdgeInsets.only(
                                                    top: 27, left: 27),
                                                icon: Icon(
                                                  Icons.verified,
                                                  color:
                                                      Colors.greenAccent[700],
                                                ),
                                                onPressed: panVerification,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            'PAN',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Stack(
                                            children: [
                                              CircleAvatar(
                                                radius: 23,
                                                backgroundColor:
                                                    Colors.blue[100],
                                                child: const Icon(
                                                  Icons
                                                      .account_balance_outlined,
                                                  size: 25,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              IconButton(
                                                padding: const EdgeInsets.only(
                                                    top: 27, left: 27),
                                                icon: Icon(
                                                  Icons.verified,
                                                  color:
                                                      Colors.greenAccent[700],
                                                ),
                                                onPressed: bankVerification,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            'BANK',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                              'Verify your details now to enjoy seamless'),
                                          Text('withdrawal'),
                                        ],
                                      ),
                                      ElevatedButton(
                                          onPressed: () {},
                                          child: const Text('VERIFY'),
                                          style: ButtonStyle(
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                          ))))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 27,
                        color: Colors.blue[100],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Level 22',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 97,
                        margin: const EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Complete the following tasks.'),
                                Row(
                                  children: const [
                                    Text('Level 23'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(Icons.info_outline),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: const [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.lightBlue,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.rectangle,
                                      color: Colors.lightBlue,
                                      size: 3,
                                    ),
                                    Icon(
                                      Icons.rectangle,
                                      color: Colors.lightBlue,
                                      size: 3,
                                    ),
                                    Icon(
                                      Icons.rectangle,
                                      color: Colors.lightBlue,
                                      size: 3,
                                    ),
                                    Icon(
                                      Icons.rectangle,
                                      color: Colors.lightBlue,
                                      size: 3,
                                    ),
                                    Icon(
                                      Icons.rectangle,
                                      color: Colors.lightBlue,
                                      size: 3,
                                    ),
                                    Icon(
                                      Icons.rectangle,
                                      color: Colors.lightBlue,
                                      size: 3,
                                    ),
                                    Icon(
                                      Icons.circle,
                                      color: Colors.lightBlue,
                                      size: 12,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: const [
                                    Text(
                                        'Play 3 more paid contest to level up'),
                                    SizedBox(
                                      height: 14,
                                    ),
                                    Text(
                                        ' join paid contest worth 1.50 to level.'),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 27,
                        color: Colors.blue[100],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Primary Information',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 120,
                        margin: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const SizedBox(),
                                const Text('Mobile'),
                                Text('+' + currentUserPhoneNumber),
                                const Text('Email'),
                                Text(currentUserEmail),
                                const SizedBox(),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      updatePrimaryInformation(
                                          currentUserPhoneNumber,
                                          currentUserEmail,
                                          context,
                                          key);
                                    },
                                    icon: const Icon(Icons.edit_note)),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 27,
                        color: Colors.blue[100],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Basic Information',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 150,
                        width: double.infinity,
                        margin: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const SizedBox(),
                                const Text('Date of Birth'),
                                Text(currentUserDateofBirth),
                                const Text('Address'),
                                Text(currentUserAddress),
                                const SizedBox(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const SizedBox(),
                                    const Text('Gender'),
                                    Text(currentUserGender),
                                    const Text('State'),
                                    Text(currentUserState),
                                    const SizedBox(),
                                  ],
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          updateBasicInformation(
                                              currentUserDateofBirth,
                                              currentUserGender,
                                              currentUserAddress,
                                              currentUserState,
                                              context,
                                              key);
                                        },
                                        icon: const Icon(Icons.edit_note)),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }

  Future<void> updateProfile(
      String profilepic,
      String imageUrl,
      String fullname,
      String phoneNumber,
      BuildContext context,
      String key) async {
    var fullnameController = TextEditingController(text: fullname);
    var phoneNumberController = TextEditingController(text: phoneNumber);

    return showDialog(
        context: context,
        builder: (BuildContext contest) {
          return AlertDialog(
            backgroundColor: Colors.blue[50],
            title: const Text('Update profile'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CupertinoButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: showPhotoOptions,
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: imageUrl == currentUserPicURL
                        ? NetworkImage(currentUserPicURL)
                        : NetworkImage(imageUrl),
                  ),
                ),
                TextFormField(
                  controller: fullnameController,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'Full Name'),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: phoneNumberController,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Phone Number'),
                ),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    String str = imageUrl == currentUserPicURL
                        ? currentUserPicURL
                        : imageUrl;
                    setState(() {
                      updateProfileData(str, fullnameController.text,
                          phoneNumberController.text, key);
                    });
                    Navigator.pop(context);
                  },
                  child: const Text('Update')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel')),
            ],
          );
        });
  }

  Future<void> updatePrimaryInformation(
      String phoneNumber, String email, BuildContext context, String key) {
    var phoneNumberController = TextEditingController(text: phoneNumber);
    var emailController = TextEditingController(text: email);
    return showDialog(
        context: context,
        builder: (BuildContext contest) {
          return AlertDialog(
            backgroundColor: Colors.blue[50],
            title: const Text('Update Primary Information'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: phoneNumberController,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Phone Number'),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'Email'),
                ),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      updatePrimaryData(phoneNumberController.text,
                          emailController.text, key);
                    });
                    Navigator.pop(context);
                  },
                  child: const Text('Update')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel')),
            ],
          );
        });
  }

  Future<void> updateBasicInformation(String dateOfBirth, String gender,
      String address, String state, BuildContext context, String key) {
    var dateOfBirthController = TextEditingController(text: dateOfBirth);
    var genderController = TextEditingController(text: gender);
    var addressController = TextEditingController(text: address);
    var stateController = TextEditingController(text: state);
    return showDialog(
        context: context,
        builder: (BuildContext contest) {
          return AlertDialog(
            backgroundColor: Colors.blue[50],
            title: const Text('Update Basic Information'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: dateOfBirthController,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Date of Birth'),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: genderController,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'Gender'),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: addressController,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'Address'),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: stateController,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'State'),
                ),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      updateBasicData(
                          dateOfBirthController.text,
                          genderController.text,
                          addressController.text,
                          stateController.text,
                          key);
                    });
                    Navigator.pop(context);
                  },
                  child: const Text('Update')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel')),
            ],
          );
        });
  }

  panVerification() {
    var panNumberController = TextEditingController();
   // File panPic;
    return showDialog(
        context: context,
        builder: (BuildContext contest) {
          return AlertDialog(
            backgroundColor: Colors.blue[50],
            title: const Text('PAN Card verification'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: panNumberController,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'PAN Number'),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Text('Attach PAN'),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined))
                  ],
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    //Navigator.pop(context);
                  },
                  child: const Text('Send')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel')),
            ],
          );
        });
  }

  bankVerification() {
    var accountHolderNameController = TextEditingController();
    var accountNumberController = TextEditingController();
    var ifscCodeController = TextEditingController();
    var branchController = TextEditingController();
    var bankNameController = TextEditingController();
    return showDialog(
        context: context,
        builder: (BuildContext contest) {
          return AlertDialog(
            backgroundColor: Colors.blue[50],
            title: const Text('Bank account verification'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: accountHolderNameController,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Account holder name'),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: bankNameController,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Bank name'),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: accountNumberController,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'A/C NO'),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: ifscCodeController,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'IFSC Code'),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: branchController,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'Branch'),
                ),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    //Navigator.pop(context);
                  },
                  child: const Text('send')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel')),
            ],
          );
        });
  }

  void updateProfileData(
      String profilepic, String fullname, String phoneNumber, var key) async {
    Map<String, String> x = {
      'profilepic': profilepic,
      'fullname': fullname,
      'phoneNumber': phoneNumber
    };
    await FirebaseFirestore.instance.collection('users').doc(key).update(x);
  }

  void updatePrimaryData(String phoneNumber, String email, var key) async {
    Map<String, String> x = {'phoneNumber': phoneNumber, 'email': email};
    await FirebaseFirestore.instance.collection('users').doc(key).update(x);
  }

  void updateBasicData(String dateOfBirth, String gender, String address,
      String state, var key) async {
    Map<String, String> x = {
      'dateOfBirth': dateOfBirth,
      'gender': gender,
      'address': address,
      'state': state
    };
    await FirebaseFirestore.instance.collection('users').doc(key).update(x);
  }
}
