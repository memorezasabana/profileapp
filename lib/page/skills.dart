import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const SizedBox(height: 25),
      itemProfile('Keahlian', 'UI/UX and Graphic Design', CupertinoIcons.gear),
      const SizedBox(height: 20),
      Row(
        children: [
          const Padding(padding: EdgeInsets.only(left: 20, right: 20)),
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
    ]);
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
          style: const TextStyle(
              fontSize: 18,
              fontFamily: 'ProductSans',
              fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            fontSize: 16,
            fontFamily: 'ProductSans',
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
          style: const TextStyle(
              fontSize: 14,
              fontFamily: 'ProductSans',
              fontWeight: FontWeight.bold),
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
}
