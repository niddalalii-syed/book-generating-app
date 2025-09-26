import 'package:book_generating/core/size_utils.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class CreateBookScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        // leadingWidth: 80,
        elevation: 0,
              // leading: ,
automaticallyImplyLeading: false,
        title: Row(
          children: [
            InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: Image.asset('assets/images/arrow.png')),
            ),
            SizedBox(width: 15),
            Text(
              "Create a Book",
              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        centerTitle: false,
      ),
      body: Center(
        child: Container(
          width: ScreenSizeUtil.getWidth(context) *0.95,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Progress Indicator
                LinearProgressIndicator(
                  value: 0.3, // Adjust progress accordingly
                  backgroundColor: Color(0xfff6f6f7),
                  minHeight: 12,
                  borderRadius: BorderRadius.circular(20),
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xff43b888)),
                ),
                SizedBox(height: 20),
          
                // Upload Cover Box
             Padding(
          padding: EdgeInsets.all(0),
          child: DottedBorder(
            borderType: BorderType.RRect, // Use RRect for rounded corners
            radius: Radius.circular(10), // Make it more rounded
            dashPattern: [6, 8], // Adjust the dash pattern for better styling
            color: Color(0xff43b888),
            strokeWidth: 1.5,
            child: ClipRRect( // Ensures the inner Container follows the rounded shape
              borderRadius: BorderRadius.circular(10), // Match with `DottedBorder`
              child: Container(
                height: 218,
                width: double.infinity,
                color: Colors.grey[100],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/Add.png'),
                    SizedBox(height: 8),
                    Text(
                      "Upload Cover",
                      style: TextStyle(color: Color(0xff43b888), fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
              ) ,
                SizedBox(height: 20),
          
                // Input Fields
                _buildInputField("Book Title"),
                SizedBox(height: 10),
                _buildInputField("Dedication or Name of Person"),
                SizedBox(height: 10),
                _buildInputField("Volume Number"),
                SizedBox(height: 30),
          
                // Add Questions Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Color(0xff43b888),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Text("Add Questions", style: TextStyle(fontSize: 16, color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Input Field Widget
  Widget _buildInputField(String hintText) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 15, color: Color(0xff292a2c),fontWeight: FontWeight.normal),
        filled: true,
        fillColor: Color(0xfff6f6f7),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      ),
    );
  }
}
