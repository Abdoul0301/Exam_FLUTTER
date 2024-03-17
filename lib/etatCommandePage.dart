import 'dart:async';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:isi/homepage.dart';
import 'package:isi/recipeListScreen.dart';
import 'package:marquee/marquee.dart';

import 'HelpPage.dart';

class etatCommandePage extends StatefulWidget {
  @override
  _etatCommandePageState createState() => _etatCommandePageState();
}

class _etatCommandePageState extends State<etatCommandePage> {
  double _progressValue = 0.0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      setState(() {
        _progressValue += 0.01; // Incrémenter la valeur de la progression
        if (_progressValue >= 1.0) {
          _progressValue = 1.0; // Limiter la valeur maximale à 1.0
          _timer!.cancel(); // Arrêter le timer lorsque la progression atteint 100%
        }
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Annuler le timer à la suppression du widget
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('État de la commande'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(''),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                ); // Close the drawer
              },
            ),

            ListTile(
              leading: Icon(Icons.fastfood),
              title: Text('Menu'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecipeListScreen()),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.help),
              title: Text('Aide'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelpPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Marquee(
              text: 'Veuillez bien vouloir laisser votre téléphone allumé, nos services clients vont vous appeler dans un instant. Le Festival des Délices vous remercie de votre fidélité.',
              scrollAxis: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.start,
              blankSpace: 20.0,
              velocity: 50.0,
              pauseAfterRound: Duration(seconds: 1),
              startPadding: 10.0,
              accelerationDuration: Duration(seconds: 1),
              accelerationCurve: Curves.linear,
              decelerationDuration: Duration(milliseconds: 500),
              decelerationCurve: Curves.easeOut,
              style: TextStyle(fontSize: 24.0),
            ),
          ),
          CarouselSlider(
            items: [
              Container(
                child: Image.asset('images/4.jpg'),
              ),
              Container(
                child: Image.asset('images/5.jpg'),
              ),
              Container(
                child: Image.asset('images/6.jpg'),
              ),
            ],

            options: CarouselOptions(
              height: 350.0,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              autoPlayAnimationDuration: Duration(milliseconds: 1500),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
            ),
          ),
          SizedBox(height: 50),
          LinearProgressIndicator(
            value: _progressValue,
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation<Color>(Colors.deepPurpleAccent),
          ),
          SizedBox(height: 20.0),
          Text('${(_progressValue * 100).toInt()}%', style: TextStyle(fontSize: 20.0)),
        ],
      ),
    );
  }
}
