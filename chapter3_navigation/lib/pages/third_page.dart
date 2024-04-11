import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Drawer")),
        backgroundColor: Colors.red[200],
      ),
      drawer: Drawer(
        backgroundColor: Colors.pink[50],
        child: Column(
          children: [
            //drawer header for logo
            DrawerHeader(
                child: Icon(
              Icons.favorite,
              size: 45,
            )),
            //home page tile
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              //while clicking on home we need to move to another page here we use onTap(),where in the elevated button we use onPressed()
              onTap: () {
                //once it clicked the drawer must be closed
                Navigator.pop(context);
                Navigator.pushNamed(context, '/home');
              },
            ),
            //setting page tile
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/setting');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/fourthpage');
            },
            child: Text("using routes")),
      ),
    );
  }
}
