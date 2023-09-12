import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class PersonalDetail extends StatefulWidget {
  const PersonalDetail({Key? key}) : super(key: key);

  @override
  State<PersonalDetail> createState() => _PersonalDetailState();
}

class _PersonalDetailState extends State<PersonalDetail> {
  MaritalStatus? selectedMaritalStatus;
  bool? en = false;
  bool? hi = false;
  bool? gu = false;
  bool swtich = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Personal Detail")),
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(blurRadius: 10, spreadRadius: 0.5)]),
        child: Column(
          children: [
            Switch(
              value: swtich,
              onChanged: (value) {
                swtich = value;
                setState(() {});
                print(value);
              },
            ),
            if (swtich)
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.red,
              ),
            Text("DOB"),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Text("Marital Status"),
            Row(
              children: [
                Radio(
                  value: MaritalStatus.single,
                  groupValue: selectedMaritalStatus,
                  onChanged: (value) {
                    selectedMaritalStatus = value;
                    setState(() {});
                    print("value $value");
                  },
                ),
                InkWell(
                  onTap: () {
                    selectedMaritalStatus = MaritalStatus.single;
                    setState(() {});
                  },
                  child: Text("Single"),
                )
              ],
            ),
            Row(
              children: [
                Radio(
                  value: MaritalStatus.married,
                  groupValue: selectedMaritalStatus,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onChanged: (value) {
                    selectedMaritalStatus = value;
                    setState(() {});
                    print("value $value");
                  },
                ),
                InkWell(
                  onTap: () {
                    selectedMaritalStatus = MaritalStatus.married;
                    setState(() {});
                  },
                  child: Text("Married"),
                )
              ],
            ),
            // RadioListTile(
            //   value: MaritalStatus.single,
            //   groupValue: selectedMaritalStatus,
            //   title: Text("Single"),
            //   onChanged: (value) {
            //     selectedMaritalStatus = value;
            //     setState(() {});
            //   },
            // ),
            // RadioListTile(
            //   value: MaritalStatus.married,
            //   groupValue: selectedMaritalStatus,
            //   title: Text("Married"),
            //   onChanged: (value) {
            //     selectedMaritalStatus = value;
            //     setState(() {});
            //     print(value);
            //   },
            // ),
            Text("Language Known"),
            Row(
              children: [
                Checkbox(
                  value: en,
                  onChanged: (value) {
                    en = value;
                    setState(() {});
                  },
                ),
                InkWell(
                  onTap: () {
                    // en=en!?false:true;
                    en = !en!;
                    setState(() {});
                  },
                  child: Text("English"),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: hi,
                  onChanged: (value) {
                    hi = value;
                    setState(() {});
                  },
                ),
                InkWell(
                  onTap: () {
                    // en=en!?false:true;
                    hi = !hi!;
                    setState(() {});
                  },
                  child: Text("Hindi"),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: gu,
                  onChanged: (value) {
                    gu = value;
                    setState(() {});
                  },
                ),
                InkWell(
                  onTap: () {
                    // en=en!?false:true;
                    gu = !gu!;
                    setState(() {});
                  },
                  child: Text("Gujrati"),
                ),
              ],
            ),
            // CheckboxListTile(
            //   value: en,
            //   onChanged: (value) {
            //     en = !en!;
            //     setState(() {});
            //   },
            //   title: Text("English"),
            //   dense: true,
            //   controlAffinity: ListTileControlAffinity.leading,
            // ),
            // CheckboxListTile(
            //   value: hi,
            //   onChanged: (value) {
            //     hi = !hi!;
            //     setState(() {});
            //   },
            //   title: Text("Hindi"),
            //   controlAffinity: ListTileControlAffinity.leading,
            // ),
            Text("Nationality"),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

enum MaritalStatus { single, married }
