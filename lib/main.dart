import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BELAJAR FLUTTER',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Text(
          "BISMILLAH BELAJAR FLUTTER",
          style: TextStyle(fontFamily: "ProductSans", color: Colors.white),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  colors: [Color(0xff42A3A7), Colors.teal.shade200],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: ListView(
            children: [
              const SizedBox(height: 25),
              CircleAvatar(
                radius: 60,
                child: ClipOval(
                  child: Image.asset('assets/images/user.jpg'),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Memoreza Sabana",
                  style: TextStyle(
                    fontSize: 22,
                    height: 3,
                    fontFamily: 'ProductSans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "1. Biodata Mahasiswa",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'ProductSans',
                    height: 2,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              itemProfile('NIM', '187221007', CupertinoIcons.creditcard),
              const SizedBox(height: 10),
              itemProfile('Family', 'Anak ke-2 dari 2 bersaudara',
                  CupertinoIcons.person),
              const SizedBox(height: 10),
              itemProfile('Alamat', 'Kota Surabaya', CupertinoIcons.location),
              const SizedBox(height: 10),
              itemProfile('Tempat, Tanggal Lahir', 'Tuban, 16 Oktober 2003',
                  CupertinoIcons.calendar),
              const SizedBox(height: 10),
              itemProfile('Hobi', 'Traveling', CupertinoIcons.heart),
              const SizedBox(height: 10),
              itemDesc('Deskripsi Diri',
                  'Individu yang kreatif, ramah, dan penuh semangat, selalu melihat dunia dengan mata yang penuh warna dan penuh dengan ide-ide baru'),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "2. Histori Pendidikan",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'ProductSans',
                    height: 2,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              itemHistPendidikan(
                  'Sekolah Dasar (SD)', 'SD Negeri 1 Sumurcinde'),
              const SizedBox(height: 10),
              itemHistPendidikan(
                  'Sekolah Menengah Pertama (SMP)', 'SMP Negeri 1 Bojonegoro'),
              const SizedBox(height: 10),
              itemHistPendidikan(
                  'Sekolah Menengah Kejuruan (SMK)', 'SMK Telkom Malang'),
              const SizedBox(height: 10),
              itemHistPendidikan('Perguruan Tinggi', 'Universitas Airlangga'),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "3. Pengalaman Studi",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'ProductSans',
                    height: 2,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              itemDesc('Suka Duka di SI-FST',
                  'Kesempatan untuk mempelajari berbagai konsep dan teknologi terkini dalam bidang sistem informasi yang menarik. Namun, di sisi lain, terdapat juga tantangan seperti tugas yang menuntut, jadwal yang padat'),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "4. Keahlian Mahasiswa",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'ProductSans',
                    height: 2,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              itemProfile(
                  'Keahlian', 'UI/UX and Graphic Design', CupertinoIcons.gear),
              const SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                height: 240,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.dribbble.com/users/6485793/screenshots/19334768/media/4a2f6e5de152ed49eec66fa322affaae.png'),
                  ),
                ),
              ),
              Container(
                child: Text(
                  textAlign: TextAlign.center,
                  "(cr. dribbble/memorezasabana)",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'ProductSans',
                    height: 2,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              itemDesc('Portofolio: Landing Page Web',
                  'Real project yang saya kerjakan sebuah desain landing page untuk website Aneka Corak Cipta, suatu perusahaan yang menawarkan layanan desain arsitektural, workshop mekanikal, dan rental alat berat dalam satu platform yang menarik dan fungsional'),
              const SizedBox(height: 30),
            ],
          )),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      margin: EdgeInsets.only(right: 20, left: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.teal.shade400.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontSize: 14, fontFamily: 'ProductSans'),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 18, fontFamily: 'ProductSans'),
        ),
        leading: Icon(iconData),
        tileColor: Colors.white,
      ),
    );
  }

  itemDesc(String title, String subtitle) {
    return Container(
      margin: EdgeInsets.only(right: 20, left: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.teal.shade400.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, fontFamily: 'ProductSans'),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 16, fontFamily: 'ProductSans'),
        ),
      ),
    );
  }

  itemHistPendidikan(String title, String subtitle) {
    return Container(
      margin: EdgeInsets.only(right: 20, left: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.teal.shade400.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontSize: 14, fontFamily: 'ProductSans'),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 18, fontFamily: 'ProductSans'),
        ),
      ),
    );
  }
}
