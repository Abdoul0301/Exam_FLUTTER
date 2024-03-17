import 'package:flutter/material.dart';
import 'package:isi/HelpPage.dart';
import 'package:isi/commandePage.dart';
import 'package:isi/etatCommandePage.dart';
import 'package:isi/recipeListScreen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';




class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Festival des Delices'),
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
                Navigator.pop(context); // Close the drawer
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


      body: ListView(
        children: <Widget>[
          Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/imgcontact.jpg', // chemin de votre image
                    fit: BoxFit.cover,
                    height: 700,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'Festival des Délices est un restaurant créé en 2015 par Abdoul Aziz Fall, un jeune entrepreneur qui a investi dans l\'art culinaire après avoir fait ses études en informatique. Le rêve d\'un homme de partager son amour pour la gastronomie et pour son pays natal a porté ses fruits, au regard du chemin parcouru. Au Festival des Délices, vous aurez une cuisine savoureuse, un sens de l\'accueil digne de la Teranga sénégalaise, mais aussi une famille qui partage la même passion.',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),

          Container(
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Spécialités',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                      color: Colors.deepPurpleAccent
                  ),
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Image.asset(
                          'images/pizza.jpg',
                          width: 300,
                          height: 300,
                        ),
                        Text('PIZZARIA',
                        style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Image.asset(
                          'images/fastfood.jpg',
                          width: 300,
                          height: 300,
                        ),
                        Text('FAST-FOOD',
                          style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Image.asset(
                          'images/cream.jpg',
                          width: 300,
                          height: 300,
                        ),
                        Text('GLACIER',
                          style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 10),

          Container(
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Moyens de Paiement',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                      color: Colors.deepPurpleAccent
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Image.asset(
                          'images/wave.png',
                          width: 50,
                          height: 50,
                        ),
                        Text('WAVE',
                          style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Image.asset(
                          'images/maxit.png',
                          width: 50,
                          height: 50,
                        ),
                        Text('MAX IT',
                          style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Image.asset(
                          'images/om.png',
                          width: 50,
                          height: 50,
                        ),
                        Text('OM',
                          style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Image.asset(
                          'images/cb.png',
                          width: 50,
                          height: 50,
                        ),
                        Text('CB',
                          style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Image.asset(
                          'images/cash.png',
                          width: 50,
                          height: 50,
                        ),
                        Text('CASH',
                          style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 10),

          Column(
            children: [
              Text(
                'Horaires d\'ouverture',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent
                ),
                textAlign: TextAlign.center,
              ),
               // Ajout d'un espace entre le titre et le Container
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Lundi 9h - 23h\nMardi 9h - 23h\nMercredi 9h - 23h\nJeudi 9h - 23h\nVendredi 9h - 23h\nSamedi 9h - 01h\nDimanche 11h - 00h',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),


          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(

                  'Contactez Nous',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent
                  ),

                  textAlign: TextAlign.center,
                ),

                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Entrez votre nom',
                    labelText: 'Nom'
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Entrez votre prenom',
                      labelText: 'Pénom'
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  maxLines: 5,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    hintText: 'Entrez votre message',
                      labelText: 'Message'
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Action à effectuer lors de l'envoi du formulaire
                    // Par exemple, envoi du message
                  },
                  child: Text('Envoyer'),
                ),
              ],
            ),
          ),

          Container(
            height: 300, // Hauteur de la carte
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(14.7167, -17.4677), // Coordonnées du restaurant au Sénégal
                zoom: 15, // Niveau de zoom initial
              ),
              markers: {
                Marker(
                  markerId: MarkerId('restaurant'), // Identifiant du marqueur
                  position: LatLng(14.7167, -17.4677), // Coordonnées du marqueur
                  infoWindow: InfoWindow(
                    title: 'Festival des Délices', // Titre du marqueur
                    snippet: 'Restaurant au Sénégal', // Description du marqueur
                  ),
                ),
              },
            ),
          ),

        ],

      ),
    );
  }
}