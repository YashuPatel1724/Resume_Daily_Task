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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF0F4F8),
      body: Center(
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
                          height: height * 0.06,
                          width: width * 0.22,
                          child: TextField(
                            style: TextStyle(fontSize: 13),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              hintText: ('E-mail or phone'),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black45, width: 2),
                              ),
                            ),
                            cursorColor: Colors.black,
                          ),
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
                                  onPressed: () {},
                                  child: Text(
                                    'Create acconut',
                                    style: TextStyle(color: Colors.blue),
                                  ),),
                              Container(
                                margin: EdgeInsets.only(left: 14),
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                alignment: Alignment.center,
                                child: Text('Next',style: TextStyle(color: Colors.white),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
