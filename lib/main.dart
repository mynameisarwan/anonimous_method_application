import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "Silahkan Tekan Tombol";
  //contoh method biasa
  void tekantombol() {
    setState(() {
      message = "Tombol sudah di tekan";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Anonymous Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message),
              ElevatedButton(
                  //onPressed: tekantombol,  //cara memanggil method biasa
                  onPressed: () {
                    setState(() {
                      message = "Tombol sudah di tekan";
                    }); //cara menggunkan anonimous method
                    // adalah (method yang di gunakan hanya untuk satu even)
                  },
                  child: const Text("Click Me"))
            ],
          ),
        ),
      ),
    );
  }
}
