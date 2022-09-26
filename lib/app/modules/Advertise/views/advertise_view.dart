import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qclinic/Shared/color/colors.dart';
import 'package:qclinic/Shared/style/Text_style.dart';
import 'package:qclinic/Shared/widget/constants.dart';
import 'package:qclinic/Shared/widget/main_button.dart';

import '../controllers/advertise_controller.dart';

class AdvertiseView extends GetView<AdvertiseController> {
  List<String> valueList = ['A', 'B', 'C', 'D'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          shadowColor: Colors.transparent,
          backgroundColor: kwhite,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "طلب إستشارة ",
                style: TextStyle(
                    color: kblack, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: SizedBox(
                    height: 42,
                    width: 42,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [
                                const Color(0xFF628B8C),
                                const Color(0xFF9ED0D2),
                              ],
                              begin: const FractionalOffset(0.0, 0.0),
                              end: const FractionalOffset(1.0, 0.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp),
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: kwhite,
                          size: 25.0,
                        ))),
              ),
            ],
          ),
        ),
        body: GetBuilder<AdvertiseController>(
            init: AdvertiseController(),
            initState: (_) {},
            builder: (_) {
              return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 6,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      ListView.separated(
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 5,
                          );
                        },
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                                 controller.onSelectCat(index);
                            },
                            child:  controller.selectedCatIndex != index
                                        ? Container(
                                            width: 60,
                                            child: Image.asset(
                                                "assets/images/cat.png"))
                                        : Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox.fromSize(
                                              size: Size.fromRadius(
                                                  50), // Image radius
                                              child: Image.asset(
                                                  "assets/images/cat.png",
                                                  fit: BoxFit.fill),
                                            ),
                                        )
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: heightApp * 0.02,
                ),
                Text(
                  "نوع  الاستشارة",
                  style: TextStyle(
                      color: kblack, fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: heightApp * 0.01,
                ),
                Container(
                  height: 60.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xffF2F2F2)),
                  child: DropdownButtonFormField(
                    isDense: true,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (val) {
                      // return controller.validateZone(val.toString());
                    },
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kbordergrey, width: 2),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      //
                    ),
                    items: valueList.map((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                        onTap: () {},
                      );
                    }).toList(),
                    // value: controller.selectedVendor2,
                    onChanged: (newValue) {},
                    hint: Text(
                      "اختار نوع  الاستشارة",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    isExpanded: true,
                  ),
                ),SizedBox(
                  height: heightApp * 0.02,
                ), Text(
                        "اليوم",
                        style: TextStyle(
                            color: kblack,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height: 40,
                          child: GetBuilder<AdvertiseController>(
                              init: AdvertiseController(),
                              initState: (_) {},
                              builder: (_) {
                                return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: GestureDetector(
                                        onTap: () {
                                          controller.select= true;
                                          controller.update();
                                          controller.onSelectCat2(index);
                                        },
                                        child: controller.selectedCatIndex2 !=
                                                index
                                            ? Container(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  gradient: LinearGradient(
                                                      colors: [
                                                        const Color(0xFF628B8C),
                                                        const Color(0xFF9ED0D2),
                                                      ],
                                                      begin:
                                                          const FractionalOffset(
                                                              0.0, 0.0),
                                                      end:
                                                          const FractionalOffset(
                                                              1.0, 0.0),
                                                      stops: [0.0, 1.0],
                                                      tileMode: TileMode.clamp),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          right: 10,
                                                          top: 5),
                                                  child: Text(
                                                    "24-05-2022",
                                                    style: TextStyle(
                                                        color: kwhite,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ))
                                            : Container(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    color: Color(0XFF404041)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          right: 10,
                                                          top: 5),
                                                  child: Text(
                                                    "24-05-2022",
                                                    style: TextStyle(
                                                        color: kwhite,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ))),
                                  ),
                                );
                              })),
                      SizedBox(
                        height: heightApp * 0.02,
                      ),
                      controller.select == true
                 ?     Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "الوقت",
                            style: TextStyle(
                                color: kblack,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                      
                      SizedBox(
                          height: 40,
                          child: GetBuilder<AdvertiseController>(
                              init: AdvertiseController(),
                              initState: (_) {},
                              builder: (_) {
                                return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: GestureDetector(
                                        onTap: () {
                                          controller.onSelectCat3(index);
                                        },
                                        child: controller.selectedCatIndex3 !=
                                                index
                                            ? Container(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  gradient: LinearGradient(
                                                      colors: [
                                                        const Color(0xFF628B8C),
                                                        const Color(0xFF9ED0D2),
                                                      ],
                                                      begin:
                                                          const FractionalOffset(
                                                              0.0, 0.0),
                                                      end:
                                                          const FractionalOffset(
                                                              1.0, 0.0),
                                                      stops: [0.0, 1.0],
                                                      tileMode: TileMode.clamp),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          right: 10,
                                                          top: 5),
                                                  child: Text(
                                                    "6:00 AM",
                                                    style: TextStyle(
                                                        color: kwhite,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ))
                                            : Container(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    color: Color(0XFF404041)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          right: 10,
                                                          top: 5),
                                                  child: Text(
                                                    "6:00 AM",
                                                    style: TextStyle(
                                                        color: kwhite,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ))),
                                  ),
                                );
                              })),
                                ],
                      ): SizedBox(
                  height: heightApp * 0.01,
                ),
                SizedBox(
                  height: heightApp * 0.04,
                ),
                MainButton(text: "طلب إستشارة", press: () {   showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    contentPadding: EdgeInsets.all(12),
                                      scrollable: true,
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12.0))),
                                      content: Column(children: [
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: CircleAvatar(
                                            // radius: 11,
                                            backgroundColor: kblue,
                                            child: IconButton(
                                                onPressed: () {   Navigator.of(context).pop();},
                                                icon: Icon(Icons.close,color: kwhite,)),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: const EdgeInsets.all(22.0),
                                            child: Text(
                                                "تم الحجز بنجاح الرجاء دفع رسوم لتأكيد الحجز",textAlign: TextAlign.center,),
                                          ),
                                        ),SizedBox(height: heightApp*0.02,),
                                      SizedBox(
                                        width: widthApp*0.44,
      height: heightApp * 0.044,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: kblue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        onPressed: (){},
        child: Center(
          child: Text(
            "إدفع",
            style: kWhite_text,
          ),
        ),
      ),
    ),SizedBox(height: heightApp*0.02,)
                                      ]));
                                });})
              ],
            ),
          ),
        );
        
            }));
  }
}
