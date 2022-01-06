import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: WaqafSign());
  }
}

class WaqafSign extends StatefulWidget {
  const WaqafSign({Key? key}) : super(key: key);

  @override
  _WaqafSignState createState() => _WaqafSignState();
}

class _WaqafSignState extends State<WaqafSign> {
  @override
  Widget build(BuildContext context) {
    final titles = [
      'Wajib berhenti',
      'Boleh berhenti atau teruskan',
      'Harus berhenti atau teruskan, namun lebih baik berhenti',
      'Harus berhenti atau teruskan, namun lebih baik teruskan',
      'Dilarang berhenti',
      'Harus berhenti pada salah satu tempat sahaja',
      'Berhenti dalam kadar 2 harakat tanpa mengambil nafas jika bacaan diteruskan',
      'Tanda tertib ayat yang menunjukkan akhir ayat'
    ];

    final image = [
      'assets/images/mim.png',
      'assets/images/jim.jpg',
      'assets/images/qola.jpg',
      'assets/images/sola.jpg',
      'assets/images/la.jpg',
      'assets/images/dua titik.jpg',
      'assets/images/sin.jpg',
      'assets/images/waqaf-muraqabah.jpg',
    ];

    return Scaffold(
        backgroundColor: Colors.teal[200],
        appBar: AppBar(
          title: Text("Tanda-tanda Waqaf"),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                      child: Image.asset("assets/images/banned (1).png",
                          fit: BoxFit.contain),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 130),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Tanda-tanda Waqaf",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 190),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: ListView.builder(
                        itemCount: titles.length,
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 20,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Container(
                                height: 75,
                                child: ListTile(
                                  title: Text(
                                    titles[index],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  leading: Image(
                                      image: AssetImage(image[index]),
                                      height: 35),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
