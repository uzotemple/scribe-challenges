import 'package:flutter/material.dart';


class GridViewRewardPage extends StatefulWidget {
  @override
  State<GridViewRewardPage> createState() => _GridViewRewardPageState();
}

class _GridViewRewardPageState extends State<GridViewRewardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Grid View Example'),
        // ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            itemCount: 2, // Number of items in the grid
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns in the grid
              crossAxisSpacing: 8.0, // Spacing between columns
              mainAxisSpacing: 12.0, // Spacing between rows
              // childAspectRatio: 1.0
            ),
            itemBuilder: (context, index) {
              return GridTile(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Colors.grey[300], // Background color of each grid item
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.image), // Placeholder for image
                        SizedBox(height: 10), // Spacer between image and text
                        Text(
                          'Item $index', // Text content
                          style: TextStyle(
                            fontSize: 18.0,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );
  }
}
