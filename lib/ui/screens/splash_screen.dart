import 'package:cybdom_podcast/global.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Discover your favorite PodCast",
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
            Flexible(
              child: Image.network(
                splashPicture,
                width: double.infinity,
              ),
            ),
            Center(
              child: RaisedButton(
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "Start",
                  style: Theme.of(context)
                      .textTheme
                      .button
                      .copyWith(color: Colors.white),
                ),
                onPressed: () => Navigator.pushNamed(context, 'home'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                SizedBox(width: 5),
                TextButton(
                  child: Text(
                    "Create One",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.blueAccent),
                  ),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
