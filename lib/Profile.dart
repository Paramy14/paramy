import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  //const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("P'Pasyvong"),
          backgroundColor: Color.fromARGB(0, 255, 249, 249),
        ),
        body: Stack(
          children: [
            Container(
              width: 1550,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/wp2939900.webp"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 150.0, top: 250),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/error404.jpeg'),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 320.0, top: 390),
              child: Icon(
                IconData(0xf526, fontFamily: 'MaterialIcons'),
                size: 40,
                color: Color.fromARGB(255, 9, 9, 9),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 1480.0, top: 300),
              child: Icon(
                IconData(0xe048, fontFamily: 'MaterialIcons'),
                size: 40,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 180.0, top: 460),
              child: Text(
                "P'Pasyavong",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 35,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 180.0, top: 510),
              child: Text(
                'address : Donenokkhoum',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 180.0, top: 550),
              child: Text(
                'lao-top collage',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 180.0, top: 590),
              child: Text(
                'Status :',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 780.0, top: 370),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Follow',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    '5.5K',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 900.0, top: 370),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Post',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    '300',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 1000.0, top: 370),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Following',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    '3.5K',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 680.0, top: 460),
              child: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('images/error404.jpeg'),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 760.0, top: 480),
              child: Text(
                'Pa syavong',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 14,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 760.0, top: 500),
              child: Text(
                '1.june',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 12,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 680.0, top: 530),
              child: Column(
                children: [
                  Image.asset('images/shirt.jpeg',
                      width: 600, height: 150, fit: BoxFit.fill),
                ],
              ),
            ),
          ],
        ));
  }
}
