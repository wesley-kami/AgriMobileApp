import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.0, 
      child: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 192, 221, 214),
        elevation: 0, 
        flexibleSpace: Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 20), 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //--------------AppBar Elements-----------------
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Discover Your Plant',
                        style: TextStyle(
                          fontWeight: FontWeight.w800, 
                          fontSize: 13.0,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        'Create a green town',
                        style: TextStyle(
                          fontSize: 9.0,
                          color: Color.fromARGB(255, 80, 100, 110),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  //The More button
                  Container(
                    height: 35,
                    width: 35,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(
                        minWidth: 32,
                        minHeight: 32,
                      ),
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.black,
                        size: 20,
                      ),
                      onPressed: () {
                        print("More button pressed!"); // Add your logic here
                      },
                    ),
                  )
                ],
              ),
              
              const SizedBox(height: 20),

              // --- BOTTOM ROW: Search Bar ---
              Expanded(child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search your favorite plant...',
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50), // Softer corners
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                ),
              )),
            ],
          ),
        ),
      )
    );
  }
}