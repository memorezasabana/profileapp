import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:profileapp/screens/favourite_screen.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _isAvatarSwitched = false;

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
      child: Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: ListView(
            children: [
              const SizedBox(height: 25),
              CircleAvatar(
                radius: 60,
                child: ClipOval(
                  child: _isAvatarSwitched
                      ? Image.asset('assets/images/userprofile.png')
                      : Image.asset('assets/images/user.jpg'),
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
              //     "1.Biodata Mahasiswa",
              //     style: TextStyle(
              //       fontSize: 18,
              //       fontFamily: 'ProductSans',
              //       height: 2,
              //     ),
              //   ),
              // ),
              Switch(
                value: _isAvatarSwitched,
                onChanged: (value) {
                  setState(() {
                    _isAvatarSwitched = value;
                  });
                },
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
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const FavouriteScreen();
                    },
                  ));
                },
                child: itemProfile(
                    'Total SKS  Saat Ini', '59 SKS', CupertinoIcons.book),
              ),
              const SizedBox(height: 10),
              itemDesc('Deskripsi Diri',
                  'Individu yang kreatif, ramah, dan penuh semangat, selalu melihat dunia dengan mata yang penuh warna dan penuh dengan ide-ide baru'),
              const SizedBox(height: 20),
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
}
