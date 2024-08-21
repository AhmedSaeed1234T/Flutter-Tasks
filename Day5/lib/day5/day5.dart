import 'package:flutter/material.dart';

class Day5 extends StatelessWidget {
  const Day5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF7854F4),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          title: Center(
            child: Text(
              'My App ',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          elevation: 5.0,
          backgroundColor: Colors.blueAccent,
          shadowColor: Color.fromARGB(255, 0, 8, 20).withOpacity(0.5),
        ),
        body: Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image.asset
              SizedBox(height: 22),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Please Enter Your Text',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 22),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Please Enter Your Name ? ',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 22),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Please Enter Your Phone Number ? ',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
              ),

              Positioned.fill(
                child: Image(
                  image: AssetImage('lib/Images/5805710.jpg'),
                  height: 300,
                  width: 360,
                  fit: BoxFit.cover,
                  // fit: BoxFit.cover,
                ),
              ),
              Spacer(),
              Text('created by Ahmed Darwish'),
            ],
          ),
        ),
      ),
    );
  }
}
