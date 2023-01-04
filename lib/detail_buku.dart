import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final List booksData;
  const Detail({Key? key, required this.booksData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(booksData[0].title),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  booksData[0].imageLinks,
                  width: 200,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  booksData[0].authors[0],
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Text(
                  booksData[0].description,
                  textAlign: TextAlign.justify,
                  maxLines: 10,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 10,
                    color: Colors.black,
                  ),
                ),
                Text(
                  booksData[0].publisher,
                  style: TextStyle(
                    height: 2,
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                Text(
                  booksData[0].publishedDate,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
