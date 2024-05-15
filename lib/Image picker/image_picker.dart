import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

ImagePicker imagePicker = ImagePicker();
File ?fileImage;

class PickerImage extends StatefulWidget {
  const PickerImage({super.key});

  @override
  State<PickerImage> createState() => _PickerImageState();
}

class _PickerImageState extends State<PickerImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Image Picker',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 70),
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                image:(fileImage!=null)? DecorationImage(
                  fit: BoxFit.cover,
                    image: FileImage(fileImage!)):DecorationImage(image: AssetImage('Asstes/images/3135715-removebg-preview.png')),
              ),
              alignment: Alignment.center,

            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () async {
                    XFile? xFileImage =
                        await imagePicker.pickImage(source: ImageSource.camera);
                    setState(() {
                      fileImage = File(xFileImage!.path);
                    });
                  },
                  icon: Icon(
                    Icons.camera_alt,
                    size: 55,
                  )),
              IconButton(
                  onPressed: () async {
                    XFile? xFileImage = await imagePicker.pickImage(
                        source: ImageSource.gallery);
                    setState(() {
                      fileImage = File(xFileImage!.path);
                    });
                  },
                  icon: Icon(
                    Icons.image,
                    size: 55,
                  ))
            ],
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: Text(
                'Upload Me',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
