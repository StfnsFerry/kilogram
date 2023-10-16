import 'package:flutter/material.dart';
import 'package:kilogram/screens/list_post_screen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController phoneController = TextEditingController();
  bool isPhonevalid = false;

  // String _validateInput(String value) {
  //   if (value.length < 12) {
  //     return 'Input must be at least 12 characters long';
  //   }
  //   return null; // Return null to indicate the input is valid
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 50),
              child: Image.asset("assets/images/logo.png"),
            ),
          ),
          SafeArea(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Phone Number",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "*",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      errorText:
                          isPhonevalid ? null : "Phone number doesn't valid",
                    ),
                    // validator: _validateInput,
                  ),
                  SizedBox(
                    height: 450,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 20),
                    child: FloatingActionButton(
                      backgroundColor: Color(0xFF1E90FF),
                      foregroundColor: Colors.white,
                      onPressed: () {
                        setState(() {
                          isPhonevalid = phoneController.text.isNotEmpty;
                          if (isPhonevalid) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Listpost()));
                          }
                        });
                      },
                      child: Text(
                        "Continue",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
