import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Besoin d\'aide ?'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ta commande est arrivée en retard ? Nous avons oublié un produit ? Ta pizza est trop cuite ? Le livreur n\'a pas été aimable ?',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Text(
              'N\'hésite pas : envoie nous vite un mail à contact@festivaldesdelices.sn ! Avec une photo, c\'est encore mieux. Si possible, précise ton nom et ton numéro de téléphone, ce sera encore plus facile de te retrouver.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Nous ferons le maximum pour te proposer une bonne solution dans les meilleurs délais.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'N\'oublie pas : contact@festivaldesdelices.sn !',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'PS : nous avons du mal à lire tous les messages qui viennent des réseaux sociaux donc, en cas de soucis, adresse nous un mail et tu auras une réponse rapide.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
