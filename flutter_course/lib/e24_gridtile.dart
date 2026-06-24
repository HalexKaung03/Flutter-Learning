import 'package:flutter/material.dart';

class Ex24GridTile extends StatelessWidget {
  const Ex24GridTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid Tile'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: GridView.builder(
          itemCount: 20,
          itemBuilder: (context, index) => GridTile(
            header: Container(
              alignment: Alignment.center,
              child: Text(
                'Hello $index',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'images/img_1.jpg',
                  fit: BoxFit.cover,
                )),
            footer: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: const Row(
                children: const [
                  Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 24,
              mainAxisSpacing: 24),
        ),
      ),
    );
  }
}
