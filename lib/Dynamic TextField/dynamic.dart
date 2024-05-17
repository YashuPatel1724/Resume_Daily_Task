import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dynamic extends StatefulWidget {
  const Dynamic({super.key});

  @override
  State<Dynamic> createState() => _DynamicState();
}

class _DynamicState extends State<Dynamic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('Dynamic TextField'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '     Skill ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              ...List.generate(
                ControllerList.length,
                (index) => ListTile(
                  title: TextField(
                    controller: ControllerList[index],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      label: Text('skill'),
                    ),
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    for(int i=0; i<ControllerList.length; i++)
                    {
                      skill = skill + '\n' + ControllerList[i].text;
                    }
                    Navigator.of(context).pushNamed('/skill');
                    print('${skill}');
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  style:  ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.grey)),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () {
                if (ControllerList.length > 1) {
                  setState(() {
                    index = ControllerList.length - 1;
                    ControllerList.remove(ControllerList[index]);
                  });
                }
              },
              child: Icon(
                Icons.remove,
              ),
              backgroundColor: Colors.grey,
            ),
            SizedBox(width: 10,),
            FloatingActionButton(
              onPressed: () {
                TextEditingController txtController = TextEditingController();
                setState(() {
                  ControllerList.add(txtController);
                });
              },
              child: Icon(
                Icons.add,
              ),
              backgroundColor: Colors.grey,
            ),
          ],
        ));
  }
}

TextEditingController txtController = TextEditingController();

List ControllerList = [
  txtController,
];
int index = 0;
String skill = '';
