import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:paynstay/bottome/mainscreen.dart';
import 'package:paynstay/database/auth.dart';
import 'package:paynstay/scan/scanorder.dart';
import 'package:paynstay/utils/utils.dart';

class EmailAuth extends StatefulWidget {
  const EmailAuth({Key? key}) : super(key: key);

  @override
  State<EmailAuth> createState() => _EmailAuthState();
}

class _EmailAuthState extends State<EmailAuth> {
  TextEditingController passlController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();

  bool _isLoading = false;
  Uint8List? _image;

//TextFieldws
  Widget _textFormFieldFunctionIcon(
    TextEditingController controller,
    String? Function(String?)? validator,
    String Active,
  ) {
    var inputDecoration = InputDecoration(
        border: InputBorder.none,
        hintText: Active,
        hintStyle: TextStyle(color: Colors.grey),
        filled: true,
        contentPadding: EdgeInsets.only(top: 10, left: 10),
        fillColor: Colors.white70,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1),
        ));
    return Container(
      height: 50,
      margin: EdgeInsets.only(left: 20, right: 20, top: 15),
      child: TextFormField(
        enabled: controller.text.isNotEmpty ? false : true,
        controller: controller,
        validator: validator,
        autocorrect: true,
        decoration: inputDecoration,
      ),
    );
  }

//Text Field Title
  _titleText(String s) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      padding: EdgeInsets.only(top: 20),
      child: Text(
        s,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Color(0xff18191A),
            fontStyle: FontStyle.normal),
      ),
    );
  }

  // Select Image From Gallery
  selectImage() async {
    Uint8List ui = await pickImage(ImageSource.gallery);
    setState(() {
      _image = ui;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  _image != null
                      ? CircleAvatar(
                          radius: 59, backgroundImage: MemoryImage(_image!))
                      : CircleAvatar(
                          radius: 59,
                          backgroundImage: NetworkImage(
                              'https://static.remove.bg/remove-bg-web/a6eefcd21dff1bbc2448264c32f7b48d7380cb17/assets/start_remove-c851bdf8d3127a24e2d137a55b1b427378cd17385b01aec6e59d5d4b5f39d2ec.png'),
                        ),
                  Positioned(
                      bottom: -10,
                      left: 70,
                      child: IconButton(
                          onPressed: () => selectImage(),
                          icon: Icon(
                            Icons.add_a_photo,
                            color: Colors.white,
                          )))
                ],
              ),
            ),
            _titleText('Full Name'),
            _textFormFieldFunctionIcon(
                fullNameController, (p0) => null, "Full Name"),
            SizedBox(
              height: 10,
            ),
            _titleText('Phone Number'),
            _textFormFieldFunctionIcon(
                phoneController, (p0) => null, "Phone Number"),
            SizedBox(
              height: 10,
            ),
            _titleText('Email'),
            _textFormFieldFunctionIcon(emailController, (p0) => null, "Email"),
            SizedBox(
              height: 10,
            ),
            _titleText('Password'),
            _textFormFieldFunctionIcon(passlController, (p0) => null, "Email"),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.blueAccent,
                    primary: Colors.blue,
                    fixedSize: Size(300, 55),
                  ),
                  onPressed: signUpUsers,
                  child: _isLoading
                      ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : Text(
                          'SignUp ',
                          style: GoogleFonts.getFont('Roboto',
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              letterSpacing: 1.5,
                              fontSize: 15,
                              fontStyle: FontStyle.normal),
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  signUpUsers() async {
    setState(() {
      _isLoading = true;
    });
    String rse = await AuthUtils().signUpUser(
        email: emailController.text,
        pass: passlController.text,
        phoneNumber: phoneController.text,
        username: fullNameController.text,
        file: _image!);

    print(rse);
    setState(() {
      _isLoading = false;
    });
    if (rse != 'sucess') {
      showSnakBar(rse, context);
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (builder) => MainScreen()));
    }
  }
}
