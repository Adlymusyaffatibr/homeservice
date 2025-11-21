import 'package:flutter/material.dart';
import 'belajar_toggle.dart';

class page extends StatelessWidget {
  const page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Carrier", style: TextStyle(fontWeight: FontWeight.bold)),
        toolbarHeight: 50,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => toggle())
                );
            }, 
            icon: Icon(Icons.settings, color: Colors.black45),
            )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.blue),
            child: Center(
              child: Icon(Icons.camera_enhance, color: Colors.white, size: 80),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(15),
                          ),
                          side: BorderSide(color: Colors.blue, width: 3),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.blue[100], size: 30),
                            Text(
                              "Favorite",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(15),
                          ),
                          side: BorderSide(color: Colors.blue, width: 3),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.share,
                              color: Colors.blue[100],
                              size: 30,
                            ),
                            Text(
                              "Share",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(15),
                    ),
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      "Save As",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(15),
                    ),
                    side: BorderSide(color: Colors.blue, width: 3),
                  ),
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      "Cancel",
                      style: TextStyle(color: Colors.blue, fontSize: 22),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
