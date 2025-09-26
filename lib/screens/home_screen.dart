import 'package:book_generating/core/size_utils.dart';
import 'package:book_generating/screens/book_details.dart';
import 'package:book_generating/screens/create_book.dart';
import 'package:book_generating/screens/view_books.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, String>> items = [
    {'image': 'assets/images/ques.png', 'text': 'Questions'},
    {'image': 'assets/images/challenge.png', 'text': 'Challenges'},
    {'image': 'assets/images/Books.png', 'text': 'Books'},
    {'image': 'assets/images/Files.png', 'text': 'Assets'},
    {'image': 'assets/images/commu.png', 'text': 'Community'},
    {'image': 'assets/images/heart.png', 'text': 'Family'},
  ];
  final List<Map<String, String>> cardData = [
    {
      'image': 'assets/images/book1.png', // Replace with actual image paths
      'title': 'Create a book',
      'subtitle':
          'Make a book with your favourite legacy questions or create your own',
    },
    {
      'image': 'assets/images/book2.png',
      'title': 'View All Books',
      'subtitle': 'Check out all the family members you have added',
    },
  ];
  final List<Map<String, String>> categories = [
    {'image': 'assets/images/t1.png', 'title': 'Parenting'},
    {'image': 'assets/images/t2.png', 'title': 'Vocational'},
    {'image': 'assets/images/t3.png', 'title': 'Educational'},
    {'image': 'assets/images/t4.png', 'title': 'Parenting'},
  ];
  final List<Map<String, String>> categories1 = [
    {'image': 'assets/images/t11.png', 'title': 'Parenting'},
    {'image': 'assets/images/v1.png', 'title': 'Vocational'},
    {'image': 'assets/images/b1.png', 'title': 'Educational'},
    {'image': 'assets/images/t11.png', 'title': 'Parenting'},
  ];

  final List<Map<String, String>> cardData1 = [
    {
      'image': 'assets/images/t11.png',
      'profile': 'assets/images/p1.png',
      'title': 'Parenting Inspiration',
      'description': 'Question for every parent needing help...',
    },
    {
      'image': 'assets/images/t11.png',
      'profile': 'assets/images/p1.png',
      'title': 'Parenting Inspiration',
      'description': 'Question for every parent needing help...',
    },
  ];
  final List<Map<String, String>> cardData2 = [
    {
      'image': 'assets/images/t11.png',
      'title': 'Family Exploration',
      'subtitle': 'Ask three family members',
    },
    {
      'image': 'assets/images/t11.png',
      'title': 'Mission Statement',
      'subtitle': 'Create your own',
    },
    {
      'image': 'assets/images/t11.png',
      'title': 'Educational',
      'subtitle': '10 Questions',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: 340,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SafeArea(
                  child: Center(
                    child: Container(
                      // width: ScreenSizeUtil.getWidth(context) * 0.99,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8, top: 8),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset('assets/images/drawer.png'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 8),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff43B888),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                height: 25,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8,
                                    right: 8,
                                    top: 2,
                                    bottom: 2,
                                  ),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    'Daily Inspiration',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                             padding: const EdgeInsets.only(left: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Spending Time with Family',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 25),
                          Padding(
                              padding: const EdgeInsets.only(left: 20),
                            child: SizedBox(
                              height: 86, // Ensure proper height for ListView
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: items.length,
                                itemBuilder: (context, index) {
                                  return Row(
                                    children: [
                                      Container(
                                        // height: 70,
                                        width: 101,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.5),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(items[index]['image']!),
                                            SizedBox(height: 10),
                                            Text(
                                              items[index]['text']!,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ), // Add spacing between items
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  // height: ScreenSizeUtil.getHeight(context) *1,
                  width: ScreenSizeUtil.getWidth(context),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: Image.asset('assets/images/comma.png'),
                          ),
                          Text('William James', style: TextStyle(fontSize: 15)),
                        ],
                      ),
                      Container(
                        width: 300,
                        child: Text(
                          textAlign: TextAlign.center,
                          '“The greatest purpose of life is to live it for something that last longer than you”',
                        ),
                      ),
                    ],
                  ),
                ),
                  Container(color: Colors.white, height: 30),
                Container(
                  color: Colors.white,
                  height: 252, // Adjust height as needed
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cardData.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          cardData[index]['title'] =='Create a book'?
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreateBookScreen(
                              ))):Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BookDetails(
                              )));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: _buildCard(
                            image: cardData[index]['image']!,
                            title: cardData[index]['title']!,
                            subtitle: cardData[index]['subtitle']!,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                  Container(color: Colors.white, height: 15),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ), // Reduced vertical padding
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Questions by topic',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(color: Colors.white, height: 15),
                // 🔹 Wrap Instead of GridView to Fix Extra Space Issue
                Container(
                  // width: ScreenSizeUtil.getWidth(context)*0.93,
                  color: Colors.white,
                  child: Align(
                      alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: Wrap(
                          
                          spacing: 0.0, // Space between items horizontally
                          runSpacing:
                              30.0, // Space between rows vertically (Reduce this if extra space exists)
                          children:
                              categories.map((category) {
                                return SizedBox(
                                  width:
                                      (ScreenSizeUtil.getWidth(context) / 2) -
                                      24, // Dynamically set width for 2 columns
                                  child: _buildCategoryItem(
                                    image: category['image']!,
                                    title: category['title']!,
                                  ),
                                );
                              }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                 Container(color: Colors.white, height: 20),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ), // Reduced vertical padding
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Most Popular Questions',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                 Container(color: Colors.white, height: 15),
                Container(
                  color: Colors.white,
                  height: 140, // Adjust height as needed
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories1.length,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          right: 12.0,
                        ), // Spacing between items
                        child: _buildCategoryItem1(
                          image: categories1[index]['image']!,
                          title: categories1[index]['title']!,
                        ),
                      );
                    },
                  ),
                ),
                 Container(color: Colors.white, height: 10),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ), // Reduced vertical padding
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Get inspired by others',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                 Container(color: Colors.white, height: 15),
                Container(
                  color: Colors.white,
                  height: 272, // Adjust height as needed
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cardData1.length,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          right: 12.0,
                        ), // Spacing between items
                        child: _buildInspirationCard(
                          image: cardData1[index]['image']!,
                          profile: cardData1[index]['profile']!,
                          title: cardData1[index]['title']!,
                          description: cardData1[index]['description']!,
                        ),
                      );
                    },
                  ),
                ),
                 Container(color: Colors.white, height: 15),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ), // Reduced vertical padding
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Weekly Legacy Challenges',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                 Container(color: Colors.white, height: 15),
                Container(
                  color: Colors.white,
                  height: 160, // Adjust height as needed
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cardData2.length,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          right: 12.0,
                        ), // Spacing between items
                        child: _buildFamilyCard(
                          image: cardData2[index]['image']!,
                          title: cardData2[index]['title']!,
                          subtitle: cardData2[index]['subtitle']!,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildFamilyCard({
  required String image,
  required String title,
  required String subtitle,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // 🔹 Image Section
      ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          image,
          width: 152, // Adjust width as needed
          height: 82, // Adjust height as needed
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(height: 8),

      // 🔹 Title
      Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
      // SizedBox(height: 4),

      // 🔹 Subtitle
      Text(subtitle, style: TextStyle(fontSize: 12, color: Colors.grey)),
    ],
  );
}

