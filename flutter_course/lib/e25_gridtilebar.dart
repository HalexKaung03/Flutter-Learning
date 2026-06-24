import 'package:flutter/material.dart';

class Ex25GridTileBar extends StatelessWidget {
  const Ex25GridTileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Grid Tile Bar'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, mainAxisSpacing: 20),
            itemBuilder: (context, index) => GridTile(
              header: GridTileBar(
                backgroundColor: Colors.green,
                leading: const CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Text('F'),
                ),
                title: const Text('Flutter Verse'),
                subtitle: const Text('12 min ago'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_horiz),
                ),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 69,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        color: Colors.green,
                        child: Text(
                          '     You can transfer your repository to any personal account that accepts your repository transfer. When a repository is transferred between two personal accounts, the original repository owner and collaborators are automatically added as collaborators to the new repository.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Image.asset(
                        'images/img_1.jpg',
                        fit: BoxFit.cover,
                        height: 320,
                        width: double.infinity,
                      ),
                    ],
                  )),
              footer: GridTileBar(
                backgroundColor: Colors.green,
                title: Row(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.favorite)),
                          Text('$index')
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.comment)),
                          Text('$index')
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                          Text('$index')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
