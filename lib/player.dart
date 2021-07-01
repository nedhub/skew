import 'package:flutter/material.dart';
// import 'package:flutter_music_player/constants.dart';
// import 'package:flutter_music_player/soft_control.dart';
import 'package:skew/button.dart';
import 'package:skew/color.dart';

class PlayerPage extends StatefulWidget {
  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircularSoftButton(
                  icon: Icon(Icons.arrow_back_ios),
                  radius: 20,
                ),
                Text('Fav. Album'),
                CircularSoftButton(
                  icon: Icon(Icons.more_horiz),
                  radius: 20,
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  height: MediaQuery.of(context).size.width - 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width),
                    gradient: LinearGradient(
                      colors: [shadowColor, lightShadowColor],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: shadowColor,
                          offset: Offset(8, 6),
                          blurRadius: 12),
                      BoxShadow(
                          color: lightShadowColor,
                          offset: Offset(-8, -6),
                          blurRadius: 12),
                    ],
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  right: 10,
                  bottom: 10,
                  child: CircleAvatar(
                      backgroundImage: Image.network(
                              "https://lastfm.freetls.fastly.net/i/u/770x0/246633ebdfdb80f8c60faa086b112c4a.jpg")
                          .image),
                ),
              ],
            ),
            SizedBox(height: 32),
            Text(
              'Just like Magic',
              style: TextStyle(fontSize: 28, color: textColor),
            ),
            Text(
              'Ariana Grande',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: textColor),
            ),
            SizedBox(height: 32),
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 32),
                  width: double.infinity,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: backgroundColor,
                    boxShadow: [
                      BoxShadow(color: lightShadowColor, offset: Offset(1, 4)),
                      BoxShadow(color: shadowColor, offset: Offset(-1, -4)),
                    ],
                  ),
                ),
                Positioned(
                  top: 2,
                  bottom: 2,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 36),
                    width: 200,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                        colors: [seekBarLightColor, seekBarDarkColor],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '1:30',
                    style: TextStyle(fontSize: 20, color: textColor),
                  ),
                  Text(
                    '3:52',
                    style: TextStyle(fontSize: 20, color: textColor),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircularSoftButton(
                  icon: Icon(Icons.skip_previous),
                  radius: 20,
                ),
                CircularSoftButton(
                  icon: Icon(
                    Icons.play_arrow,
                    size: 48,
                    color: seekBarDarkColor,
                  ),
                  radius: 48,
                ),
                CircularSoftButton(
                  icon: Icon(Icons.skip_next),
                  radius: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
