// import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:open_filex/open_filex.dart';

class picker extends StatelessWidget {
  const picker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ImagePick')),
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () async {
            OpenFilex.open("/sdcard/example.txt");

            // final result = await FilePicker.platform.pickFiles();
            // if (result == null) return;

            // final file = result.files.first;
            // openFile(file);
          },
          child: Text('Pic an Image'),
        ),
      ),
    );
  }
}

// void openFile(PlatformFile file) {

