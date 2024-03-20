import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Story extends StatefulWidget {
  const Story({super.key});

  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        fontFamily: 'ProductSans',
        colorScheme: const ColorScheme.light(
          primary: Color(0xff42A3A7),
          onPrimary: Colors.white,
        ),
      ),
      child: ListView(children: [
        const SizedBox(height: 25),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(CupertinoIcons.search),
              hintText: 'Masukkan keyword cerita',
              labelText: 'Cari Cerita',
              labelStyle: const TextStyle(color: Colors.black),
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xff42A3A7),
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
        ),
        Container(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
          child: Row(
            children: [
              Container(
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
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () async {
                    final DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: _selectedDate ?? DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2025),
                      selectableDayPredicate: (date) =>
                          date.weekday != DateTime.saturday &&
                          date.weekday != DateTime.sunday,
                    );
                    if (picked != null) {
                      setState(() {
                        _selectedDate =
                            DateTime(picked.year, picked.month, picked.day);
                      });
                    }
                  },
                  child: const Icon(Icons.calendar_today),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: const Text("Pilih Tanggal Cerita",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
        if (_selectedDate != null)
          itemDesc2('Tanggal Cerita',
              '${_selectedDate!.day}-${_selectedDate!.month}-${_selectedDate!.year}'),
        const SizedBox(
          height: 10,
        ),
        itemDesc('Suka Duka di SI-FST',
            'Ketika awalnya saya memulai kuliah di jurusan Sistem Informasi di Universitas Airlangga, saya sangat antusias dengan segala kesempatan yang ditawarkan untuk mendalami konsep dan teknologi terkini dalam dunia informasi. Mulai dari materi perkuliahan hingga proyek-proyek praktis, semuanya terasa begitu menarik dan memicu semangat belajar saya. \nTapi, seiring berjalannya waktu, saya mulai menyadari bahwa tidak semua yang tampak indah itu mudah. Tantangan-tantangan seperti tugas kuliah yang menuntut dan jadwal yang padat seringkali membuat saya merasa tertekan. Terkadang, saya bahkan merasa ragu dengan kemampuan saya sendiri. Terutama saat mendekati deadline tugas atau menjelang ujian. \nMeskipun begitu, saya bersyukur atas setiap tantangan yang saya hadapi. Mereka semua memberikan saya pelajaran berharga. Saya belajar bagaimana mengelola waktu dengan lebih efisien, meningkatkan kemampuan multitasking, dan memperdalam pemahaman terhadap materi kuliah. Selain itu, saya juga belajar bekerja sama dalam tim, mengasah keterampilan komunikasi, dan mengembangkan ketangguhan mental untuk menghadapi tekanan. \nTidak hanya itu, kuliah di jurusan Sistem Informasi Universitas Airlangga juga memberi saya kesempatan untuk terlibat dalam berbagai kegiatan di luar kelas. Mulai dari seminar dan workshop hingga berbagai kompetisi teknologi, saya aktif dalam memanfaatkan setiap kesempatan untuk memperluas jaringan dan mengembangkan keterampilan tambahan. \nMeskipun perjalanan kuliah ini tidak selalu mudah, saya bersyukur atas semua pengalaman yang telah saya dapatkan. Mereka semua telah membentuk saya menjadi pribadi yang lebih tangguh, percaya diri, dan siap menghadapi tantangan di dunia nyata setelah lulus nanti. Kesempatan untuk belajar dan berkembang di jurusan Sistem Informasi Universitas Airlangga adalah anugerah yang saya hargai dan akan saya manfaatkan sebaik mungkin.'),
        const SizedBox(height: 10),
      ]),
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
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  itemDesc2(String title, String subtitle) {
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
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
