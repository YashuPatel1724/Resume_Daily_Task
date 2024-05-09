import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerApp extends StatefulWidget {
  const DrawerApp({super.key});

  @override
  State<DrawerApp> createState() => _DrawerState();
}

class _DrawerState extends State<DrawerApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: Color(0xff2E2F33),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: ListTile(
                    title: Text(
                      'Gmail',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    ),
                  ),
                ),
                Divider(thickness: 0.4,),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'All Inbox',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                    ),
                  ),
                  leading: Icon(Icons.inbox_outlined,size: 23,color: Colors.white,),
                ),
                Divider(thickness: 0.4,),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Inbox',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                    ),
                  ),
                  leading: Icon(Icons.inbox,size: 23,color: Colors.white,),
                  tileColor: Colors.teal,
                ),
                Divider(thickness: 0.4,),
            
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Starred',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                    ),
                  ),
                  leading: Icon(Icons.star_border,size: 23,color: Colors.white,),
                ),
            
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Snoozed',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                    ),
                  ),
                  leading: Icon(Icons.schedule,size: 23,color: Colors.white,),
                ),
            
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Important',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                    ),
                  ),
                  leading: Icon(Icons.label_outline,size: 23,color: Colors.white,),
                ),
            
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Sent',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                    ),
                  ),
                  leading: Icon(Icons.send_outlined,size: 23,color: Colors.white,),
                ),
            
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Drafts',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                    ),
                  ),
                  leading: Icon(Icons.drafts_outlined,size: 23,color: Colors.white,),
                ),
            
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'All Mail',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                    ),
                  ),
                  leading: Icon(Icons.mail_outline,size: 23,color: Colors.white,),
                ),
            
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Spam',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                    ),
                  ),
                  leading: Icon(Icons.report_outlined,size: 23,color: Colors.white,),
                ),
            
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Trash',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                    ),
                  ),
                  leading: Icon(Icons.delete_sweep_outlined,size: 23,color: Colors.white,),
                ),
                Divider(thickness: 0.4,),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Create new',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                    ),
                  ),
                  leading: Icon(Icons.add,size: 23,color: Colors.white,),
                ),
                Divider(thickness: 0.4,),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Settings',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                    ),
                  ),
                  leading: Icon(Icons.settings,size: 23,color: Colors.white,),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.teal,
          title: Text(
            'Darwer',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}
