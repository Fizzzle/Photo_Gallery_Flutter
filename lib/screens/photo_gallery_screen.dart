import 'package:flutter/material.dart';
import 'package:photo_gallery/keys.dart';
import 'package:photo_gallery/services/network_helper.dart';

class PhotoGallery extends StatefulWidget {
  @override
  State<PhotoGallery> createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
  List<String>? images;

  Future<List<String>> getImages() async {
    List<String> Images = [];

    String url = "https://pixabay.com/api/?key=$pixabyApiKey&image_type=photo";

    NetworkHelper networkHelper = new NetworkHelper(url: url);

    dynamic data = await networkHelper.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 6, mainAxisSpacing: 6),
            itemBuilder: (context, index) {
              return Container();
            }),
      ),
    );
  }
}
