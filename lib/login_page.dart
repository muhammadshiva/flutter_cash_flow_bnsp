import 'package:flutter/material.dart';
import 'package:flutter_cash_flow/beranda_page.dart';
// import 'package:flutter_application_1/detail_cash_flow.dart';
// import 'package:flutter_application_1/pengaturan_page.dart';
// import 'package:flutter_application_1/tambah_pemasukan.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Container(
                width: 200,
                height: 200,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage("images/cash-flow.png")),
              ),
              Container(
                child: Text(
                  "MyCashBook V1.0",
                  style: TextStyle(fontFamily: 'Libre', fontSize: 20),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  autocorrect: false,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: "Username",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  autocorrect: false,
                  autofocus: false,
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                  
                ),
              ),
              Container(
                width: 320,
                child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return BerandaPage();
                  }));
                }, 
                child: const Text("Login")),
              )
              
        ],)),
    );
  }
}