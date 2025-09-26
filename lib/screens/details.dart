import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     appBar: AppBar(
      title: Text('Books Details'),
      leading: InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Image.asset('assets/images/arrow.png')),
      actions: [Image.asset('assets/images/drawer.png'),SizedBox(width: 10,)],
    ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Book Image with Green Background
            Container(
              height: 272,
              // color: Color(0xff43b888),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/blurr.png'),
                  fit: BoxFit.cover,
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Center(
                child: Stack(
                  children: [
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/images/book22.png',
                          width: 168,
                          height: 210,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset(
                          'assets/images/heart.png',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Book Title & Author
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Book Title",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Tabish Bin Tahir",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff777779),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Image.asset('assets/images/edit.png'),
                        label: Text("Edit"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Color(0xff43b888),
                          side: BorderSide(color: Color(0xff43b888)),
                        ),
                      ),
                      SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xfffb056c),
                          foregroundColor: Colors.white,
                        ),
                        child: Text("Delete"),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Divider(color: Color(0xff43b888), thickness: 1),

            // Book Stats
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  _buildStatRow("Total Questions", "20"),
                  Divider(),
                  _buildStatRow("Answered - Questions", "17"),
                  Divider(),
                  _buildStatRow("Unanswered - Questions", "3"),
                  Divider(),
                  SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    height: 47,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/down.png'),
                          SizedBox(width: 8),
                          Text(
                            'Download PDF',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff43b888),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            // Description
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem psum has been the industry's standard dummy text ever since the 1500s,",
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            // Questions Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Questions",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
            ),

            SizedBox(height: 20),

            // List of Questions
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  _buildQuestionCard(0),
                  _buildQuestionCard(23),
                  _buildQuestionCard(23),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to Build Stats Row
  Widget _buildStatRow(String title, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff777779),
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  // Function to Build Question Cards
  Widget _buildQuestionCard(int answers) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xff43b888)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Info
            Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage('assets/images/p1.png'),
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tabish Bin Tahir",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 12),
            Text(
              "Question 1 | Topic",
              style: TextStyle(fontSize: 13, color: Color(0xff777779),),
            ),
                      SizedBox(height: 5),
        
            // Question Text
            Text(
              "How would you describe our family’s humour as if to a stranger?",
              style: TextStyle(fontSize: 16),
            ),
        
            SizedBox(height: 12),
        
            // Buttons Row
            Row(
              children: [
                Container(
                  height: 31,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color(0xff43b888),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Answers [$answers]",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
        
                SizedBox(width: 12),
                Container(
                  height: 31,
                  width: 80.17,
                  decoration: BoxDecoration(
                    color: Color(0xfff6f6f7),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/share.png',
                        width: 16,
                        height: 16,
                      ),
                      SizedBox(width: 5),
                      Text('Share', style: TextStyle(color: Color(0xff43b888)),),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
