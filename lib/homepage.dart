import 'package:flutter/material.dart';
import 'package:foodbank/details.dart';

class Recipe {
  final String name;
  final String imageUrl;
  final double price;

  Recipe({required this.name, required this.imageUrl, required this.price});
}

class Homepage extends StatelessWidget {
  final List<Recipe> recipes = [
    Recipe(
        name: 'Food Name',
        imageUrl:
            'https://images.pexels.com/photos/1438672/pexels-photo-1438672.jpeg?auto=compress&cs=tinysrgb&w=1600',
        price: 10.99),
    Recipe(
        name: 'Food Name',
        imageUrl:
            'https://images.pexels.com/photos/12955745/pexels-photo-12955745.jpeg?auto=compress&cs=tinysrgb&w=1600',
        price: 12.49),
    Recipe(
        name: 'Food Name',
        imageUrl:
            'https://images.pexels.com/photos/11568788/pexels-photo-11568788.jpeg?auto=compress&cs=tinysrgb&w=1600',
        price: 8.95),
    Recipe(
        name: 'Food Name',
        imageUrl:
            'https://images.pexels.com/photos/5848527/pexels-photo-5848527.jpeg?auto=compress&cs=tinysrgb&w=1600',
        price: 14.99),
    Recipe(
        name: 'Food Name',
        imageUrl:
            'https://images.pexels.com/photos/4378158/pexels-photo-4378158.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load',
        price: 9.75),
    Recipe(
        name: 'Food Name',
        imageUrl:
            'https://images.pexels.com/photos/5720891/pexels-photo-5720891.jpeg?auto=compress&cs=tinysrgb&w=1600',
        price: 11.25),
  ];

  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: width,
                  height: height * 0.33,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    ),
                    image: DecorationImage(
                      image: AssetImage('images/food.jpg'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.05,
                          vertical: height * 0.02,
                        ),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(Icons.arrow_back,color: Colors.white,size: 24,)),
                            const Spacer(),
                            Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: height * 0.04,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.09),
                        child: Text(
                          'Different\nKind of Food',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white54.withOpacity(1),
                            fontSize: height * 0.035,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.05),
            _buildCategoryRow('Food Category', height),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Details()));
                },
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recipes.length,
                  itemBuilder: (context, index) {
                    return _buildRecipeCard(recipes[index]);
                  },
                ),
              ),
            ),
            SizedBox(height: height * 0.02),
            _buildCategoryRow('Food Category', height),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recipes.length,
                  itemBuilder: (context, index) {
                    return _buildRecipeCard(recipes[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryRow(String title, double height) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: height * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.025,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          Container(
            width: 140,
            height: 1,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecipeCard(Recipe recipe) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(12),
          width: 100,
          height: 80,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(recipes[3].imageUrl), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Text(
          recipe.name,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        Text(
          '\$${recipes[3].price.toStringAsFixed(2)}',
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        Container(
          width: 80,
          height: 25,
          decoration: BoxDecoration(
            color: const Color(0xffE05DA7),
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Center(
            child: Text(
              'Add Cart',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
