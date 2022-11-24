import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';

class MyWatchlistDetails extends StatefulWidget {
  const MyWatchlistDetails({
    super.key,
    required this.title,
    required this.releaseDate,
    required this.rating,
    required this.watched,
    required this.review,
  });

  final String title;
  final String releaseDate;
  final double rating;
  final String watched;
  final String review;

  @override
  State<MyWatchlistDetails> createState() => _MyWatchlistDetailsState();
}

class _MyWatchlistDetailsState extends State<MyWatchlistDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Details'),
        ),
        // Menambahkan drawer menu
        drawer: LabDrawer(),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Release Date: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(widget.releaseDate),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Rating: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(widget.rating.toString() + "/5"),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Watched: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(widget.watched),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Review: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(widget.review),
                ],
              ),
              Expanded(
                child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Back',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}