import 'package:app_estagio/pages/show_Info/show_info.dart';// pa
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

final picker = ImagePicker();

Future capturarImg(tipo, context) async {
    var pickedFile;
    if (tipo == "camera"){
      pickedFile = await picker.getImage(source: ImageSource.camera);
    }else{
      pickedFile = await picker.getImage(source: ImageSource.gallery);
    } 
      if (pickedFile != null){
        print(pickedFile.path);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Show_info(pickedFile.path)),
        );
      }
  }