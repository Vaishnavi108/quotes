import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

List<String> imageList = [
  'assets/images/quo1.jpeg',
  'assets/images/quo2.jpeg',
  'assets/images/quo3.jpeg',
  'assets/images/quo4.jpeg',
  'assets/images/quo5.jpeg',
  'assets/images/quo6.jpeg',
  'assets/images/quo7.jpeg',
  'assets/images/quo8.jpeg',

  // Add more image paths here
];
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Add a named 'key' parameter

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('QUOTES'),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        backgroundColor: Color(0xFFDBC4F0),
        body: Center(
          child: CarouselSlider(
            options: CarouselOptions(
              height: 300.0, // Set the desired height of the carousel
              enlargeCenterPage: true,
              autoPlay: true, // Set to true for auto-play
              aspectRatio: 16 /
                  9, // Adjust as needed for the aspect ratio of your images
              enableInfiniteScroll: true,
            ),
            items: imageList.map((String imagePath) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
