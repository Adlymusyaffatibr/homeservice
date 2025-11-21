import 'package:flutter/material.dart';

class toggle extends StatefulWidget {
  const toggle({super.key});

  @override
  State<toggle> createState() => _toggleState();
}

class _toggleState extends State<toggle> {

  bool swictchIson=true;
  bool swictchIson1=false;

  bool swictchIson3=true;
  bool swictchIson4=false;

  String radiopilih = '1';

  bool pilih =true;
  bool pilih1 =true;
  bool pilih2 =false;

  String? namapilihan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Setting",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Toggle",
              style: TextStyle(fontSize: 10, color: Colors.grey[500]),
            ),
            Row(
              children: [
                Text(
                  "Cercular Data",
                  style: TextStyle(fontSize: 18),
                ),
                Spacer(),
                Switch(
                value: swictchIson,
                 onChanged: (bool statusNyala) {
                  setState(() {
                    swictchIson=statusNyala;
                  });
                 },
                 ),
              ],
            ),
            Divider(
              color: Colors.grey,
              height: 1,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Wi-Fi",
                  style: TextStyle(fontSize: 18),
                ),
                Spacer(),
                Switch(
                value: swictchIson3,
                 onChanged: (bool statusNyala) {
                  setState(() {
                    swictchIson3=statusNyala;
                  });
                 },
                 ),
              ],
            ),
            Divider(
              color: Colors.grey,
              height: 1,
            ),
            SizedBox(height: 40),
            Text(
              "Single cek",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            Row(
              children: [
                Text(
                  "Allow Notification",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                Radio<String>(
                  value: 'terpilih',
                  onChanged: (String? valuebaru) {
                    setState(() {
                      radiopilih = valuebaru!;
                    });
                  },
                  groupValue: radiopilih,
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              height: 1,
            ),
            SizedBox(height: 10),
             Row(
              children: [
                Text(
                  "Turn Of Notification",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                Radio<String>(
                  value: 'tidak terpilih',
                  onChanged: (String? valuebaru) {
                    setState(() {
                      radiopilih = valuebaru!;
                    });
                  },
                  groupValue: radiopilih,
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              height: 1,
            ),
            SizedBox(height: 40),
            Text(
              "multiple cek",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            Row(
              children: [
                Text(
                  "Microphone Acces",
                  style: TextStyle(fontSize: 18),
                ),
                Spacer(),
                Checkbox(
                  value: pilih,
                  onChanged: (bool? statusnyala) {
                    setState(() {
                      pilih= statusnyala!;
                    });
                  },
                   ),
              ],
            ),
            Divider(
              color: Colors.grey,
              height: 1,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Location Acces",
                  style: TextStyle(fontSize: 18),
                ),
                Spacer(),
                   Checkbox(
                  value: pilih1,
                  onChanged: (bool? statusnyala) {
                    setState(() {
                      pilih1= statusnyala!;
                    });
                  },
                   ),
              ],
            ),
            Divider(
              color: Colors.grey,
              height: 1,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Haptic",
                  style: TextStyle(fontSize: 18),
                ),
                Spacer(),
                   Checkbox(
                  value: pilih2,
                  onChanged: (bool? statusnyala) {
                    setState(() {
                      pilih2= statusnyala!;
                    });
                  },
                   ),
              ],
            ),
             Divider(
              color: Colors.grey,
              height: 1,
            ),
            SizedBox(height: 10),
            DropdownButton(
              value: namapilihan,
              hint: Text("Pilih Menu"),
              items: [
                 DropdownMenuItem(child: Text("Menu 1"), value: "Menu 1"),
                 DropdownMenuItem(child: Text("Menu 2"), value: "Menu 2"),
              ],
             onChanged: (value){
              setState(() {
                namapilihan =value;
              });
             },
            ),
            Card(
              margin: EdgeInsets.all(12),
              elevation: 3,
              child: ExpansionTile(
                title:Text(
                  "King",
                ),
                subtitle: Text(
                  "Raja",
                ),
                childrenPadding: EdgeInsets.all(16),
                children: [
                  tampilData('Gaji', '25.0000.000'),
                  tampilData('Pendidikan', 'SMA')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget tampilData(String LabelData, String value) {
  return Padding(padding: EdgeInsetsGeometry.all(10),
  child: Row(
    children: [
      SizedBox(width: 100,
      child: Text(LabelData),
      ),
      Expanded(
        child: 
        Text(
        (value),
      ),
      ),
    ],
  ),
  );
}