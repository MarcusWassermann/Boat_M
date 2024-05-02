import 'package:flutter/material.dart';

class AdPostingProvider with ChangeNotifier {
  String adText = '';
  String street = '';
  String city = '';
  String postalCode = '';
  String emailAddress = '';
  String phoneNumber = '';
  bool isCommercialChecked = false;
  bool isPrivateChecked = false;
  List<String> imagePaths = [];

  void updateAdText(String newText) {
    adText = newText;
    notifyListeners();
  }

  void updateStreet(String newStreet) {
    street = newStreet;
    notifyListeners();
  }

  void updateCity(String newCity) {
    city = newCity;
    notifyListeners();
  }

  void updatePostalCode(String newPostalCode) {
    postalCode = newPostalCode;
    notifyListeners();
  }

  void updateEmailAddress(String newEmailAddress) {
    emailAddress = newEmailAddress;
    notifyListeners();
  }

  void updatePhoneNumber(String newPhoneNumber) {
    phoneNumber = newPhoneNumber;
    notifyListeners();
  }

  void updateIsCommercialChecked(bool newValue) {
    isCommercialChecked = newValue;
    notifyListeners();
  }

  void updateIsPrivateChecked(bool newValue) {
    isPrivateChecked = newValue;
    notifyListeners();
  }

  void addImage(String imagePath) {
    imagePaths.add(imagePath);
    notifyListeners();
  }

  void removeImage(int index) {
    imagePaths.removeAt(index);
    notifyListeners();
  }
}
