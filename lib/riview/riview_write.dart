import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'dart:developer';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<FormScreen> createState() => riview_write();
}

class riview_write extends State<FormScreen> {
  final formkey = GlobalKey<FormState>();

  String content = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.lightBlueAccent,
          title: Center(
              child: Text('리뷰작성',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ))),
        ),
        body: SingleChildScrollView(
          child:Form(
              key: formkey,
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(25, 30, 25, 30),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                            child: Column(
                              children: [
                                RatingBar(
                                  initialRating: 1,
                                  minRating: 1,
                                  maxRating: 5,
                                  allowHalfRating: true,
                                  itemSize: 55,
                                  ratingWidget: RatingWidget(
                                    full: const Icon(Icons.star,
                                        color: Colors.lightBlueAccent),
                                    half: const Icon(Icons.star, // 반절 취급 안하기 위해서 클릭하면 그냥 별로 채워지게끔 셋팅
                                        color: Colors.lightBlueAccent),
                                    empty: const Icon(Icons.star_border,
                                        color: Colors.lightBlueAccent),
                                  ),
                                  onRatingUpdate: (rating) {
                                    //log('rating update to: $rating'); //$rating = 별점 값
                                  },
                                ),
                              ],
                            ),
                          ),
                          TextFormField(
                            autovalidateMode: AutovalidateMode.always,
                            maxLines: 13,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,

                                errorStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blueAccent,
                                ),
                                hintText: "다녀온 리뷰를 정성껏 작성해주세요!!!",
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),

                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(width: 2, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(4)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(width: 2, color: Colors.black),
                                    borderRadius: BorderRadius.circular(4)),
                                errorBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(width: 2, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(4)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(width: 2, color: Colors.black),
                                    borderRadius: BorderRadius.circular(4))),
                            onSaved: (value) {
                              // 내용 작성하면 content에 저장
                              setState(() {
                                content = value as String;
                              });
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return '내용을 입력해주세요';
                              }
                              return null;
                            },
                          ),
                          // TextFormField(maxLength: 5,decoration: InputDecoration(
                          //   counterText: 'counter',
                          // ),),
                          SizedBox(height: 30), //여백 줄려고 넣음

                          ElevatedButton(
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                // validation 이 성공하면 폼 저장하기
                                formkey.currentState!.save();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('작성이 완료 되었습니다.')),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightBlueAccent,
                              minimumSize: Size.fromHeight(50), // 높이만 50으로 설정
                              shape: RoundedRectangleBorder(// shape : 버튼의 모양을 디자인 하는 기능
                                  borderRadius: BorderRadius.circular(4.0)),
                              shadowColor: Colors.grey,
                            ),
                            child: const Text('작성 완료',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                          ),
                        ],
                      )),
                ],
              ),
            )
        ));
  }
}
