import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark));
  runApp(ProfileScreen());
}

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final List<Tab> myTab = [
    const Tab(
        text: "Profile",
        icon: Icon(
          CupertinoIcons.person_solid,
          size: 30,
        )),
    const Tab(
        text: "Education",
        icon: Icon(
          CupertinoIcons.book_solid,
          size: 30,
        )),
    const Tab(
        text: "Story",
        icon: Icon(
          CupertinoIcons.news_solid,
          size: 30,
        )),
    const Tab(
        text: "Skills",
        icon: Icon(
          CupertinoIcons.gear_solid,
          size: 30,
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'ProductSans',
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 70,
            title: const Text(
              "Hello Viewer!",
              style: TextStyle(
                fontFamily: "ProductSans",
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                // borderRadius: const BorderRadius.only(
                //     bottomLeft: Radius.circular(20),
                //     bottomRight: Radius.circular(20)),
                color: Color(0xff42A3A7),
                // gradient: LinearGradient(colors: [
                //   const Color(0xff42A3A7),
                //   Color.fromARGB(255, 0, 85, 76)
                // ], begin: Alignment.bottomCenter, end: Alignment.topCenter)
              ),
            ),
            bottom: TabBar(
              labelStyle: const TextStyle(fontWeight: FontWeight.normal),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white60,
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              // indicatorPadding: EdgeInsets.all(10),
              // indicator: BoxDecoration(
              //     color: Colors.amber,
              //     border: Border(
              //         bottom: BorderSide(
              //       color: Colors.black,
              //       width: 5,
              //     ))),
              tabs: myTab,
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
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
                      // const Padding(
                      //   padding: EdgeInsets.only(left: 20),
                      //   child: Text(
                      //     "1. Biodata Mahasiswa",
                      //     style: TextStyle(
                      //       fontSize: 18,
                      //       fontFamily: 'ProductSans',
                      //       height: 2,
                      //     ),
                      //   ),
                      // ),
                      const SizedBox(height: 10),
                      itemProfile(
                          'NIM', '187221007', CupertinoIcons.creditcard),
                      const SizedBox(height: 10),
                      itemProfile('Family', 'Anak ke-2 dari 2 bersaudara',
                          CupertinoIcons.person),
                      const SizedBox(height: 10),
                      itemProfile(
                          'Alamat', 'Kota Surabaya', CupertinoIcons.location),
                      const SizedBox(height: 10),
                      itemProfile('Tempat, Tanggal Lahir',
                          'Tuban, 16 Oktober 2003', CupertinoIcons.calendar),
                      const SizedBox(height: 10),
                      itemProfile('Hobi', 'Traveling', CupertinoIcons.heart),
                      const SizedBox(height: 10),
                      itemDesc('Deskripsi Diri',
                          'Individu yang kreatif, ramah, dan penuh semangat, selalu melihat dunia dengan mata yang penuh warna dan penuh dengan ide-ide baru'),
                      const SizedBox(height: 20),
                    ],
                  )),
              ListView(
                children: [
                  const SizedBox(height: 25),
                  itemHistPendidikan(
                      'Sekolah Dasar (SD)', 'SD Negeri 1 Sumurcinde'),
                  const SizedBox(height: 10),
                  itemHistPendidikan('Sekolah Menengah Pertama (SMP)',
                      'SMP Negeri 1 Bojonegoro'),
                  const SizedBox(height: 10),
                  itemHistPendidikan(
                      'Sekolah Menengah Kejuruan (SMK)', 'SMK Telkom Malang'),
                  const SizedBox(height: 10),
                  itemHistPendidikan(
                      'Perguruan Tinggi', 'Universitas Airlangga'),
                  const SizedBox(height: 10),
                ],
              ),
              ListView(children: [
                const SizedBox(height: 25),
                itemDesc('Suka Duka di SI-FST',
                    'Ketika awalnya saya memulai kuliah di jurusan Sistem Informasi di Universitas Airlangga, saya sangat antusias dengan segala kesempatan yang ditawarkan untuk mendalami konsep dan teknologi terkini dalam dunia informasi. Mulai dari materi perkuliahan hingga proyek-proyek praktis, semuanya terasa begitu menarik dan memicu semangat belajar saya. \nTapi, seiring berjalannya waktu, saya mulai menyadari bahwa tidak semua yang tampak indah itu mudah. Tantangan-tantangan seperti tugas kuliah yang menuntut dan jadwal yang padat seringkali membuat saya merasa tertekan. Terkadang, saya bahkan merasa ragu dengan kemampuan saya sendiri. Terutama saat mendekati deadline tugas atau menjelang ujian. \nMeskipun begitu, saya bersyukur atas setiap tantangan yang saya hadapi. Mereka semua memberikan saya pelajaran berharga. Saya belajar bagaimana mengelola waktu dengan lebih efisien, meningkatkan kemampuan multitasking, dan memperdalam pemahaman terhadap materi kuliah. Selain itu, saya juga belajar bekerja sama dalam tim, mengasah keterampilan komunikasi, dan mengembangkan ketangguhan mental untuk menghadapi tekanan. \nTidak hanya itu, kuliah di jurusan Sistem Informasi Universitas Airlangga juga memberi saya kesempatan untuk terlibat dalam berbagai kegiatan di luar kelas. Mulai dari seminar dan workshop hingga berbagai kompetisi teknologi, saya aktif dalam memanfaatkan setiap kesempatan untuk memperluas jaringan dan mengembangkan keterampilan tambahan. \nMeskipun perjalanan kuliah ini tidak selalu mudah, saya bersyukur atas semua pengalaman yang telah saya dapatkan. Mereka semua telah membentuk saya menjadi pribadi yang lebih tangguh, percaya diri, dan siap menghadapi tantangan di dunia nyata setelah lulus nanti. Kesempatan untuk belajar dan berkembang di jurusan Sistem Informasi Universitas Airlangga adalah anugerah yang saya hargai dan akan saya manfaatkan sebaik mungkin.'),
                const SizedBox(height: 10),
              ]),
              ListView(children: [
                const SizedBox(height: 25),
                itemProfile('Keahlian', 'UI/UX and Graphic Design',
                    CupertinoIcons.gear),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Padding(
                        padding: EdgeInsets.only(left: 20, right: 20)),
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
              ]),
            ],
          ),
        ),
      ),
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
          style: const TextStyle(fontSize: 14, fontFamily: 'ProductSans', fontWeight: FontWeight.bold),
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
          style: const TextStyle(fontSize: 18, fontFamily: 'ProductSans', fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          textAlign: TextAlign.justify,
          style: const TextStyle(fontSize: 16, fontFamily: 'ProductSans',),
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
          style: const TextStyle(fontSize: 14, fontFamily: 'ProductSans', fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontSize: 18, fontFamily: 'ProductSans'),
        ),
      ),
    );
  }
}
