import 'package:book_generating/screens/details.dart';
import 'package:flutter/material.dart';

class BookGrid extends StatelessWidget {
  final List<Map<String, String>> books = [
    {'image': 'assets/images/book11.png', 'title': 'Book Title', 'author': 'Tabish bin Tahir'},
    {'image': 'assets/images/book22.png', 'title': 'Book Title', 'author': 'Tabish bin Tahir'},
    {'image': 'assets/images/book11.png', 'title': 'Book Title', 'author': 'Tabish bin Tahir'},
    {'image': 'assets/images/book22.png', 'title': 'Book Title', 'author': 'Tabish bin Tahir'},
    {'image': 'assets/images/book11.png', 'title': 'Book Title', 'author': 'Tabish bin Tahir'},
    {'image': 'assets/images/book22.png', 'title': 'Book Title', 'author': 'Tabish bin Tahir'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: GridView.builder(
        shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(), // Prevents independent scrolling
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 books per row
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 0.0,
          childAspectRatio: 0.59 // Adjust to fit the book size properly
        ),
        itemCount: books.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookDetailsScreen())),
            child: _buildBookItem(
              image: books[index]['image']!,
              title: books[index]['title']!,
              author: books[index]['author']!,
              isSelected: index == 1, // Highlighting the second book for demo
              showAddButton: index == 5, // Show "Add" button only on the last book
            ),
          );
        },
      ),
    );
  }

  Widget _buildBookItem({
    required String image,
    required String title,
    required String author,
    bool isSelected = false,
    bool showAddButton = false,
  }) {
    return Stack(
      children: [
        // Book Card
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            // border: isSelected ? Border.all(color: Colors.purple, width: 3) : null, // Highlight selection
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Book Cover
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  image,
                  width: double.infinity,
                  height: 220, // Adjust height as needed
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,decoration: TextDecoration.none,color: Colors.black),
                ),
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  author,
                  style: TextStyle(fontSize: 14, color: Colors.grey,decoration: TextDecoration.none,fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),

        // Favorite Icon (Top Right)
        Positioned(
          top: 8,
          right: 8,
          child: Image.asset('assets/images/heart.png', width: 24, height: 24,color: Colors.white,),
        ),

        // Add Button (Only on last book)

         
      ],
    );
  }
}
