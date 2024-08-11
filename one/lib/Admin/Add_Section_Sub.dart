import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

import '../core/contant/My_Them.dart';

class Add_Section_Sub extends StatelessWidget {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          TextField(
            controller: t1,
          ),
          TextField(
            controller: t2,
          ),
          MaterialButton(
              onPressed: () async {
                var img_back =
                    await ImagePicker().pickImage(source: ImageSource.gallery);
                var v = http.MultipartRequest(
                    "post", Uri.parse("${my_http}/add_pro.php?mark=insert_section_sub"));
                Map<String, String> map = {
                  "number_main": t1.text,
                  "name_sub": t2.text,
                };
                v.fields.addAll(map);
                var f =
                    await http.MultipartFile.fromPath("image", img_back!.path);
                v.files.add(await f);
                var back = await v.send();
                print(await back.stream.bytesToString());
              },
              child: Icon(Icons.camera_alt_outlined)),
        ],
      ),
    );
  }
}
