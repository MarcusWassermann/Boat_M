import 'dart:convert';

class BoatData {
  String name;
  String price;
  String brand;
  String model;
  String year;
  String length;
  String condition;
  String engineType;
  String fuelType;
  String power;
  String sailCount;
  String sailArea;

  BoatData({
    required this.name,
    required this.price,
    required this.brand,
    required this.model,
    required this.year,
    required this.length,
    required this.condition,
    required this.engineType,
    required this.fuelType,
    required this.power,
    required this.sailCount,
    required this.sailArea,
  });

  factory BoatData.fromList(List<String> boatDataList) {
    return BoatData(
      name: boatDataList[0],
      price: boatDataList[1],
      brand: boatDataList[2],
      model: boatDataList[3],
      year: boatDataList[4],
      length: boatDataList[5],
      condition: boatDataList[6],
      engineType: boatDataList[7],
      fuelType: boatDataList[8],
      power: boatDataList[9],
      sailCount: boatDataList[10],
      sailArea: boatDataList[11],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'price': price,
      'brand': brand,
      'model': model,
      'year': year,
      'length': length,
      'condition': condition,
      'engineType': engineType,
      'fuelType': fuelType,
      'power': power,
      'sailCount': sailCount,
      'sailArea': sailArea,
    };
  }

  factory BoatData.fromMap(Map<String, dynamic> map) {
    return BoatData(
      name: map['name'],
      price: map['price'],
      brand: map['brand'],
      model: map['model'],
      year: map['year'],
      length: map['length'],
      condition: map['condition'],
      engineType: map['engineType'],
      fuelType: map['fuelType'],
      power: map['power'],
      sailCount: map['sailCount'],
      sailArea: map['sailArea'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BoatData.fromJson(String source) =>
      BoatData.fromMap(json.decode(source));

  // Hinzugefügter Getter für 'fuel'
  String get fuel => fuelType;
}
