import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hesap Makinesi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HesapMakinesi(),
    );
  }
}

class HesapMakinesi extends StatefulWidget {
  const HesapMakinesi({Key? key}) : super(key: key);

  @override
  State<HesapMakinesi> createState() => _HesapMakinesiState();
}

class _HesapMakinesiState extends State<HesapMakinesi> {
  TextEditingController t1 = new TextEditingController(text: '0');
  TextEditingController t2 = new TextEditingController(text: '0');
  int sayi1 = 0;
  int sayi2 = 0;
  int sonuc = 0;
  void carpma() {
    String a = t1.text;
    String b = t2.text;
    sayi1 = int.parse(a);
    sayi2 = int.parse(b);
    setState(() {
      sonuc = sayi1 * sayi2;
    });
  }

  void bolme() {
    String a = t1.text;
    String b = t2.text;
    sayi1 = int.parse(a);
    sayi2 = int.parse(b);
    setState(() {
      sonuc = sayi1 / sayi2 as int;
    });
  }

  void toplama() {
    String a = t1.text;
    String b = t2.text;
    sayi1 = int.parse(a);
    sayi2 = int.parse(b);
    setState(() {
      sonuc = sayi1 + sayi2;
    });
  }

  void cikarma() {
    String a = t1.text;
    String b = t2.text;
    sayi1 = int.parse(a);
    sayi2 = int.parse(b);
    setState(() {
      sonuc = sayi1 - sayi2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hesap Makinesi'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sonuç: $sonuc',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: TextField(
                  controller: t1,
                  decoration: InputDecoration(
                    hintText: '0',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: TextField(
                  controller: t2,
                  decoration: InputDecoration(hintText: '0'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: IconButton(
                            onPressed: toplama,
                            icon: FaIcon(
                              FontAwesomeIcons.plus,
                            ),
                            splashColor: Colors.red,
                            padding: EdgeInsets.only(left: 10.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: IconButton(
                            onPressed: cikarma,
                            icon: FaIcon(
                              FontAwesomeIcons.minus,
                            ),
                            splashColor: Colors.red,
                            padding: EdgeInsets.only(left: 10.0),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: IconButton(
                            onPressed: carpma,
                            icon: FaIcon(
                              FontAwesomeIcons.xmark,
                            ),
                            splashColor: Colors.red,
                            padding: EdgeInsets.only(left: 10.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: IconButton(
                            onPressed: bolme,
                            icon: FaIcon(
                              FontAwesomeIcons.divide,
                            ),
                            splashColor: Colors.red,
                            padding: EdgeInsets.only(left: 10.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
