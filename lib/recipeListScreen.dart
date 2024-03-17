import 'package:flutter/material.dart';
import 'package:isi/RecipeScreen.dart';
import 'package:isi/recipe.dart';
import 'package:transparent_image/transparent_image.dart';

class RecipeListScreen extends StatelessWidget{
  final List<Recipe> recipes = [ Recipe(
      "Demi Poulet",
      "4500 fcfa",
      'images/img2.jpg',
      "Voici une recette rapide : Assaisonnez et enrobez les filets de poulet avec de la farine, des œufs battus et de la chapelure. Faites-les frire dans de l'huile chaude jusqu'à ce qu'ils soient dorés et cuits à l'intérieur. Préparez des crudités en râpant des carottes et un concombre, et en coupant des poivrons et un oignon rouge. Servez le poulet frit avec les crudités fraîches pour un repas délicieux et équilibré.",
      false,
      54),
    Recipe(
        "Burger",
        "3000 fcfa",
        'images/1.jpg',
        "Cette recette de burger simple mais délicieuse commence par la préparation des ingrédients : pains à burger, steaks hachés, fromage, laitue, tomate, oignon et cornichons. Les steaks sont cuits dans une poêle chaude jusqu'à atteindre la cuisson désirée, puis garnis de fromage fondu. Pendant ce temps, les pains sont légèrement grillés. Une fois tous les éléments prêts, les burgers sont assemblés en empilant les ingrédients dans l'ordre souhaité. Le résultat est un burger savoureux, parfait pour une soirée décontractée entre amis ou en famille.",
        false,
        33),
    Recipe(
        "Croissant",
        "1500 fcfa",
        'images/2.jpg',
        "Pour préparer des croissants maison délicieux, commencez par mélanger de la farine, du sucre, du sel, de la levure et du beurre froid coupé en morceaux dans un bol. Ajoutez de l'eau froide et pétrissez jusqu'à obtenir une pâte homogène. Étalez la pâte en forme de triangle et coupez-la en triangles individuels. Roulez chaque triangle de la base vers la pointe pour former des croissants, puis laissez-les reposer et doubler de volume. Ensuite, badigeonnez-les d'un œuf battu pour obtenir une belle couleur dorée lors de la cuisson. Enfournez les croissants à 200°C pendant environ 15 minutes",
        false,
        28),
    Recipe(
        "Hog Dog",
        "2500 fcfa",
        'images/3.jpg',
        "La recette du hot-dog débute par la préparation des ingrédients : des saucisses, des petits pains à hot-dog, de la moutarde, du ketchup, de la relish, des oignons et des cornichons. Les saucisses sont grillées sur une poêle chaude ou un grill jusqu'à ce qu'elles soient bien cuites et légèrement dorées. Pendant ce temps, les petits pains sont réchauffés dans un four ou sur une grille pour obtenir une texture moelleuse. Une fois les saucisses et les pains prêts, les hot-dogs sont assemblés en plaçant une saucisse chaude dans chaque pain, puis en garnissant de moutarde, de ketchup, de relish, d'oignons et de cornichons selon les goûts.",
        false,
        45),
    Recipe(
        "Banane au Chocolat",
        "3000 fcfa",
        'images/4.jpg',
        "Pour réaliser cette délicieuse recette de bananes au chocolat, commencez par couper des bananes en tronçons et faites-les fondre au bain-marie avec du chocolat noir. Remuez jusqu'à obtention d'un mélange lisse et homogène. Pendant ce temps, préparez des garnitures comme des noix concassées, des copeaux de coco ou des pépites de chocolat pour ajouter de la texture et de la saveur. Une fois que les bananes sont enrobées de chocolat, roulez-les dans les garnitures de votre choix. Laissez-les ensuite durcir au réfrigérateur pendant environ 30 minutes avant de les déguster en dessert ou en en-cas gourmand",
        false,
        34),
    Recipe(
        "Boule de Glace",
        "2000 fcfa",
        'images/5.jpg',
        "Pour préparer de délicieuses boules de glace au chocolat, commencez par rassembler les ingrédients : du lait, de la crème épaisse, du sucre, du cacao en poudre et des œufs. Dans une casserole, mélangez le lait, la crème, le sucre et le cacao, puis chauffez jusqu'à ce que le mélange soit chaud mais pas bouillant. Dans un bol séparé, battez les jaunes d'œufs, puis incorporez-y lentement une partie du mélange chaud pour éviter de cuire les œufs. Versez le mélange d'œufs dans la casserole et faites cuire à feu doux jusqu'à ce qu'il épaississe légèrement. Laissez refroidir, puis placez le mélange dans une sorbetière pour le transformer en une délicieuse glace au chocolat. Une fois la glace prise, formez des boules à l'aide d'une cuillère à glace et servez immédiatement pour une délicieuse touche chocolatée rafraîchissante",
        false,
        88),
    Recipe(
        "Burger Royal",
        "3500 fcfa",
        'images/6.jpg',
        "Cette recette de burger simple mais délicieuse commence par la préparation des ingrédients : pains à burger, steaks hachés, fromage, laitue, tomate, oignon et cornichons. Les steaks sont cuits dans une poêle chaude jusqu'à atteindre la cuisson désirée, puis garnis de fromage fondu. Pendant ce temps, les pains sont légèrement grillés. Une fois tous les éléments prêts, les burgers sont assemblés en empilant les ingrédients dans l'ordre souhaité. Le résultat est un burger savoureux, parfait pour une soirée décontractée entre amis ou en famille.",
        false,
        54),
    Recipe(
        "Cuisse de Poulet",
        "4000 fcfa",
        'images/7.jpg',
        "Assaisonnez et enrobez les cuisses de poulet . Faites-les frire dans de l'huile chaude jusqu'à ce qu'ils soient dorés et cuits à l'intérieur. Préparez des crudités en râpant des carottes et un concombre, et en coupant des poivrons et un oignon rouge. Servez le poulet frit avec les crudités fraîches pour un repas délicieux et équilibré.",
        false,
        54),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Festival des Delices"),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index){
          return RecipeItemWidget(recipe: recipes[index]);
        },
      ),
    );

  }
}

class RecipeItemWidget extends StatelessWidget{
  final Recipe recipe;
  const RecipeItemWidget({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => RecipeScreen(recipe: recipe)
        ));
      },
      child: Card(
        margin: EdgeInsets.all(8),
        elevation: 8,
        child: Row(
          children: [
            Hero(
              tag: 'image' + recipe.title,
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: recipe.image,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
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
              ),
            )
          ],
        ),
      ),
    );
  }


}
