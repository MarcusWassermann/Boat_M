import 'package:boat_m/third_page/widgets/info_card.dart';
import 'package:flutter/material.dart';


class TopBoxContents extends StatelessWidget {
  final Color boxColor = const Color.fromARGB(255, 237, 238, 228);

  final List<String> topBoxContents = [
    'Marke',
    'Modell',
    'Auswahl',
    'Liegeplatz',
    'Baujahr von',
    'Baujahr bis',
    'Länge min',
    'Länge max',
    'Preis von',
    'Preis bis',
    'Motorart',
    'Kraftstoff',
    'Leistung von',
    'Segel Anzahl',
    'Segel qm',
  ];

 TopBoxContents({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: topBoxContents.map((content) {
          return InfoCard(
            content: content,
            boxColor: boxColor,
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text(''),
                    content: Text(content),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Filter anwenden'),
                      ),
                    ],
                  );
                },
              );
            },
            onFilterApply: () {
              // Implementieren Sie die Filteranwendung
            },
          );
        }).toList(),
      ),
    );
  }
}
