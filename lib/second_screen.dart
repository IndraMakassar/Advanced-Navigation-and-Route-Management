import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String data =
        ModalRoute.of(context)?.settings.arguments as String ?? 'first';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, '/', arguments: '/second');
          },
        ),
      ),
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
                  Navigator.pushNamed(context, '/', arguments: "/second");
                }),
            ListTile(
              selected: true,
              title: const Text('Second Screen'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
                selected: false,
                title: const Text('Third Screen'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/third', arguments: "/second");
                }),
          ],
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(data),
          ElevatedButton(
            onPressed: () {
              // Return to the first screen.
              Navigator.pushNamed(context, '/', arguments: "/second");
            },
            child: const Text('Go Back to First Screen'),
          ),
        ],
      )),
    );
  }
}
