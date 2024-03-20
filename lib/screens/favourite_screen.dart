import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:profileapp/provider/favourite_provider.dart';
import 'package:profileapp/screens/selected_fav_items_screen.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("build");
    }
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        toolbarHeight: 70,
        title: const Text(
          "Daftar Mata Kuliah",
          style: TextStyle(
            fontFamily: "ProductSans",
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SelectedFavItemsScreen(),
                  ));
            },
            child: const Icon(
              CupertinoIcons.bookmark_solid,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
        backgroundColor: const Color(0xff42A3A7),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Consumer<FavouriteItemProvider>(
              builder: (context, value, child) {
                return ListView.builder(
                  itemCount: matkulList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
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
                        onTap: () {
                          if (value.selectedItem.contains(index)) {
                            value.removeItem(index);
                          } else {
                            value.addItem(index);
                          }
                        },
                        title: Text(
                          matkulList[index].judul,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(
                          value.selectedItem.contains(index)
                              ? CupertinoIcons.bookmark_fill
                              : CupertinoIcons.bookmark,
                          color: value.selectedItem.contains(index)
                              ? Colors.teal
                              : const Color.fromARGB(255, 96, 96, 96),
                        ),
                        subtitle: Text('${matkulList[index].sks} SKS'),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
