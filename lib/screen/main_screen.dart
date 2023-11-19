import 'package:flutter/material.dart';
import 'package:wisatapekanbaru/screen/detail_screen.dart';
import 'package:wisatapekanbaru/model/tourism_place.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wisata Pekanbaru')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(place: place))
            ),
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Hero(
                      tag: place.name,
                      child: Image.asset(place.imageAsset)
                    )
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            place.name,
                            style: const TextStyle(fontSize: 16)
                          ),
                          const SizedBox(height: 10),
                          Text(place.location)
                        ]
                      )
                    )
                  )
                ]
              )
            )
          );
        },
        itemCount: tourismPlaceList.length
      )
    );
  }
}