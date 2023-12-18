import 'package:flutter/material.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        title: const Text(
          "Y O U T U B E",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 4, // including the AspectRatio container
                itemBuilder: (context, index) {
                  if (index == 0) {
                    // AspectRatio container
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Container(
                          color: Colors.deepPurple[500],
                        ),
                      ),
                    );
                  } else {
                    // Other containers
                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        height: 300, // Set the height of your containers
                        color: Colors.deepPurple[400],
                      ),
                    );
                  }
                },
              ),
            ),
            SizedBox(
              width: 200, // Set the width of the side panel
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.deepPurple[500],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
