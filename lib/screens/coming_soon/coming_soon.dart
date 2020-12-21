import 'package:flutter/material.dart';
import 'package:netflix_app_ui/models/movie_model.dart';

class ComingSoonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff333333),
      body: ListView.separated(
        itemCount: MovieModel.movieModelList.length,
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.white,
          );
        },
        itemBuilder: (context, index) {
          return Column(
            children: [
              // movie pic
              Container(
                width: screenWidth ,
                height: screenHeight * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      MovieModel.movieModelList[index].moviePicUrl,
                    ),
                  ),
                ),
              ),
              //buttons
              Container(
                width: screenWidth,
                height: screenHeight * 0.1,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildButton(
                      buttonTitle: 'Remind Me',
                      iconData: Icons.alarm,
                    ),
                    buildButton(
                      buttonTitle: 'Share',
                      iconData: Icons.share,
                    )
                  ],
                ),
              ),
              // Watch Now
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Watch Now',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white60,
                      ),
                    ),
                    // Movie Name
                    SizedBox(height: 10),
                    Text(
                      MovieModel.movieModelList[index].movieName,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    //Movie Description
                    SizedBox(height: 10),
                    Text(
                      MovieModel.movieModelList[index].movieDescription,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Container buildButton({String buttonTitle, IconData iconData}) {
    return Container(
      child: Column(
        children: [
          Icon(
            iconData,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(height: 5),
          Text(
            buttonTitle,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
