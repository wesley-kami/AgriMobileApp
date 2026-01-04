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
      'Gherkin',
    ];

    final List<String> vegies =[
        "assets/vegies/garlic.jpeg",
        "assets/vegies/letus.jpeg",
        "assets/vegies/tomato-cristal.jpeg",
        "assets/vegies/pepper.jpg",
    ];

    final List<String> vegieName = [
      "Ungarischer Knoblauch",
      "Gaindorfer Winter",
      "Hungarian Garlic",
      "Capsicum annuum"
    ] ;


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
                    ),
                  ],
                ),
                
              );
            }, 
            separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 15.0),
            scrollDirection: Axis.horizontal,
            ), 
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10,20,10,20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(
              "Incomplete varieties",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextButton(onPressed:() {}, child: Text("See All",style:TextStyle(fontSize:12)))
          ]),
        ),
        SizedBox(
          height: 210,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: vegies.length,
            separatorBuilder: (_, __) => const SizedBox(width: 15),
            itemBuilder: (context, index) {
              return Container(
                width: 150,
                padding: EdgeInsets.fromLTRB(8, 10, 8, 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                      child:
                        Image.asset(
                          vegies[index],
                          height: 100,
                          width:double.infinity,
                          fit: BoxFit.cover,
                        ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      vegieName[index],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(8, 10, 8, 10),
                          decoration: BoxDecoration(
                            color: Colors.grey[50],
                            borderRadius:BorderRadius.circular(50),
                            border: Border.all(color: const Color.fromARGB(96, 87, 87, 87),style: BorderStyle.solid)
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.incomplete_circle_outlined, size: 16),
                              SizedBox(width: 5),
                              Text("Incomplete", style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding:EdgeInsets.fromLTRB(8, 10, 8, 10),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:BorderRadius.circular(50) ,
                          ),
                          child: Icon(Icons.arrow_outward_rounded, size: 15)
                          ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),

      ],),
      
    );
  }
}