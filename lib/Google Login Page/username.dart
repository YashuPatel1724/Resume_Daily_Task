import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage1 extends StatefulWidget {
  const LoginPage1({super.key});

  @override
  State<LoginPage1> createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txtemail = TextEditingController();

    GlobalKey<FormState> formkey = GlobalKey();
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      backgroundColor: Color(0xffF0F4F8),
      body: Form(
        key: formkey,
        child: Center(
          child: Container(
            height: height * 0.43,
            width: width * 0.55,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 10),
              child: Row(
                  children: [
              Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'Asstes/images/google-removebg-preview.png',
                      height: 65,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sign in',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 33),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Use Your Google account',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 65.0, left: 150),
              child: Container(
                height: height * 0.50,
                width: width * 0.28,
                child: Column(
                    children: [
                    Container(
                    height: height * 0.09,
                    width: width * 0.22,
                    child: buildTextFormField(controller:
                    txtemail),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 48.0, top: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot email?',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 48.0, top: 40),
                child: Row(
                  children: [
                    Text(
                      'Not your computer?Use guest mode to sign in privately',
                      style: TextStyle(
                          color: Colors.black87, fontSize: 12),
                    ),
                    Text(
                      ' Learn more',
                      style:
                      TextStyle(color: Colors.blue, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {

                      },
                      child: Text(
                        'Create acconut',
                        style: TextStyle(color: Colors.blue),
                      ),),
                    InkWell(
                      onTap: () {
                        bool response = formkey.currentState!.validate();
                        if (response) {
                          email = txtemail.text;
                          Navigator.of(context).pushNamed('/pass');
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 14),
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50)
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Next', style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                ),
              ),
              ],
            ),
          ),
        )
        ],
            ),)
            ,
            )
            ,
            ),
      )
    ,
    );
  }

  TextFormField buildTextFormField({TextEditingController? controller}) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Email or Phone is required';
        }
        if (!value.contains('@gmail.com')) {
          return 'Must Be Enter @gmail.com';
        }
        if(value.contains(' '))
          {
            return 'Do not enter the sapce';
          }
        if(RegExp(r'[A-Z]').hasMatch(value)) {
          return 'Entre the must be upeercase requried';
        }
        if(value.toString()=='@gmail.com')
        {
          return 'emaple : abc@gmail.com';
        }

      },
      controller: controller,
      style: TextStyle(fontSize: 13),
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5)),
        labelText: 'Email or phone',
        hintText: ('abc@gmail.com'),
        focusedBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color: Colors.black45, width: 2),
        ),
      ),
      cursorColor: Colors.black,
    );
  }
}

String email = 'entre the valid username';
// RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
// bool isValidEmail = emailRegex.hasMatch(email);