import 'package:cybdom_podcast/global.dart';
import 'package:cybdom_podcast/ui/widgets/favorites_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    profilePicture,
                  ),
                  radius: 24,
                ),
              ],
            ),
            SizedBox(height: 12),
            Text(
              "Hi Cybdom",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 4),
            Text(
              "Explore PodCasts",
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.black.withOpacity(.2),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Search...",
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(height: 16),
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
              child: PageView.builder(
                controller: PageController(viewportFraction: .75),
                itemCount: 5,
                itemBuilder: (context, i) => FavoritesContainer(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  child: Text(
                    "View All",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.blueAccent),
                  ),
                  onPressed: () => {},
                )
              ],
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 22,
              itemBuilder: (context, i) => Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      offset: Offset(0, 2),
                      color: Colors.black.withOpacity(.1),
                    ),
                  ],
                ),
                child: ListTile(
                  leading: ClipRRect(
                    child: Image.network(splashPicture),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  title: Text("Insights from Flutter"),
                  subtitle: Text("by Cybdom"),
                  trailing: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          offset: Offset(0, 2),
                          color: Colors.black.withOpacity(.2),
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.play_arrow,
                        color: Colors.blueAccent,
                      ),
                      onPressed: () => Navigator.pushNamed(context, 'listen'),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
