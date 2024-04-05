import 'package:flutter/material.dart';

class CommercialAddressData {
  final String companyName;
  final String companyAddress;
  final String companyCity;
  final String companyPostalCode;
  final String country;
  final double latitude;
  final double longitude;
  final String address; // Hinzugefügt: 'address' Variable

  CommercialAddressData({
    required this.companyName,
    required this.companyAddress,
    required this.companyCity,
    required this.companyPostalCode,
    required this.country,
    required this.latitude,
    required this.longitude,
    required this.address, // Hinzugefügt: 'address' Parameter im Konstruktor
  });

  // Entfernt: Die folgende Methode ist nicht notwendig
  // get address => null;

  // Entfernt: Die folgende Methode ist nicht notwendig
  // set commercialAddressData(CommercialAddressData commercialAddressData) {}
}

class AppData extends ChangeNotifier {
  late CommercialAddressData commercialAddressData;

  AppData({
    required String companyName,
    required String companyAddress,
    required String companyCity,
    required String companyPostalCode,
    required String country,
    required double latitude,
    required double longitude,
    required String address, // Hinzugefügt: 'address' Parameter im Konstruktor
  }) {
    commercialAddressData = CommercialAddressData(
      companyName: companyName,
      companyAddress: companyAddress,
      companyCity: companyCity,
      companyPostalCode: companyPostalCode,
      country: country,
      latitude: latitude,
      longitude: longitude,
      address: address, // Hinzugefügt: 'address' Parameter im Konstruktor
    );
  }

  get isCommercial => null;

  get isPrivate => null;

  void updateCompanyName(String value) {}

  void updateCompanyLocation(String value) {}

  void updateCompanyStreet(String value) {}

  void updateCompanyPhoneNumber(String value) {}

  void updateCompanyEmail(String value) {}

  void updateIsPrivate(bool bool) {}

  void updateAdText(String text) {}

  void updateIsCommercial(bool bool) {}
}
