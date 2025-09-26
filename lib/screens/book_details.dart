import 'package:book_generating/screens/view_books.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({super.key});

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Books'),
      leading: InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Image.asset('assets/images/arrow.png')),
      actions: [Image.asset('assets/images/drawer.png'),SizedBox(width: 10,)],
    ),
    body: BookGrid(),
    floatingActionButton:  CircleAvatar(
      backgroundColor: Color(0xff43B888),
      radius: 25,
      child: Icon(Icons.add, color: Colors.white, size: 35),
    ),
    );
  }
}