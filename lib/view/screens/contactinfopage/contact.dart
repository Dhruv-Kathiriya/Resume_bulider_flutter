import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

File? image;
String add = "";
String number = "";
String passWord = "";
int index = 0;
String email = "";
String language = "";
bool isVisible = true;

String name = "";

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  ImagePicker picker = ImagePicker();

  Future<void> pickImage({required ImageSource source}) async {
    XFile? xFile = await picker.pickImage(
      source: source,
    );
    if (xFile != null) {
      image = File(xFile.path);
      setState(() {});
    }
  }

  GlobalKey key = GlobalKey();
  TextEditingController namecontrol = TextEditingController();
  TextEditingController emailcontrol = TextEditingController();
  TextEditingController addresscontrol = TextEditingController();
  TextEditingController numbercontrol = TextEditingController();
  TextEditingController passwordcontrol = TextEditingController();
  TextEditingController languadeontrol = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    debugPrint("******==============>${image?.path}");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: const Text(
            "Contact Info",
            style: TextStyle(color: Colors.white),
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
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        index = 0;
                        log("$index");
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: index == 0
                                  ? Colors.white
                                  : Colors.transparent,
                              width: 4.w,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Contact",
                            style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        index = 1;
                        log("$index");
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: index == 1
                                  ? Colors.white
                                  : Colors.transparent,
                              width: 4.w,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Images",
                            style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Expanded(
                  child: IndexedStack(
                    index: index,
                    children: [
                      SingleChildScrollView(
                        child: Form(
                          key: key,
                          child: Column(
                            children: [
                              TextFormField(
                                validator: (val) => (val!.isEmpty)
                                    ? "Enter your Name..."
                                    : null,
                                controller: namecontrol,
                                keyboardType: TextInputType.name,
                                cursorColor: Colors.white,
                                textInputAction: TextInputAction.next,
                                cursorWidth: 2,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  focusColor: Colors.white,
                                  labelText: "Enter your Name...",
                                  labelStyle:
                                      const TextStyle(color: Colors.white),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.white,
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
                                  name = val;
                                },
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              TextFormField(
                                validator: (val) => (val!.isEmpty)
                                    ? "Enter your E-mail..."
                                    : null,
                                controller: emailcontrol,
                                cursorColor: Colors.white,
                                keyboardType: TextInputType.emailAddress,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                                cursorWidth: 2,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  focusColor: Colors.white,
                                  labelText: "Enter your E-mail...",
                                  labelStyle:
                                      const TextStyle(color: Colors.grey),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.white,
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
                                  email = val;
                                },
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              TextFormField(
                                validator: (val) => (val!.isEmpty)
                                    ? "Enter your Address..."
                                    : null,
                                controller: addresscontrol,
                                cursorColor: Colors.white,
                                cursorWidth: 2,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                                maxLines: 2,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  focusColor: Colors.white,
                                  labelText: "Enter your Address...",
                                  labelStyle:
                                      const TextStyle(color: Colors.grey),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.white,
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
                                  add = val;
                                },
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              TextFormField(
                                validator: (val) => (val!.isEmpty)
                                    ? "Enter your Number..."
                                    : null,
                                controller: numbercontrol,
                                cursorColor: Colors.white,
                                textInputAction: TextInputAction.done,
                                keyboardType: TextInputType.number,
                                cursorWidth: 2,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                                maxLength: 10,
                                decoration: InputDecoration(
                                  labelText: "Enter your Number",
                                  labelStyle:
                                      const TextStyle(color: Colors.grey),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.white,
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
                                  number = val;
                                },
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              TextFormField(
                                validator: (value) => (value!.isEmpty)
                                    ? "Enter your password..."
                                    : null,
                                controller: passwordcontrol,
                                obscureText: isVisible,
                                cursorColor: Colors.white,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                                textInputAction: TextInputAction.done,
                                cursorWidth: 2,
                                decoration: InputDecoration(
                                  labelText: "Enter your Password...",
                                  labelStyle:
                                      const TextStyle(color: Colors.grey),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      isVisible = !isVisible;
                                      setState(() {});
                                    },
                                    icon: (isVisible)
                                        ? const Icon(
                                            Icons.visibility,
                                            color: Colors.white,
                                          )
                                        : const Icon(Icons.visibility_off),
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
                                  passWord = val;
                                },
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              TextFormField(
                                controller: languadeontrol,
                                cursorColor: Colors.white,
                                cursorWidth: 2,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  focusColor: Colors.white,
                                  hintText: "Hindi",
                                  hintStyle:
                                      const TextStyle(color: Colors.grey),
                                  labelText: "Language",
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
                                  language = val;
                                },
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    child: const Text(
                                      "Submit",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      namecontrol.clear();
                                      emailcontrol.clear();
                                      addresscontrol.clear();
                                      namecontrol.clear();
                                      passwordcontrol.clear();
                                      setState(() {});
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    child: const Text(
                                      "Reset",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 250.h,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        alignment: Alignment.center,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 70.w,
                              backgroundImage: (image != null)
                                  ? FileImage(image!)
                                  : const NetworkImage(
                                          "https://tse2.mm.bing.net/th?id=OIP.tXKGs73UYjBEZSclUWLSMAHaHa&pid=Api&P=0&h=180")
                                      as ImageProvider,
                            ),
                            FloatingActionButton.small(
                              backgroundColor: Colors.white,
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: const Text("Pick Image"),
                                    titleTextStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30.sp,
                                    ),
                                    backgroundColor: Colors.white,
                                    content: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ElevatedButton.icon(
                                          onPressed: () {
                                            pickImage(
                                                source: ImageSource.camera);
                                            setState(() {});
                                            Navigator.pop(context);
                                          },
                                          label: const Text("Camera"),
                                        ),
                                        ElevatedButton.icon(
                                          onPressed: () {
                                            pickImage(
                                                source: ImageSource.gallery);
                                            setState(() {});
                                            Navigator.pop(context);
                                          },
                                          label: const Text("Gallary"),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              splashColor: Colors.white,
                              child: const Icon(Icons.add),
                            ),
                          ],
                        ),
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
