import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isi/etatCommandePage.dart';
import 'package:isi/favoriteWidget.dart';
import 'package:isi/recipe.dart';
import 'package:transparent_image/transparent_image.dart';

class RecipeScreen extends StatelessWidget {
  final Recipe recipe;
  const RecipeScreen({super.key, required this.recipe});


  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
        padding: const EdgeInsets.all(8),
        child : Row(children: [
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child:Text(recipe.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                  Text(recipe.user,
                      style: TextStyle(
                          color: Colors.grey[500], fontSize: 16
                      ))
                ],
              )),
          FavoriteWidget(isFavorited: recipe.isFavorite, favoriteCount: recipe.favoriteCount)
        ],
        ));



    Widget buttonSection = Container(
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          recipe.title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),

                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(labelText: 'Quantité'),
                          items: ['1', '2', '3', '4', '5']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {},
                        ),
                        SizedBox(height: 10),

                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(labelText: 'Condiment'),
                          items: ['Ketchup', 'Mayonnaise', 'moutarde', 'Piment', 'tout les condiment']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {},
                        ),
                        SizedBox(height: 10),

                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(labelText: 'Boisson'),
                          items: ['coca cola', 'pepsi', 'thé', 'café touba', 'wass']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {},
                        ),
                        SizedBox(height: 10),

                        TextFormField(
                          decoration: InputDecoration(labelText: 'Demande spéciale'),
                        ),
                        SizedBox(height: 10),

                        TextFormField(
                          decoration: InputDecoration(labelText: 'Prenon et nom'),
                        ),
                        SizedBox(height: 10),

                        TextFormField(
                          decoration: InputDecoration(labelText: 'Numéro de téléphone'),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Veuillez entrer un numéro de téléphone';
                            }
                            // Vous pouvez également ajouter d'autres vérifications ici, si nécessaire
                            return null;
                          },
                        ),
                        SizedBox(height: 10),


                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => etatCommandePage()),
                            );
                          },
                          child: Text('Valider'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Text('Commander'),
        ),
      ),
    );



    Widget descriptionSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(recipe.description,
        softWrap: true,
      ),
    );


    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Menu"),
        ),


        body: ListView(children: [
          Hero(
            tag: 'image' + recipe.title,
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: recipe.image,
              width: 100,
              height: 500,
              fit: BoxFit.cover,
            ),
          ),
          titleSection,
          buttonSection,
          descriptionSection
        ]));
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: Icon(icon, color: color)
        ),
        Text(label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: color,
            ))
      ],
    );
  }
}
