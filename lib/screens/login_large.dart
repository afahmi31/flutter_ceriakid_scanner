import 'package:flutter/material.dart';
import 'package:ceria_kid_scanner/custom_widget/mcd_password_field.dart';

class Loginlarge extends StatelessWidget {
  const Loginlarge({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              flex: 3,
              child: Center(
                child: Container(
                    width: 424,
                    height: 326,
                    alignment: Alignment.center,
                    child: Center(
                      child: Column(
                        spacing: 32,
                        children: [
                          Text(
                            'Masuk',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 32,
                                fontWeight: FontWeight.bold),
                          ),
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
                              Container(
                                alignment: Alignment.center,
                                child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  animationDuration: Duration(seconds: 3),
                                  elevation: 3,
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                ),
                                child: Text(
                                  'Masuk',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
              )),
          Expanded(
              flex: 3,
              child: Image.asset(
                'assets/images/banner_1.jpg',
                fit: BoxFit.cover,
                alignment: Alignment.centerRight,
                width: double.infinity,
                height: double.infinity,
              ))
        ],
      ),
    );
  }
}
