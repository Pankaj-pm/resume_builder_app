// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  bool isFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resumes Workspace"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    isFirst = true;
                    setState(() {});
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        color: Colors.blue,
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "Contact",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      if (isFirst)
                        Divider(
                          thickness: 3,
                          height: 3,
                          color: Colors.yellow,
                        )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    isFirst = false;
                    setState(() {});
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        color: Colors.blue,
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "Photo",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      if (!isFirst)
                        Divider(
                          thickness: 3,
                          height: 3,
                          color: Colors.yellow,
                        )
                    ],
                  ),
                ),
              )
            ],
          ),
          Expanded(
              child: IndexedStack(
                index: isFirst ? 0 : 1,
                children: [
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(21),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.white),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Name", hintStyle: TextStyle(color: Colors.grey)),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Icon(
                                Icons.mail,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                  child: TextField(
                                    keyboardType:TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      hintText: "Email",
                                      hintStyle: TextStyle(color: Colors.grey),
                                    ),
                                  ))
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Icon(Icons.phone_android, color: Colors.grey),
                              SizedBox(width: 15),
                              Expanded(
                                child: TextField(
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    hintText: "Phone",
                                    // prefix: Icon(Icons.phone_android),
                                    // prefixIcon: Icon(Icons.phone_android),
                                    hintStyle: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Icon(
                                  Icons.location_on,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  children: [
                                    TextField(
                                      keyboardType: TextInputType.streetAddress,
                                      obscureText: true,
                                      obscuringCharacter: "-",
                                      decoration: InputDecoration(
                                        hintText: "Address",
                                        // prefix: Icon(Icons.phone_android),
                                        // prefixIcon: Icon(Icons.phone_android),
                                        hintStyle: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                        hintText: "Address Line 1",
                                        // prefix: Icon(Icons.phone_android),
                                        // prefixIcon: Icon(Icons.phone_android),
                                        hintStyle: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                        hintText: "Address Line 2",
                                        // prefix: Icon(Icons.phone_android),
                                        // prefixIcon: Icon(Icons.phone_android),
                                        hintStyle: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: CircleAvatar(
                      child: Text("Add"),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
