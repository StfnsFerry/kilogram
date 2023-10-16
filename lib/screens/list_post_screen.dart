import 'package:flutter/material.dart';

class Listpost extends StatefulWidget {
  const Listpost({super.key});

  @override
  State<Listpost> createState() => _ListpostState();
}

class _ListpostState extends State<Listpost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              child: Image.asset("assets/images/logo.png"),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=100&q=80'),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "John Doe",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ]),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
