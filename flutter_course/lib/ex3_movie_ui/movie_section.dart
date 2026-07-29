import 'package:flutter/material.dart';
import 'package:flutter_course/ex3_movie_ui/data.dart';
import 'package:flutter_course/ex3_movie_ui/movie.dart';
import 'package:flutter_course/ex3_movie_ui/widgets.dart';

class Movie_Section extends StatelessWidget {
  const Movie_Section({super.key, required this.title, required this.movies});

  final String title;
  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TitleWidget(title: title),
      SizedBox(
          height: 250,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            itemBuilder: (context, index) => Column(
              children: [
                Expanded(
                  child: Container(
                      width: 150,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(movies[index].imgUrl),
                            fit: BoxFit.cover,
                          ))),
                ),
                SizedBox(
                  width: 120,
                  child: Text(
                    textAlign: TextAlign.center,
                    movies[index].name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
            itemCount: movies.length,
            scrollDirection: Axis.horizontal,
          ))
    ]);
  }
}
