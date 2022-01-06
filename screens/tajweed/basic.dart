import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../constants.dart';
import 'detail_screen.dart';
import 'model.dart';

class Basic extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Basic> {
  List<Item> _itemList = [
    Item(
        title: "Hamzah Wasal",
        longText:
            "Hamzah Wasal adalah hamzah zaidah (tambahan) yang berada pada awal. Ia harus diucapkan jika berada di awal kalimah dan tidak diucapkan jika disambung dengan ayat sebelumnya.\n\nHamzah Wasal dibaca Dhommah(baris depan) apabila huruf ketiga adalah Dhommah. Jika huruf ketiga adalah Fathah (baris atas) atau Kasrah (baris bawah), ia perlu dibaca dengan Kasrah.",
        image: "assets/images/hamzah_wasal.jpg"),
    Item(
        title: "Ghunnah",
        longText:
            "Dari segi bahasa ia bermaksud suara yang keluar dari pangkal rongga hidung.\n\nDari segi istilah ia bermaksud suara yang indah dan teratur pada huruf nun(termasukk tanwin) dan mim.\n\nDalam keadaan normal, makhraj mim adalah dua bibir bertemu dan makhraj nun adalah hujung lidah bertemu lelangit mulut. Tetapi dalam keadaan ghunnah, makhraj mim dan nun bercampur dengan khaisyum (baca lebih lanjut dalam bahagian makhraj).",
        image: "assets/images/hamzah_wasal.jpg"),
    Item(
        title: "Sukun",
        longText:
            "Terdapat 2 jenis sukun (mati) di dalam Al Quran. Sukun yg pertama dinamakan Sukun Asli manakala yg kedua adalah Sukun yg mendatang.\n\nSukun Asli adalah huruf yg bertanda sukun. Sukun itu dibaca sama ada ketika waqaf (berhenti) mahupun ketika wasal (sambung). Dinamakan Asli kerana ia tidak berubah dan merupakan asal kepada huruf tersebut bertanda sukun.\n\nContoh hukum adalah pada Mad Lazim Kalimi.\n\nSukun mendatang pula atau disebut ‘aridhah adalah sukun yg terhasil daripada huruf yg bertanda (baris, sabdu atau tanwin). Disebut sukun mendatang adalah disebabkan berlaku sesuatu pada huruf berbaris tersebut iaitu waqaf (berhenti). Ia menjadi sukun apabila waqaf tetapi kembali kepada bacaan asalnya berbaris apabila wasal (sambung).\n\nContohnya adalah pada hukum Mad Aridh Lissukun.",
        image: "assets/images/hamzah_wasal.jpg"),
    Item(
        title: "Wajibul Ghunnah",
        longText:
            "Ia berlaku pada ن dan م yang mempunyai tanda tasydid(sabdu) diatasnya. Al-Jalalah berkata: jika diwaqafkan di hujung ayat, kadar bacaannya adalah 2 atau 4 atau 6 harakat.",
        image: "assets/images/wajibul ghunnah.png"),
    Item(
        title: "Mad Asli",
        longText:
            "Bacaan mad asli mestilah dipanjangkan jika bertemu dengan huruf mad iaitu alif, wau dan ya serta dipanjangkan sepanjang 2 harakat.",
        image: "assets/images/mad asli.jpg"),
    Item(
        title: "Qalqalah",
        longText:
            "Dari segi bahasa, ia bermaksud pergerakan yang melantun. Huruf-huruf qalqalah dibaca dengan bunyi seakan-akan berdetik atau memantul.\n\nHuruf qalqalah terbahagi 5 huruf iaitu: ق ط ب ج د \n\nQalqalah terbahagi kepada 2 jenis:\n\nQalqalah Sughra:\nJika huruf-huruf qalqalah berada di pertengahan ayat atau ditengah perkataan.\n\nQalqalah Qubra:\nJika waqaf pada huruf-huruf qalqalah.",
        image: "assets/images/qalqalah.jpg"),
    Item(
        title: "Iqlab",
        longText:
            "Ia terjadi apabila berlaku pertemuan nun sukun atau tanwin dengan ب, nun sukun dan tanwin perlu ditukarkan kepada mim maqlubah serta diikhfa’kan. Iqlab dibaca dengan meringankan tutupan bibir serta lemah lembut pada huruf ba’dan mengekalkan ghunnah 2 harakat.",
        image: "assets/images/iqlab.jpg"),
    Item(
        title: "Izhar Halqi",
        longText:
            "Dari segi bahasa, ia bererti jelas. Izhar halqi terjadi apabila nun sukun bertemu huruf-huruf Halq yakni huruf-huruf yang keluar dari makhraj tekak iaitu: ء ه ع غ ح خ\n\nIanya dibaca dengan menjelaskan huruf nun sukun dan tanwin tanpa disertai ghunnah, tepat dari makhrajnya, sempurna sifat aslinya dan tidak dipengaruhi huruf berikutnya. ",
        image: "assets/images/izhar halqi.jpg"),
    Item(
        title: "Izhar Syafawi",
        longText:
            "Ia terjadi apabila mim sukun bertemu dengan huruf selain daripada huruf ب dan م. Bacaan diizharkan (dijelaskan) iaitu menjelaskan dengan sempurna makhraj dan sifat huruf mim.",
        image: "assets/images/izhar syafawi.jpg"),
    Item(
        title: "Ikhfa’ Haqiqi",
        longText:
            "Ikhfa’ haqiqi terjadi apabila nun mati atau tanwin bertemu dengan salah satu huruf-huruf ikhfa’. Huruf-huruf ikhfa ialah: س ت ج د ص ذ ك ف ث ق ض ط ظ ش ز \n\nHuruf nun mati dan tanwin dibaca dengan dengung apabila bertemu dengan huruf-huruf ikhfa’.\n\nDari segi istilah, ia bermaksud menyembunyikan bacaan atau lafaz nun mati dan tanwin diantara izhar dan idgham tanpa tasydid serta kekal ghunnah(2 harakat kesempurnaannya)",
        image: "assets/images/ikhfa' haqiqi.jpg"),
    Item(
        title: "Ikhfa’ Syafawi",
        longText:
            "Ikhfa’ syafawi terjadi apabila nun mati atau tanwin bertemu dengan huruf ب. Apabila huruf mim sukun bertemu dengan huruf ب maka diikhfa’kan iaitu dengan merapatkan bibir dengan tutupan yang ringan serta berdeىgung 2 harakat. ",
        image: "assets/images/ikhfa' syafawi.jpg"),
    Item(
        title: "Idgham Ma’al Ghunnah",
        longText:
            "Dari segi bahasa, idgham bermaksud memasukkan. Idgham ma'al ghunnah dibaca dengan memasukkan huruf pertama pada huruf kedua dengan mengabaikan sebahagian sifatnya serta berdengung 2 harakat.",
        image: "assets/images/idgham ma'al ghunnah.jpg"),
    Item(
        title: "Idgham Bila Ghunnah",
        longText:
            "Dari segi bahasa, idgham bermaksud memasukkan. Idgham bila ghunnah dibaca dengan memasukkan huruf pertama pada huruf kedua menyempurnakan makhraj dan sifatnya tanpa dengung.",
        image: "assets/images/idgham bila ghunnah.jpg"),
    Item(
        title: "Idgham Mithlain Soghir",
        longText:
            "Ia terjadi apabila mim sukun bertemu dengan huruf م , maka hendaklah diidghamkan iaitu merapatkan bibir dengan tutupan yang sempurna serta berdengung dengan 2 harakat.",
        image: "assets/images/hamzah_wasal.jpg"),
    Item(
        title: "Idgham Mutamathilain",
        longText:
            "Ia terjadi apabila bertemunya 2 huruf yang serupa pada nama, makhraj dan sifat (huruf yang sama) sama ada dalam satu kalimah atau dua kalimah. Hukum bacaannya wajib idgham.\n\nTetapi, jika huruf pertama terdiri daripada huruf mad, maka ia tidak boleh diidghamkan pada huruf kedua kecuali jika huruf kedua terdiri daripada huruf lin (و dan ي).",
        image: "assets/images/idgham mutamasilain.jpg"),
    Item(
        title: "Idgham Mutaqoribain",
        longText:
            "Idgham Mutaqoribain berlaku apabila hal keadaan bertemunya 2 huruf yang hampir pada makhrajnya dan sifat, hampir pada makhraj sahaja atau hampir pada sifatnya sahaja. Huruf-hurufnya ada empat iaitu: ق-ك, ل-ر .\n\nBagi huruf ل-ر, wajib diidghamkan secara Idgham yang sempurna tanpa dengung kecuali (*ayat bal ran yang dibaca saktah) kerana terdapat tanda sabdu yang terletak diatas huruf ر.\n\nBegitu juga dengan huruf ق-ك kerana terdapat tanda sabdu yang terletak diatas huruf ك.",
        image: "assets/images/idgham mutaqoribain.jpg"),
    Item(
        title: "Idgham Mutajanisain",
        longText:
            "Idgham Mutaqoribain berlaku apabila hal keadaan bertemunya 2 huruf yang hampir pada makhrajnya tetapi berlainan sifatnya.Makhraj Huruf: ta-dal, tho-ta, zho-zal, zal-tsa\n\na.	Makhraj huruf ba wajib diidghamkan pada mim secara idgham yang sempurna kemudian disertai dengan dengung kerana mim yang bersabdu.",
        image: "assets/images/idgham mutajanisain.jpg"),
    Item(
        title: "Mad Aridh Lissukun",
        longText:
            "Ia terjadi sekiranya huruf mad bertemu sukun yang mendatang iaitu ketika waqaf sahaja. Menurut riwayat Imam Hafs Toriq Syathibiyyah, panjang bacaan ialah 2, 4 atau 6 harakat yang dipilih secara konsisten dalam satu-satu bacaan.",
        image: "assets/images/hamzah_wasal.jpg"),
    Item(
        title: "Mad Wajib Muttasil ",
        longText:
            "Erti Mad Wajib Muttasil ialah mad yang wajib berhubung, apabila berhimpun huruf mad (ا و ي) dengan hamzah(ء) dalam satu kalimah.\n\nKadar bacaannya dibaca 4/5 harakat ketika wasal dan 6 harakat ketika waqaf. Bacaan ini berlaku apabila huruf mad bertemu dengan huruf hamzah dalam satu kalimah.",
        image: "assets/images/mad wajib muttasil.jpg"),
    Item(
        title: "Mad Jaiz Munfasil",
        longText:
            "Erti Mad Jaiz Munfasil ialah mad yang harus bercerai. Ia dinamakan Mad Jaiz Munfasil kerana huruf mad (ا و ي) dan huruf hamzah(ء) berada di awal kalimah berikutnya secara berasingan iaitu ketika wasal sahaja.\n\nHukumnya harus dibaca 4/5 harakat ketika wasal dan hanya dibaca 2 harakat ketika waqaf. Bacaan ini berlaku apabila huruf mad ada huruf hamzah, kedua-duanya bertemu dalam dua kalimah yang berasingan.",
        image: "assets/images/mad jaiz munfasil.jpg"),
    Item(
        title: "Mad Tamkin",
        longText:
            "Mad Tamkin terjadi apabila bertemu dua huruf ي dalam satu kalimah; ي yang pertama berbaris manakala ي yang kedua berbaris mati (tidak dibariskan). Cara membacanya ialah dimadkan huruf ي bersabdu serta berbaris di bawah, yakni huruf ي kedua berbaris mati sebagai huruf mad. Bacaan madnya tetap dengan kadar 2 harakat.",
        image: "assets/images/mad tamkin.jpg"),
    Item(
        title: "Mad Lazim Kalimi Muthaqqal",
        longText:
            "Berlaku dalam satu kalimah yang bersabdu iaitu bertemu huruf mad dengan huruf yang bersabdu di dalam satu kalimah. Cara hendak mengenal Mad Lazim Kalimi Muthaqqal ialah selepas huruf mad terdapat huruf yang bersabdu.\n\nKadar bacaannya ialah 6 harakat ketika wasal dan waqaf.",
        image: "assets/images/Mad Lazim Kalimi Muthaqqal.jpg"),
    Item(
        title: "Mad Lazim Kalimi Mukhaffaf",
        longText:
            "Berlaku dalam satu kalimah yang tidak bersabdu tetapi ada tanda mati iaitu bertemu huruf mad dengan huruf mati dalam satu kalimah.  Cara hendak mengenal Mad Lazim Kalimi Mukhaffaf ialah selepas huruf mad terdapat huruf yang bertanda mati.\n\nKadar bacaannya ialah 6 harakat ketika wasal dan waqaf. Tedapat di tua tempat sahaja di dalam Al-Quran iaitu surah Yunus ayat 51 dan 91.",
        image: "assets/images/Mad Lazim Kalimi Mukhaffaf.jpg"),
    Item(
        title: "Mad Lazim Harfi Muthaqqal",
        longText:
            "Huruf mad yang terdapat pada huruf-huruf pembuka surah bertemu sukun asli dan huruf sukun tersebut diidghamkan ke dalam huruf selepasnya. ",
        image: "assets/images/Mad Lazim Harfi Muthaqqal.jpg"),
    Item(
        title: "Mad Lazim Harfi Mukhaffaf",
        longText:
            "Huruf mad yang terdapat pada huruf-huruf pembuka surah yang mempunyai dua ejaan huruf, dan huruf yang akhir (huruf kedua) adalah huruf mad. Ia berlaku dalam satu huruf yang dibaca tanpa idgham pada huruf yang serangkai sahaja.",
        image: "assets/images/Mad Lazim Harfi Muthaqqal.jpg"),
    Item(
        title: "Mad Lin",
        longText:
            "Ia berlaku apabila huruf و dan ي bertanda mati dan huruf sebelum kedua-duanya berbaris diatas, serta huruf selepasnya dibaca mati kerana waqaf (habis ayat). Kadar bacaan madnya adalah 2/4/6 harakat seperti Mad Aridh Lissukun. Apabila bacaan tidak diwaqafkan, maka ia tidak boleh dimadkan.",
        image: "assets/images/mad lin.jpg"),
    Item(
        title: "Mad Badal",
        longText:
            "Mad Badal terjadi apabila pertemuan huruf mad berturutan dalam satu kalimah , huruf hamzah pertama berbaris sedangkan huruf hamzah kedua bertanda mati. Ia dinamakan mad badal kerana huruf hamzah yang kedua (berbaris mati) digantikan (Badal) dengan huruf mad. Kadar bacaannya ialah 6 harakat.",
        image: "assets/images/mad badal.jpg"),
    Item(
        title: "Mad Farq",
        longText:
            "Mad Farq terjadi apabila bertemunya dua huruf hamzah, yang pertama hamzah istifham (pertanyaan) manakala yang kedua adalam hamzah wasal di dalam alif lam ma’rifah. Ia dibaca dengan 6 harakat kerana huruf hamzah wasal ditukar menjadi huruf mad alif dan diikuti huruf lam bertanda mati. ",
        image: "assets/images/mad farq.jpg"),
    Item(
        title: "Mad Silah Towilah",
        longText:
            "Ia terjadi apabila terdapat huruf hamzah selepas ha dhomir (kata ganti). Dalam al-Quran Resm ‘Uthmani, apabila ia berbaris hadapan, ia diikuti dengan huruf و kecil bertanda mad diatasnya dan apabila ia berbaris dibawah, ia diikuti dengan huruf ي kecil bertanda mad diatasnya (lihat contoh ayat). Kadar bacaannya hendaklah dipanjangkan dengan kadar 4/5 harakat.",
        image: "assets/images/mad silah towilah.jpg"),
    Item(
        title: "Mad Silah Qasirah",
        longText:
            "Ia terjadi apabila terdapat huruf hamzah selepas ha dhomir (kata ganti). Dalam al-Quran Resm ‘Uthmani, apabila ia berbaris hadapan, ia diikuti dengan huruf و kecil bertanda mad diatasnya dan apabila ia berbaris dibawah, ia diikuti dengan huruf ي kecil bertanda mad diatasnya (lihat contoh ayat). Kadar bacaannya hendaklah dipanjangkan dengan kadar 2 harakat.",
        image: "assets/images/mad silah qasirah.jpg"),
    Item(
        title: "Mad I’wad",
        longText:
            "Apabila tanwin baris dua di atas terletak di huruf akhir kalimah dan pada ketika bacaan berhenti padanya, maka tanwin baris dua di atas hendaklah dibaca dengan baris satu diatas, serta mad 2 harakat. ",
        image: "assets/images/mad i'wad.jpg"),
    Item(
        title: "Mad Ta’zhim",
        longText:
            "Mad Ta’zhim ialah mad pada perkataan لآ bererti “tidak” ketika pertemuannya dengan perkataan yang terdapat pada kalimah tauhid (إله).\n\n Bagi mereka yang membaca mad jaiz munfasil dengan kadar 2/4/6 harakat, apabila bertemu perkataan (إله) di dalam kalimah tauhid, ia dibaca 6 harakat.",
        image: "assets/images/mad silah qasirah.jpg"),
    Item(
        title: "Mad Tabriah",
        longText:
            "Mad Tabriah ialah mad pada perkataan لا bererti tidak ketika pertemuannya dengan perkataan bukan pada kalimah tauhid (إله) bertujuan untuk menegas atau memperkuatkan kepercayaan kepada Allah atau kepada apa yang disarankan Allah kepada kita. \n\nKadar bacaan adalah dua harakat.",
        image: "assets/images/mad i'wad.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          title: const Text("Asas"),
          centerTitle: true,
          backgroundColor: secondaryColor,
        ),
        body: Center(
            child: ListView.builder(
          itemCount: _itemList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailScreen(item: _itemList[index])),
                  );
                },
                child: Card(
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.all(18),
                    child: Text(
                      _itemList[index].title,
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ));
          },
        )));
  }
}
