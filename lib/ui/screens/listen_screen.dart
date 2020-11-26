import 'package:cybdom_podcast/global.dart';
import 'package:cybdom_podcast/ui/widgets/my_random_widget.dart';
import 'package:flutter/material.dart';

class ListenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black54),
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => {},
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  // child: Image.network(splashPicture),
                  child: MyRandomShapeWidget(),
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Animation in UI Design",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: Colors.black),
              ),
              Text(
                "Cybdom",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: Colors.black54),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Text("06:38"),
                  SizedBox(width: 8),
                  Expanded(
                    child: Slider(
                      value: .42,
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(width: 8),
                  Text("06:38"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.replay_10),
                    onPressed: () {},
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.forward_10),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.comment),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
