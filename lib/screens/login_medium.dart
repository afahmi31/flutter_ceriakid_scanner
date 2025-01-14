import 'package:flutter/material.dart';
import 'package:ceria_kid_scanner/custom_widget/mcd_password_field.dart';

class LoginMedium extends StatelessWidget {
  const LoginMedium({super.key});

  @override
  Widget build(BuildContext context) {
     final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width - 30,
          padding: MediaQuery.of(context).size.width < 600 ? EdgeInsets.fromLTRB(24, 0, 24, 0) : EdgeInsets.fromLTRB(127, 0 , 127, 0),
          height: 326,
          alignment: Alignment.center ,
          child: Center(
            child: Column(
              spacing: 32,
              children: [
                Text(
                  'Masuk',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                  ),),
                Column(
                  spacing: 24,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        hintText: 'Insert your email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    McdPasswordField(controller: passwordController),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        elevation:3,
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)
                        ),
                        alignment: Alignment.center,
                      ), 
                      child: Text('Masuk',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                        ),
                      ),
                      )
                  ],
                )
              ],
            ),
          )
        ),
      )
    );
  }
}
