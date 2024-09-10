import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

String skill1 = "";
String skill2 = "";

class Skillpage extends StatefulWidget {
  const Skillpage({super.key});

  @override
  State<Skillpage> createState() => _SkillpageState();
}

class _SkillpageState extends State<Skillpage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "Skill",
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
        ),
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
                  height: 20.h,
                ),
                Text(
                  "Enter your skill",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20.sp,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Column(
                        children: [
                          TextFormField(
                            cursorColor: Colors.white,
                            cursorWidth: 2.w,
                            style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              focusColor: Colors.white,
                              hintText: "Enter your Skill",
                              hintStyle: const TextStyle(color: Colors.grey),
                              labelText: "Skill",
                              labelStyle: TextStyle(
                                  color: Colors.grey, fontSize: 20.sp),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
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
                              val = skill1;
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Column(
                        children: [
                          TextFormField(
                            cursorColor: Colors.white,
                            cursorWidth: 2.w,
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              focusColor: Colors.white,
                              hintText: "Enter your Skill",
                              hintStyle: const TextStyle(color: Colors.grey),
                              labelText: "Skill",
                              labelStyle: TextStyle(
                                  color: Colors.grey, fontSize: 20.sp),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2.w,
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
                              val = skill2;
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white70,
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
