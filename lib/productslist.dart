import 'package:flutter/material.dart';

class Productslist extends StatelessWidget {
  const Productslist({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> fruitImages = [
      'assets/fruits/basil.png',
      'assets/fruits/carrots.png',
      'assets/fruits/zuchini.png',
      'assets/fruits/gherkin.png'
    ];

    final List<String> fruitNames = [
      'Basil',
      'Carrots',
      'Zuchini',
      'Gherkin'
    ];


    return Container(
      width: double.infinity,
      child: Column(children: [
        Row(children: [
          const Text('Your Plants',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: const Text("Edit", style: TextStyle(color: Colors.grey)),
          ),
        ]),
        //List of fruits
        Container(
          height: 150,
          margin:EdgeInsets.all(0) ,
          child: ListView.separated(
            itemCount: fruitImages.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white, 
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 183, 181, 181),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                width: 67,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, 
                  children: [
                    ClipOval(
                      child: Image.asset(
                        fruitImages[index],
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      fruitNames[index],
                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              );
            }, 
            separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 15.0),
            scrollDirection: Axis.horizontal,
            ), 
        )
      ],),
    );
  }
}