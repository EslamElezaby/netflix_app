import 'package:flutter/material.dart';
import 'package:netflix_app_ui/models/movie_model.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff333333),
      body: Column(
        children: [
          // Search Part
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: 'Search...',
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                // Movies
                buildTitle('Movies'),
                // List of Movies
                BuildListOfItems(),
                // TV Shows
                buildTitle('Series'),
                // List of series
                BuildListOfItems(),
                // Anime
                buildTitle('Anime'),
                // List of Anime
                BuildListOfItems(),
                // Talk Shows
                buildTitle('Talk Shows'),
                // List of Talk Shows
                BuildListOfItems(),

              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 15),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class BuildListOfItems extends StatelessWidget {
  const BuildListOfItems({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: MovieModel.movieModelList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    MovieModel.movieModelList[index].moviePicUrl,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
