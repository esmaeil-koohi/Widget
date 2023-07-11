import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class FilePickerPackage extends StatefulWidget {
  const FilePickerPackage({Key? key}) : super(key: key);

  @override
  State<FilePickerPackage> createState() => _FilePickerPackageState();
}

class _FilePickerPackageState extends State<FilePickerPackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // FilePickerResult? result = await FilePicker.platform.pickFiles( );  // ba in dastor chandta file mishe bardasht
            FilePickerResult? result = await FilePicker.platform.pickFiles(
              type: FileType.custom,
             // allowMultiple: ejaze midim user chnd file entekhab kone
              allowedExtensions: ['jpg', 'pdf', 'mp4'] , // ba in dastor b user ejaze midim k faqt in file ha k zekr shode ro entekhab kone
            );  // This command opens the file manager
           if(result != null){
           File file = File(result.files.single.path!); // address file ra daryaft mikonim va b server ersal mikonim
             } else{

           }

          },
          child: const Text('pick a file'),
        )
      ),
    );
  }
}
