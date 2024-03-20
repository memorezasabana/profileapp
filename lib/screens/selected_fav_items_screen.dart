import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:profileapp/provider/favourite_provider.dart';

class SelectedFavItemsScreen extends StatefulWidget {
  const SelectedFavItemsScreen({super.key});

  @override
  State<SelectedFavItemsScreen> createState() => _SelectedFavItemsScreenState();
}

class _SelectedFavItemsScreenState extends State<SelectedFavItemsScreen> {
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("build");
    }
    final selectedItemProvider = Provider.of<FavouriteItemProvider>(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Daftar Mata Kuliah Disimpan",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff42A3A7),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: selectedItemProvider.selectedItem.length,
              itemBuilder: (context, index) {
                int itemIndex = selectedItemProvider.selectedItem[index];
                return Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
                      selectedItemProvider.removeItem(itemIndex);
                    },
                    title: Text(
                      matkulList[itemIndex].judul,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: const Icon(
                      CupertinoIcons.delete_solid,
                      color: Colors.teal,
                    ),
                    subtitle: Text('${matkulList[itemIndex].sks} SKS'),
                  ),
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
