import 'package:boat_m/third_page/widgets/advertisemen_list.dart';
import 'package:boat_m/third_page/widgets/top_box_contents.dart';
import 'package:boat_m/widgets/custom_navigations_bar.dart';
import 'package:flutter/material.dart';


class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key, required this.category});

  final String category;

  @override
  // ignore: library_private_types_in_public_api
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 33, 150, 243),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        elevation: 0,
        toolbarHeight: 80,
        centerTitle: true,
        title: SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: Image.asset('assets/logo-transparent-png.png'),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          TopBoxContents(),
          const SizedBox(height: 20),
          const AdvertisementList(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: 0,
        onItemTapped: (index) {},
      ),
    );
  }
}
