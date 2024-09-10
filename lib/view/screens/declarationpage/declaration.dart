import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

String declar = "";
String date = "";
String place = "";

class Declaration extends StatefulWidget {
  const Declaration({super.key});

  @override
  State<Declaration> createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {
  bool index = false;

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
            "Declaration",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Declaration",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Switch(
                      activeColor: Colors.white,
                      value: index,
                      onChanged: (val) {
                        index = val;
                        setState(() {});
                      },
                    ),
                  ],
                ),
                Visibility(
                  visible: index,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      TextFormField(
                        cursorColor: Colors.white,
                        cursorWidth: 2,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          hintStyle: const TextStyle(color: Colors.grey),
                          labelText: "Description",
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 20.sp,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
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
                          val = declar;
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Text(
                              "DOB",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 18.sp),
                            ),
                          ],
                        ),
                      ),
                      TextFormField(
                        cursorColor: Colors.white,
                        cursorWidth: 2,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          hintText: "DD/MM/YYYY",
                          hintStyle: const TextStyle(color: Colors.grey),
                          labelText: "Birth date",
                          labelStyle:
                              TextStyle(color: Colors.grey, fontSize: 20.sp),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
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
                          val = date;
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "  Place",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
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
                          hintText: "Enter YOur City Name",
                          hintStyle: const TextStyle(color: Colors.grey),
                          labelText: "City",
                          labelStyle:
                              TextStyle(color: Colors.grey, fontSize: 20.sp),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
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
                          val = place;
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
