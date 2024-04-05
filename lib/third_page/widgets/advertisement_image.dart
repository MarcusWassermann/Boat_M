import 'package:flutter/material.dart';

class AdvertisementImageWidget extends StatelessWidget {
  final PageController pageController;
  final void Function(BuildContext) navigateToFourthScreen;

  const AdvertisementImageWidget({
    super.key,
    required this.pageController,
    required this.navigateToFourthScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            margin: const EdgeInsets.only(bottom: 6),
            height: 200,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 238, 238, 238),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                GestureDetector(
                  onHorizontalDragEnd: (DragEndDetails details) {
                    //  Logik für das horizontale Scrollen
                  },
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: 3000,
                    onPageChanged: (int page) {
                      // Hiernicht definiert ist
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return Center(
                        child: Text(
                          'Image ${index + 1}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: ElevatedButton(
                    onPressed: () {
                      navigateToFourthScreen(context);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 1,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Text('Anbieter'),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Name',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Price',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
