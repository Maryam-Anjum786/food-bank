import 'package:flutter/material.dart';

class Food {
  final String name;
  final String imageUrl;
  final double price;
  final String description;

  Food({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.description,
  });
}

class Details extends StatelessWidget {
  final List<Food> recipes = [
    Food(
      name: 'Food Name',
      imageUrl:
          'https://images.pexels.com/photos/1438672/pexels-photo-1438672.jpeg?auto=compress&cs=tinysrgb&w=1600',
      price: 11.99,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut nibh a nisi lobortis rutrum non congue augue. Sed sollicitudin egestas ipsum, nec auctor metus ultrices ornare.',
    ),
    Food(
      name: 'Food Name',
      imageUrl:
          'https://images.pexels.com/photos/12955745/pexels-photo-12955745.jpeg?auto=compress&cs=tinysrgb&w=1600',
      price: 25.99,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut nibh a nisi lobortis rutrum non congue augue. Sed sollicitudin egestas ipsum, nec auctor metus ultrices ornare.',
    ),
    Food(
      name: 'Food Name',
      imageUrl:
          'https://images.pexels.com/photos/11568788/pexels-photo-11568788.jpeg?auto=compress&cs=tinysrgb&w=1600',
      price: 20.99,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut nibh a nisi lobortis rutrum non congue augue. Sed sollicitudin egestas ipsum, nec auctor metus ultrices ornare.',
    ),
    Food(
      name: 'Food Name',
      imageUrl:
          'https://images.pexels.com/photos/5848527/pexels-photo-5848527.jpeg?auto=compress&cs=tinysrgb&w=1600',
      price: 18.99,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut nibh a nisi lobortis rutrum non congue augue. Sed sollicitudin egestas ipsum, nec auctor metus ultrices ornare.',
    ),
    Food(
      name: 'Food Name',
      imageUrl:
          'https://images.pexels.com/photos/4378158/pexels-photo-4378158.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load',
      price: 15.99,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut nibh a nisi lobortis rutrum non congue augue. Sed sollicitudin egestas ipsum, nec auctor metus ultrices ornare.',
    ),
    Food(
      name: 'Food Name',
      imageUrl:
          'https://images.pexels.com/photos/5720891/pexels-photo-5720891.jpeg?auto=compress&cs=tinysrgb&w=1600',
      price: 30.99,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut nibh a nisi lobortis rutrum non congue augue. Sed sollicitudin egestas ipsum, nec auctor metus ultrices ornare.',
    ),
    Food(
      name: 'Food Name',
      imageUrl:
          'https://images.pexels.com/photos/12842125/pexels-photo-12842125.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load',
      price: 12.99,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut nibh a nisi lobortis rutrum non congue augue. Sed sollicitudin egestas ipsum, nec auctor metus ultrices ornare.',
    ),
  ];

  Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05,
                ),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back,size: 24),color: Colors.white,),
                    const Spacer(),
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: height * 0.04,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        child: Theme(
                          data: Theme.of(context)
                              .copyWith(splashColor: Colors.transparent),
                          child: TextField(
                            autofocus: false,
                            cursorColor: Colors.grey,
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.black),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Search From Here',
                              contentPadding: const EdgeInsets.only(
                                  left: 14.0, bottom: 12.0, top: 0.0),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(25.7),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(25.7),
                              ),
                              suffixIcon:
                                  Icon(Icons.search, color: Colors.black),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.white,
                        ),
                        height: 50,
                        margin: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        padding: const EdgeInsets.all(8.0),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10.0),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      child: const Icon(
                        Icons.filter_list_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: height * 2,
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: recipes.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(12.0),
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          NetworkImage(recipes[index].imageUrl),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      recipes[index].name,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      recipes[index].description,
                                      style: const TextStyle(
                                        color: Color(0xff434455),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: width * 0.02),
                                      child: Row(
                                        children: [
                                          Text(
                                            '\$${recipes[index].price.toStringAsFixed(2)}',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const Spacer(),
                                          Container(
                                            width: 80,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: const Color(0xffE05DA7),
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                'Add Cart',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
