import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:one/core/class/statusrequt.dart';
import 'package:path/path.dart';

class Curd {
  Future postData(String link, Map data) async {
    var response = await http.post(Uri.parse(link), body: data);
    var responsbody = jsonDecode(response.body);

    if (response.statusCode == 200 || response.statusCode == 201) {
      return responsbody;
    } else {
      return StatusRequst.serverFailure;
    }
  }

  postRequestWithFile(String uri, Map data,List<XFile> file) async {


    var request = http.MultipartRequest("POST", Uri.parse(uri));

    for (var f in file) {
      var m = await http.MultipartFile.fromPath("name_img[]", f.path);
      request.files.add(m);
    }


    data.forEach((key, value) {
      request.fields[key] = value;
    });

    var myRequest = await request.send();

    var response = await http.Response.fromStream(myRequest);

    if (myRequest.statusCode == 200) {
      print(response.body);
      var responsebody = jsonDecode(response.body);
      return responsebody;
    } else {
      return "error${myRequest.statusCode}";
    }
  }

  postRequestWithFile_user(String uri, Map data,File file) async {


    var request = http.MultipartRequest("POST", Uri.parse(uri));


      var m = await http.MultipartFile.fromPath("name_img", file.path);
      request.files.add(m);

    data.forEach((key, value) {
      request.fields[key] = value;
    });

    var myRequest = await request.send();
    var response = await http.Response.fromStream(myRequest);

    if (myRequest.statusCode == 200) {
      print(response.body);
      var responsebody = jsonDecode(response.body);
      return responsebody;
    } else {
      return "error${myRequest.statusCode}";
    }
  }


}
