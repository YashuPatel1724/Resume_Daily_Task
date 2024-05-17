import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_daily_task/Google%20Login%20Page/username.dart';
import 'package:resume_daily_task/Id%20Card/registration.dart';

class IdCard extends StatefulWidget {
  const IdCard({super.key});

  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'ID Card',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
            height: 550,
            width: 340,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
            ),
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 8),
                  height: 20,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  height: 500,
                  width: 315,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0, top: 8),
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 50,
                              backgroundImage: (fileImage != null)
                                  ? FileImage(fileImage!)
                                  : null,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Text(
                              'Microsoft',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0, left: 20),
                        child: Row(
                          children: [
                            Text(
                              'SuraName   ',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              ': $surname',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Text(
                              'Name  ',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 67,
                            ),
                            Text(
                              ': ${name}',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only( left: 20),
                        child: Row(
                          children: [
                            Text(
                              'DOB',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 68,
                            ),
                            Text(
                              ': $BirthDate',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only( left: 20),
                        child: Row(
                          children: [
                            Text(
                              'Gender  ',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 56,
                            ),
                            Text(
                              ': $Gender',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only( left: 20),
                        child: Row(
                          children: [
                            Text(
                              'Hobby ',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 60,),
                            ...List.generate(
                                check.length,
                                (index) => Text(
                                      (index < check.length - 1)
                                          ? check[index] + ','
                                          : check[index],
                                      style: TextStyle(color: Colors.blue,fontSize: 15),
                                    ))
                            //   Text(
                            //     ,
                            //     style: TextStyle(
                            //         color: Colors.blue,
                            //         fontSize: 15,
                            //         fontWeight: FontWeight.bold),
                            //   ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only( left: 20),
                        child: Row(
                          children: [
                            Text(
                              'Mo.',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 68,
                            ),
                            Text(
                              ': $number',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
