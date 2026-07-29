import 'package:flutter/material.dart';
import 'package:flutter_course/ex3_movie_ui/data.dart';
import 'package:flutter_course/ex3_movie_ui/widgets.dart';

class SuggestionSection extends StatefulWidget {
  const SuggestionSection({super.key});

  @override
  State<SuggestionSection> createState() => _SuggestionSectionState();
}

class _SuggestionSectionState extends State<SuggestionSection> {
  late final PageController _pageController;
  int currentIndex = 2;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: currentIndex,
      viewportFraction: 0.3,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleWidget(title: 'You May Like'),
        SizedBox(
          height: 200,
          child: PageView.builder(
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            controller: _pageController,
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.only(
                right: 20,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage(suggestions[index].imgUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            itemCount: trendings.length,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              trendings.length,
              (index) => Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor:
                          currentIndex == index ? Colors.red : Colors.white,
                    ),
                  )),
        )
      ],
    );
  }
}
