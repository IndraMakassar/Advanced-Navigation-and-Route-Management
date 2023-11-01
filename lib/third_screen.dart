import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Third screen')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Navigation'),
            ),
            ListTile(
                selected: false,
                title: const Text('First Screen'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/');
                }),
            ListTile(
                selected: false,
                title: const Text('Second Screen'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/second');
                }),
            ListTile(
                selected: true,
                title: const Text('Third Screen'),
                onTap: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Return to the first screen.
            Navigator.pushNamed(context, '/');
          },
          child: const Text('Go Back to First Screen'),
        ),
      ),
    );
  }
}
