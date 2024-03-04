import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff3b5998),
      ),
      child: Form(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            "assets/download.png",
            height: 90,
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(5.0)),
                child: Column(children: [
                  TextFormField(
                    decoration:
                        buildInputDecoration(Icons.email, " Enter your Email"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter email';
                      }
                      if (!RegExp("^[a-zA-Z0-9+_.-]+.[a-z]").hasMatch(value)) {
                        return 'Please give a valid email';
                      }
                      return 'null';
                    },
                  ),
                  TextFormField(
                    decoration: buildInputDecoration(
                        Icons.lock, " Enter your password"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter password';
                      }
                      return 'null';
                    },
                  ),
                ])),
          ),
          Padding(padding: const EdgeInsets.all(16),
          child:Container(
            height: 50,
          child: ElevatedButton(
            child: Text("Login"),
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              textStyle: TextStyle(fontSize: 20),
              primary: Color(0xff4E6BA1),
              elevation: 3
          )),
          ),
          ),
          Spacer(),
          TextButton(onPressed: () {},
        child: Text("Sign Up for Facebook"),
        style: ButtonStyle(
          foregroundColor:
          MaterialStateProperty.all<Color>(Colors.white),
        ),
          ),
        TextButton(onPressed: () {},
        child: Text("Need Help?"),
        style: ButtonStyle(
          foregroundColor:
          MaterialStateProperty.all<Color>(Colors.white),
        ),
          ),
          Spacer(),
        ],
      )),
    );
  }
}

InputDecoration buildInputDecoration(IconData icons, String hint) {
  return InputDecoration(
      fillColor: Colors.white,
      prefixIcon: Icon(icons),
      filled: true,
      hintText: hint,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: const BorderSide(
          color: Colors.green,
          width: 1.5,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: const BorderSide(
          color: Colors.blue,
          width: 1.5,
        ),
      ),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 1.5,
          )));
}
