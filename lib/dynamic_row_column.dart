import 'package:flutter/material.dart';
import 'package:movies/movies.dart';

class DynamicRowColumn extends StatelessWidget {
  const DynamicRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Movies.com',
          style: TextStyle(fontSize: 30.0),
        ),
      ),
      body: ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (context, index) {
          final movie = movieList[index];
          return MovieItemView(movie: movie);
        },
      ),
    );
  }
}

class MovieItemView extends StatelessWidget {
  const MovieItemView({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 10.0,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  movie.image,
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  right: 0,
                    child: IconButton(
                  onPressed: () {},
                      icon: const Icon(
                    Icons.favorite,
                    size: 50.0,
                    color: Colors.red,
                  ),
                )),
              ],),
            ListTile(
              title: Text(movie.name),
              subtitle: Text(movie.genre),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Text(movie.rating),
                ],),)
          ],),
      ),);
  }}
