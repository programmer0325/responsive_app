import 'package:flutter/material.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[600],
        title: const Text("Y O U T U B E", style:  TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        ),
      ),
      body: Row(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 4,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AspectRatio(
                      aspectRatio: 22/9,
                      child: Container(
                        color: Colors.deepPurple[500],
                      ),
                    ),
                  );
                }
            ),
          ),
          SizedBox(
            width: 200,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.deepPurple[600],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
