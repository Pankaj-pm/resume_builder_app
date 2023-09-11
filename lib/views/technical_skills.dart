import 'package:flutter/material.dart';

class TechnicalSkills extends StatefulWidget {
  const TechnicalSkills({Key? key}) : super(key: key);

  @override
  State<TechnicalSkills> createState() => _TechnicalSkillsState();
}

class _TechnicalSkillsState extends State<TechnicalSkills> {
  List<String> skillList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Technical Skills")),
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(blurRadius: 10, spreadRadius: 0.5)]),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Enter you skill"),
            // ...skillList
            //     .map((e) => Row(
            //           children: [
            //             Expanded(child: TextFormField(
            //               onChanged: (value) {
            //                 e = value;
            //               },
            //             )),
            //             IconButton(
            //                 onPressed: () {
            //                   print("Delete $e");
            //                 },
            //                 icon: Icon(Icons.delete))
            //           ],
            //         ))
            //     .toList(),
            for (int i = 0; i < skillList.length; i++)
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      onChanged: (value) {
                        skillList[i] =value;
                      },
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        print("Delete ${skillList[i]}");
                        skillList.removeAt(i);
                        setState(() {});
                      },
                      icon: Icon(Icons.delete))
                ],
              ),

            OutlinedButton(
                onPressed: () {
                  print(skillList);
                  skillList.add("");

                  setState(() {});
                },
                child: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
