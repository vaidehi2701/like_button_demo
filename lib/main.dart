import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LikeButton(
              onTap: onLikeButtonTapped,
              size: 35,

             // circleColor: const CircleColor(start: Color(0x000ffabc), end: Color(0x000ffabc),),
              likeCount: 30,
            ),
        SizedBox(height: 50),
        LikeButton(
          size: 30,
          circleColor: CircleColor(
            start: Colors.lightGreenAccent[100]!,
            end: Colors.lightGreenAccent[400]!,
          ),
          bubblesColor: BubblesColor(
            dotPrimaryColor: Colors.lightGreen[300]!,
            dotSecondaryColor: Colors.lightGreen[200]!,
          ),
          likeBuilder: (bool isLiked) {
            return  Icon(
              Icons.share,
              color: isLiked?Colors.lightGreen:Colors.grey,
              size: 40,
            );
          },
          likeCount: 40,
          countBuilder: (int? count, bool isLiked, String text) {
            return Text(
              count == 0 ? 'love' : text,
              style:  TextStyle(color: isLiked?Colors.lightGreen:Colors.grey,),
            );
          },
          likeCountPadding: const EdgeInsets.only(left: 15.0),

        ),
            SizedBox(height: 50),
            LikeButton(
              size: 30,
              circleColor: CircleColor(
                start: Colors.blueAccent[100]!,
                end: Colors.blueAccent[400]!,
              ),
              bubblesColor: BubblesColor(
                dotPrimaryColor: Colors.blue[300]!,
                dotSecondaryColor: Colors.blue[200]!,
              ),
              likeBuilder: (bool isLiked) {
                return  Icon(
                  Icons.save_alt,
                  color: isLiked?Colors.blue:Colors.grey,
                  size: 40,
                );
              },
              likeCount: 50,
              countBuilder: (int? count, bool isLiked, String text) {
                return Text(
                  count == 0 ? 'love' : text,
                  style:  TextStyle(color: isLiked?Colors.blue:Colors.grey,),
                );
              },
              likeCountPadding: const EdgeInsets.only(left: 15.0),

            ),
            SizedBox(height: 90,),
            Text("Follow Flash_coder_404",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.red),)
          ],
        ),
      ),
    );
  }
  Future<bool> onLikeButtonTapped(bool isLiked) async{
    /// send your request here
    // final bool success= await sendRequest();

    /// if failed, you can do nothing
    // return success? !isLiked:isLiked;

    return !isLiked;
  }
}

