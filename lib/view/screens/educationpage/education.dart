import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  String course = "";
  String schools = "";
  String result = "";
  String year = "";
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
            title: const Text(
              "EducationPage",
              style: TextStyle(color: Colors.white),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.black),
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe1KTYuDR4uOwcIVq_BCsmIvpy_o8ONLVkcw&s",
              ),
              fit: BoxFit.contain,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                SizedBox(
                  height: 25.h,
                ),
                TextFormField(
                  cursorColor: Colors.white,
                  cursorWidth: 2,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.white),
                  maxLines: 1,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    focusColor: Colors.white,
                    hintText: "Diploma in Com...",
                    hintStyle: const TextStyle(color: Colors.grey),
                    labelText: "Course/Degree...",
                    labelStyle: const TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white54,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  onChanged: (val) {
                    val = course;
                  },
                ),
                SizedBox(
                  height: 25.h,
                ),
                TextFormField(
                  cursorColor: Colors.white,
                  cursorWidth: 2,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.white),
                  maxLines: 1,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    focusColor: Colors.white,
                    hintText: "Enter your univercity",
                    hintStyle: const TextStyle(color: Colors.grey),
                    labelText: "School/Collage/Institute...",
                    labelStyle: const TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white54,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2.w,
                      ),
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  onChanged: (val) {
                    val = schools;
                  },
                ),
                SizedBox(
                  height: 25.h,
                ),
                TextFormField(
                  cursorColor: Colors.white,
                  cursorWidth: 2.w,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.white),
                  maxLines: 1,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    focusColor: Colors.white,
                    hintText: "Enter your CGPA",
                    hintStyle: const TextStyle(color: Colors.grey),
                    labelText: "School/Collage/Institute...",
                    labelStyle: const TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white54,
                        width: 2.w,
                      ),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  onChanged: (val) {
                    val = result;
                  },
                ),
                SizedBox(
                  height: 25.h,
                ),
                TextFormField(
                  cursorColor: Colors.white,
                  cursorWidth: 2,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.white),
                  maxLines: 1,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    focusColor: Colors.white,
                    hintText: "Enter Your Pass to year",
                    hintStyle: const TextStyle(color: Colors.grey),
                    labelText: "Year of Pass...",
                    labelStyle: const TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white54,
                        width: 2.w,
                      ),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  onChanged: (val) {
                    year = val;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