Widget _buildInspirationCard({
  required String image,
  required String profile,
  required String title,
  required String description,
}) {
  return Container(
    width: 219, // Adjust width as needed
    // height: 280,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.grey.shade400, width: 0.5),
      borderRadius: BorderRadius.circular(12),
      // boxShadow: [
      //   BoxShadow(
      //     color: Colors.grey.withOpacity(0.2),
      //     spreadRadius: 0,
      //     blurRadius: 4,
      //     offset: Offset(0, 2),
      //   ),
      // ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 🔹 Cover Image
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset(
                image,
                height: 131,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 110, 0, 0),
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white,
                child: ClipOval(child: Image.asset(profile, fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔹 Profile Picture & Title
              Row(
                children: [
                  // SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),

              // 🔹 Description
              Text(
                description,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 12),

              // 🔹 Likes & Shares
              Row(
                children: [
                  Image.asset('assets/images/heart.png', width: 20, height: 20),
                  SizedBox(width: 4),
                  Text(
                    'Likes',
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                  SizedBox(width: 20),
                  // Spacer(),
                  Image.asset('assets/images/share.png', width: 20, height: 20),
                  SizedBox(width: 4),
                  Text(
                    'Shares',
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildCategoryItem({required String image, required String title}) {
  return Row(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(image, width: 50, height: 50, fit: BoxFit.cover),
      ),
      SizedBox(width: 12),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          // SizedBox(height: 4),
          Text(
            '30 Questions',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    ],
  );
}

Widget _buildCategoryItem1({required String image, required String title}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          image,
          width: 124, // Adjust size as needed
          height: 81,
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(height: 8),
      Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
      // SizedBox(height: 2),
      Text('30 Questions', style: TextStyle(fontSize: 14, color: Colors.grey)),
    ],
  );
}

Widget _buildCard({
  required String image,
  required String title,
  required String subtitle,
}) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    elevation: 0,
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xffF6F6f7),
        borderRadius: BorderRadius.circular(12),
      ),
      width: 189, // Adjust width as needed
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              image,
              height: 152,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 5),
                Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 10, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
