import 'package:flutter/material.dart';
import 'package:untitled/detail_screen.dart';
import 'package:untitled/models/tourism_place.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Wisata Kudus',
          style: TextStyle(
            fontFamily: 'Oxygen',
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            final TourismPlace place = tourismPlaceList[index];
            return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(place: place);
                  }));
                },
            child: listItem(place),
            );
          },
          itemCount: tourismPlaceList.length,
      ),
    );
  }

  Widget listItem(TourismPlace place){
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            // child: ListTile(
            //   leading: Container(
            //     width: 150,
            //     decoration: BoxDecoration(
            //       image: DecorationImage(
            //         image: AssetImage(place.imageMain),
            //         fit: BoxFit.cover
            //       )
            //     ),
            //   ),
            // ),
            child: Image.asset(
              place.imageMain,
              width: 100,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    place.name,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(place.location)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}