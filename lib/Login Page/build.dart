import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildUpPage extends StatefulWidget {
  const BuildUpPage({super.key});

  @override
  State<BuildUpPage> createState() => _BuildUpPageState();
}

class _BuildUpPageState extends State<BuildUpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFE401),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
              Image.asset(
                  'Asstes/images/Screenshot_2024-05-08_211456-removebg-preview.png'),
              Padding(
                padding: const EdgeInsets.only(top: 150.0),
                child: Text(
                  'Build Awesome Apps',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "let's put your creativity on the\n      development highway",
                style: TextStyle(color: Colors.black87, fontSize: 17),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 30),
                child: Row(
                  children: [
                   InkWell(
                     onTap: () {
                       Navigator.of(context).pushNamed('/login');
                     },
                     child:  Container(
                       height: 60,
                       width: 150,
                       decoration: BoxDecoration(
                         color: Colors.transparent,
                         borderRadius: BorderRadius.circular(5),
                         border: Border.all(color: Colors.black, width: 1.5),
                       ),
                       alignment: Alignment.center,
                       child: Text('LOGIN', style: TextStyle(color: Colors.black87, fontSize: 20),
                       ),
                     ),
                   ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      alignment: Alignment.center,
                      child: Text('SIGNUP',style: TextStyle(color: Colors.white, fontSize: 20),),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
