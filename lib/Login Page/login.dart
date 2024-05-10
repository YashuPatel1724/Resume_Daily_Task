import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_daily_task/Google%20Login%20Page/username.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hidepassword = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 190,
                  width: 190,
                  child: Image.asset(
                      'Asstes/images/Screenshot_2024-05-08_211456-removebg-preview.png'),
                ),
                Text(
                  'Welcome Back,',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 33),
                ),
                Text(
                  'Make it work, make it right, make it fast',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon: Icon(
                      CupertinoIcons.person,
                      size: 25,
                    ),
                    hintText: ('E-mail'),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black45, width: 2),
                    ),
                  ),
                  cursorColor: Colors.black,
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  style: TextStyle(fontSize: 20),
                  obscureText: hidepassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon: Icon(
                      CupertinoIcons.lock_fill,
                      size: 25,
                    ),
                    suffixIcon: InkWell(
                        onTap: () {
                          if (hidepassword == true) {
                            hidepassword = false;
                          } else {
                            hidepassword = true;
                          }
                          setState(() {});
                        },
                        child: ((hidepassword == true)
                            ? Icon(CupertinoIcons.eye_slash_fill)
                            : Icon(CupertinoIcons.eye_fill))),
                    hintText: ('Password'),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black45, width: 2),
                    ),
                  ),
                  cursorColor: Colors.black,
                ),
                SizedBox(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forget password?',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff272727),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                SizedBox(height: 15),
                Center(
                    child: Text(
                  'OR',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                )),
                SizedBox(height: 15),
                Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black45, width: 2)),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 30,
                          width: 30,
                          child: Image.asset(
                              'Asstes/images/google-removebg-preview.png'),
                        ),
                        Text(
                          'Sign-In with Google',
                          style: TextStyle(color: Colors.black54, fontSize: 18),
                        )
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont have an Account?',
                      style: TextStyle(color: Colors.black54, fontSize: 18),
                    ),
                    Text(
                      ' Sign up',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
