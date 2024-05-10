import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ValidLogin extends StatefulWidget {
  const ValidLogin({super.key});

  @override
  State<ValidLogin> createState() => _ValidLoginState();
}

class _ValidLoginState extends State<ValidLogin> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF0F4F8),
      body: Center(
        child: Container(
          height: height * 0.43,
          width: width * 0.50,
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 250,
                  ),
                  Image.asset(
                    'Asstes/images/success-removebg-preview.png',
                    color: Colors.blue,
                    fit: BoxFit.cover,
                    height: 150,
                  ),
                ],
              ),
              SizedBox(
                width: 150,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '   Your Profile is\nSuccessfully login',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w900,fontSize: 35),
                  ),
                  InkWell(
                    onTap: () {
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 50),
                      height: height*0.07,
                      width: width*0.19,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      alignment: Alignment.center,
                      child: Text('Go to Home',style: TextStyle(color: Colors.white,fontSize: 25),),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
