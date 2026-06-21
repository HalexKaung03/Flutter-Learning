import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Ex14ExerciseProfile extends StatelessWidget {
  const Ex14ExerciseProfile({super.key});

  @override
  Widget build(BuildContext context) {
    const color = Color(0xff7278ea);
    const avatar =
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL3OYNvV74Af_uP_dgTH0or_tarZ0gSsM23GgLx-zDgk_dqRchwW51FpFR&s=10';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: color,
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text('Profile'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
        ],
      ),
      body: Column(children: [
        Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 100,
                // color: color,
                decoration: const BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    )),
              ),
              Positioned(
                bottom: -40,
                child: Stack(clipBehavior: Clip.none, children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      // color: Colors.red,
                      image: DecorationImage(image: NetworkImage(avatar)),
                    ),
                  ),
                  Positioned(
                    bottom: -2,
                    right: 10,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: color,
                      ),
                      child: const Icon(
                        Icons.edit,
                        size: 14,
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),
              )
            ]),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'FlutterVerse',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const Text('Flutter Developer',
            style: TextStyle(fontSize: 12, color: Colors.grey)),
        const SizedBox(
          height: 24,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: itemCard(
                  icon: Icon(
                    Icons.video_call_sharp,
                    color: color,
                  ),
                  text: '23.4',
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: itemCard(
                  icon: Icon(
                    Icons.badge,
                    color: color,
                  ),
                  text: '7.4',
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: itemCard(
                  icon: Icon(
                    Icons.star,
                    color: color,
                  ),
                  text: '5.4',
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const MenuListTile(
          iconData: Icons.notifications,
          text: 'Notifications',
        ),
        const MenuListTile(
          iconData: Icons.settings,
          text: 'Settings',
        ),
        const MenuListTile(
          iconData: Icons.design_services,
          text: 'Support Services',
        ),
        const MenuListTile(
          iconData: Icons.policy,
          text: 'Privacy Policy',
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          color: color,
          width: double.infinity,
          height: 40,
          alignment: Alignment.center,
          child:
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 20,
            ),
            Text(
              'Sign Out',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ]),
        )
      ]),
    );
  }
}

class MenuListTile extends StatelessWidget {
  const MenuListTile({
    super.key,
    required this.iconData,
    required this.text,
  });

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    const color = Color(0xff7278ea);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(8)),
            child: Icon(
              iconData,
              color: Colors.white,
            ),
          ),
          Expanded(
              child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w500),
          )),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}

class itemCard extends StatelessWidget {
  const itemCard({
    super.key,
    required this.icon,
    required this.text,
  });

  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 10,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          children: [
            icon,
            const SizedBox(
              height: 8,
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}
