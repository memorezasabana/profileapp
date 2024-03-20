import 'package:flutter/foundation.dart';

class FavouriteItemProvider with ChangeNotifier {
  final List<int> _selectedItem = [];

  List<int> get selectedItem => _selectedItem;

  void addItem(int value) {
    _selectedItem.add(value);
    notifyListeners();
  }

  void removeItem(int value) {
    _selectedItem.remove(value);
    notifyListeners();
  }
}

class Matkul {
  final String judul;
  final int sks;

  const Matkul({required this.judul, required this.sks});
}

final List<Matkul> matkulList = [
  const Matkul(judul: "Agama Islam", sks: 2),
  const Matkul(judul: "B Indonesia", sks: 2),
  const Matkul(judul: "Biologi", sks: 2),
  const Matkul(judul: "Kimia", sks: 2),
  const Matkul(judul: "Kalkulus", sks: 3),
  const Matkul(judul: "Pancasila", sks: 2),
  const Matkul(judul: "Kewarganegaraan", sks: 2),
  const Matkul(judul: "PSI", sks: 2),
  const Matkul(judul: "Data dan Pustaka", sks: 2),
  const Matkul(judul: "B Inggris 1", sks: 2),
  const Matkul(judul: "Fisika", sks: 2),
  const Matkul(judul: "MTL", sks: 2),
  const Matkul(judul: "Statistika Deskriptif", sks: 3),
  const Matkul(judul: "Algoritma dan Pemrograman", sks: 3),
  const Matkul(judul: "Algoritma dan Pemrograman Prak", sks: 2),
  const Matkul(judul: "Komunikasi dan Pengembangan Diri", sks: 2),
  const Matkul(judul: "Pengantar Kolaborasi Keilmuan", sks: 2),
  const Matkul(judul: "Logika dan Pemikiran Kritis", sks: 2),
  const Matkul(judul: "B Inggris 2", sks: 2),
  const Matkul(judul: "Matematika Diskrit", sks: 2),
  const Matkul(judul: "Statistika Inferensi", sks: 3),
  const Matkul(judul: "Fungsi dan Proses Bisnis", sks: 2),
  const Matkul(judul: "Fungsi dan Proses Bisnis Prak", sks: 2),
  const Matkul(judul: "Basis Data", sks: 3),
  const Matkul(judul: "Basis Data Prak", sks: 2),
  const Matkul(judul: "Sistem Operasi", sks: 2),
  const Matkul(judul: "Sistem Operasi Prak", sks: 1),
  const Matkul(judul: "Pemrograman Berorientasi Objek", sks: 2),
  const Matkul(judul: "Pemrograman Berorientasi Objek Prak", sks: 1),
  const Matkul(judul: "Pembelajaran Mesin", sks: 2),
  const Matkul(judul: "Pembelajaran Mesin Prak", sks: 1),
  const Matkul(judul: "Analisis dan Perancangan Sistem Informasi", sks: 2),
  const Matkul(judul: "Analisis dan Perancangan Sistem Informasi Prak", sks: 1),
  const Matkul(judul: "TKTI", sks: 3),
  const Matkul(judul: "Jaringan Komputer", sks: 3),
  const Matkul(judul: "Jaringan Komputer Prak", sks: 1),
  const Matkul(judul: "Sistem Enterprise", sks: 2),
  const Matkul(judul: "Pemrograman Web", sks: 2),
  const Matkul(judul: "Pemrograman Web Prak", sks: 1),
  const Matkul(judul: "Pemrograman Mob", sks: 2),
  const Matkul(judul: "Pemrograman Mob Prak", sks: 1),
];
