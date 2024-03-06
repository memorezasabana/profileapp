import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 25),
        itemHistPendidikan('Sekolah Dasar (SD)', 'SD Negeri 1 Sumurcinde'),
        const SizedBox(height: 10),
        itemHistPendidikan(
            'Sekolah Menengah Pertama (SMP)', 'SMP Negeri 1 Bojonegoro'),
        const SizedBox(height: 10),
        itemHistPendidikan(
            'Sekolah Menengah Kejuruan (SMK)', 'SMK Telkom Malang'),
        const SizedBox(height: 10),
        itemHistPendidikan('Perguruan Tinggi', 'Universitas Airlangga'),
        const SizedBox(height: 10),
      ],
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
          style: const TextStyle(
              fontSize: 14,
              fontFamily: 'ProductSans',
              fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontSize: 18, fontFamily: 'ProductSans'),
        ),
      ),
    );
  }
}
