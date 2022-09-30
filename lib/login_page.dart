import 'package:flutter/material.dart';
import 'package:flutter_cash_flow/beranda_page.dart';
// import 'package:flutter_application_1/detail_cash_flow.dart';
// import 'package:flutter_application_1/pengaturan_page.dart';
// import 'package:flutter_application_1/tambah_pemasukan.dart';

const users = const {
  'fransiskaly@gmail.com': '12345678',
};

class LoginPage extends StatelessWidget {
  Duration get loginTime => Duration(milliseconds: 2250);

// Future<String> _authUser(LoginData data) {
//     print('Name: ${data.name}, Password: ${data.password}');
//     return Future.delayed(loginTime).then((_) {
//       if (!users.containsKey(data.name)) {
//         return 'Username not exists';
//       }
//       if (users[data.name] != data.password) {
//         return 'Password does not match';
//       }
//       return null;
//     });
//   }

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
            child: Image.asset(
              'assets/cash-flow.png',
              fit: BoxFit.contain,
            ),
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
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BerandaPage();
                  }));
                },
                child: const Text("Login")),
          )
        ],
      )),
    );
  }
}
