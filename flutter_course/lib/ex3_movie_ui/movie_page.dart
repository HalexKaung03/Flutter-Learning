import 'package:flutter/material.dart';
import 'package:flutter_course/ex3_movie_ui/data.dart';
import 'package:flutter_course/ex3_movie_ui/movie_section.dart';
import 'package:flutter_course/ex3_movie_ui/suggestion_section.dart';
import 'package:flutter_course/ex3_movie_ui/trending_section.dart';
import 'package:flutter_course/ex3_movie_ui/widgets.dart';
import 'package:flutter_course/ex3_movie_ui/movie.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    const blackColor = Color(0xff202124);
    // const blackColor = Colors.white;
    return Scaffold(
      drawer: const Drawer(),
      backgroundColor: blackColor,
      appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: blackColor,
          centerTitle: true,
          title: const Text('Movie Page'),
          actions: const [Icon(Icons.search)]),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TrendingSection(),
            Movie_Section(
              title: 'Movies',
              movies: movies,
            ),
            const SuggestionSection(),
            Movie_Section(
              title: 'Series',
              movies: series,
            ),
            Movie_Section(
              title: 'Variety Shows',
              movies: varietyshow,
            ),
            Movie_Section(
              title: 'Survival Shows',
              movies: survivalshow,
            ),
          ],
        ),
      ),
    );
  }
}
