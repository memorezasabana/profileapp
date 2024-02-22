import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
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
        title: const Text(
          "BISMILLAH BELAJAR FLUTTER",
          style: TextStyle(fontFamily: "ProductSans", color: Colors.white),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  colors: [const Color(0xff42A3A7), Colors.teal.shade200],
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
              const Align(
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
              const Padding(
                padding: EdgeInsets.only(left: 20),
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
              const Padding(
                padding: EdgeInsets.only(left: 20),
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
              const Padding(
                padding: EdgeInsets.only(left: 20),
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
              const Padding(
                padding: EdgeInsets.only(left: 20),
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
              const SizedBox(height: 20),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 20)),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: const Image(
                      width: 180,
                      image: NetworkImage(
                          'https://cdn.dribbble.com/users/6485793/screenshots/19334768/media/4a2f6e5de152ed49eec66fa322affaae.png'),
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Flexible(
                    child: Text(
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      softWrap: true,
                      "(cr. dribbble/memorezasabana) Project intern at PT. Aksamedia Mulia",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'ProductSans',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              itemDesc('Portofolio: Landing Page Web',
                  'Real project yang saya kerjakan sebuah desain landing page untuk website Aneka Corak Cipta, suatu perusahaan yang menawarkan layanan desain arsitektural, workshop mekanikal, dan rental alat berat dalam satu platform yang menarik dan fungsional'),
              const SizedBox(height: 30),
            ],
          )),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 5),
                color: Colors.teal.shade400.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontSize: 14, fontFamily: 'ProductSans'),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontSize: 18, fontFamily: 'ProductSans'),
        ),
        leading: Icon(iconData),
        tileColor: Colors.white,
      ),
    );
  }

  itemDesc(String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 5),
                color: Colors.teal.shade400.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18, fontFamily: 'ProductSans'),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontSize: 16, fontFamily: 'ProductSans'),
        ),
      ),
    );
  }

  itemHistPendidikan(String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 5),
                color: Colors.teal.shade400.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontSize: 14, fontFamily: 'ProductSans'),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontSize: 18, fontFamily: 'ProductSans'),
        ),
      ),
    );
  }
}
