import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_daily_task/Google%20Login%20Page/username.dart';

ImagePicker imagePicker = ImagePicker();
File? fileImage;
TextEditingController txtsurname = TextEditingController();
TextEditingController txtname = TextEditingController();
TextEditingController txtnumber = TextEditingController();

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Regstration Form',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 55,
                  backgroundImage:
                      (fileImage != null) ? FileImage(fileImage!) : null,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () async {
                        XFile? xfile = await imagePicker.pickImage(
                            source: ImageSource.camera);
                        setState(() {
                          fileImage = File(xfile!.path);
                        });
                      },
                      icon: Icon(
                        Icons.camera_alt,
                        size: 30,
                        color: Colors.blue,
                      )),
                  IconButton(
                      onPressed: () async {
                        XFile? xfile = await imagePicker.pickImage(
                            source: ImageSource.gallery);
                        setState(() {
                          fileImage = File(xfile!.path);
                        });
                      },
                      icon: Icon(
                        Icons.image,
                        size: 30,
                        color: Colors.blue,
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 10, left: 10),
                child: TextFormField(
                  controller: txtsurname,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'value must be requried';
                    }
                    // if (!RegExp(r'\d').hasMatch(value))
                    if (RegExp(r'\d').hasMatch(value)) {
                      return 'Only Entre Text';
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text(
                      'SurName',
                      style: TextStyle(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2, color: Colors.blue)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 10, left: 10),
                child: TextFormField(
                  controller: txtname,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'value must be requried';
                    }
                    // if (!RegExp(r'\d').hasMatch(value))
                    if (RegExp(r'\d').hasMatch(value)) {
                      return 'Only Entre Text';
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text(
                      'Name',
                      style: TextStyle(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2, color: Colors.blue)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 10, left: 10),
                child: TextFormField(
                  controller: txtnumber,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'value must be requried';
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text(
                      'Mobile Number',
                      style: TextStyle(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2, color: Colors.blue)),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13.0),
                child: Text(
                  'Gender',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Radio(
                    value: 'Male',
                    groupValue: Gender,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        Gender = value!;
                      });
                    },
                  ),
                  Text(
                    'Male',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  Radio(
                    value: 'Female',
                    groupValue: Gender,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        Gender = value!;
                      });
                    },
                  ),
                  Text(
                    'Female',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  Radio(
                    value: 'Other',
                    groupValue: Gender,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        Gender = value!;
                      });
                    },
                  ),
                  Text(
                    'Other',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Text(
                  'Hobby',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: hobby[0],
                    onChanged: (value) {
                      setState(() {
                        hobby[0] = value!;
                        if(value == true)
                        {
                          check.add('Reading');
                        }
                        else
                        {
                          check.remove('Reading');
                        }

                      });
                    },
                  ),
                  Text('Reading'),
                  Checkbox(
                    value: hobby[1],
                    onChanged: (value) {
                      setState(() {
                        hobby[1] = value!;
                        if(value == true)
                        {
                          check.add('Writing');
                          List.generate(check.length, (index) => setState(() {
                            selectindex = index;
                          }));
                        }
                        else
                        {
                          check.remove('Writing');
                        }

                      });
                    },
                  ),
                  Text('Writing'),
                  Checkbox(
                    value: hobby[2],
                    onChanged: (value) {
                      setState(() {
                        hobby[2] = value!;
                        if(value == true)
                          {
                            check.add('Playing');
                            List.generate(check.length, (index) => setState(() {
                              selectindex = index;
                            }));

                          }
                        else
                          {
                            check.remove('Playing');
                          }

                      });
                    },
                  ),
                  Text('playing'),
                ],
              ),
              SizedBox(height: 20,),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      bool res = formkey.currentState!.validate();
                      if (res) {
                        surname = txtsurname.text;
                        number = txtnumber.text;
                        name = txtname.text;
                        Navigator.of(context).pushNamed('/id');
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Enter valid Value!'),
                            action: SnackBarAction(
                              label: 'Retry',
                              onPressed: () {
                                formkey.currentState!.reset();
                              },
                            ),
                          ),
                        );
                      }
                      // Navigator.of(context).pushNamed('/id');
                    },
                    child: Text(
                      'submit',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List check = [];
String Gender = 'Male';
List<bool> hobby = [false, false, false];
// bool c= false;
// bool cpp= false;
// bool cqq= false;
String? surname;
String? name;
String? number;
int selectindex = 0;
