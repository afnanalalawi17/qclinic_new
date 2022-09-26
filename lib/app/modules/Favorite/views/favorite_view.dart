import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:get/get.dart';
import 'package:qclinic/Shared/color/colors.dart';
import 'package:qclinic/Shared/widget/constants.dart';
import 'package:qclinic/app/routes/app_pages.dart';

import '../controllers/favorite_controller.dart';

class FavoriteView extends GetView<FavoriteController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child:Scaffold(
      appBar: AppBar(
           automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            title: Text(
                         "المفضلة",
                         style: TextStyle(
                             color: kblack, fontSize: 18, fontWeight: FontWeight.bold),
                       ),
        
      ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Container(
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: kblack, width: 1)),
                          child: TabBar(
                            // controller: _tabController,
                            // give the indicator a decoration (color and border radius)
                            indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context).primaryColor,
                            ),
                            labelColor: Colors.white,
                            unselectedLabelColor: Theme.of(context).primaryColor,
                            tabs: [
                              Tab(
                                child: Text(
                                  'منتجات',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'قائمة التبني',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: heightApp*0.02,),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(.20),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    children: [
                      Icon(Icons.warning_amber_rounded, color: Colors.red),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, right: 2),
                        child: Text(
                          "لحذف أي عنصر فقط اسحب لليمين",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: heightApp * 0.02,
              ),
                 Expanded(
                        child: TabBarView(children: [
                          SingleChildScrollView(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                children: [
              ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 20,
                      ),
                  padding: const EdgeInsets.all(4),
                  shrinkWrap: true,
                  itemCount: 8,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                     onTap: () {
                           Get.toNamed(Routes.DETIALS_SHOP);
                     },
                      child: Container(
                          width: double.infinity,
                          height: 60,
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
                          child: Slidable(
                              useTextDirection: false,
                              key: const ValueKey(0),
                              endActionPane: ActionPane(
                                motion: ScrollMotion(),
                                //dismissible: DismissiblePane(onDismissed: () {}),
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 193, 203, 0.17),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          bottomRight: Radius.circular(20)
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SizedBox(width: 60),
                                          GestureDetector(
                                            child: Icon(
                                              Icons.delete,
                                              color: Color(0xffFE3F60),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              child: Container(
                                  width: double.infinity,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //     color: Colors.grey.withOpacity(0.5),
                                    //     spreadRadius: 2,
                                    //     blurRadius: 6,
                                    //     offset: Offset(0, 0), // changes position of shadow
                                    //   ),
                                    // ],
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                          "assets/images/—Pngtree—bone pet color shape_6525136 2.png"),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8, right: 22),
                                        child: Column(
                                          children: [
                                            Text(
                                              'طوق',
                                              style: TextStyle(
                                                  color: kblack,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              '12 ر.س',
                                              style: TextStyle(
                                                  color: kblack,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )))),
                    );
                  }),
                   SizedBox(
                height: heightApp * 0.10,
              ),
            ],
          ))), SingleChildScrollView(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                children: [
              ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 20,
                      ),
                  padding: const EdgeInsets.all(4),
                  shrinkWrap: true,
                  itemCount: 8,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                     onTap: () {
                           Get.toNamed(Routes.DETIALS_SHOP);
                     },
                      child: Container(
                          width: double.infinity,
                          height: 60,
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
                          child: Slidable(
                              useTextDirection: false,
                              key: const ValueKey(0),
                              endActionPane: ActionPane(
                                motion: ScrollMotion(),
                                //dismissible: DismissiblePane(onDismissed: () {}),
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 193, 203, 0.17),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          bottomRight: Radius.circular(20)
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SizedBox(width: 60),
                                          GestureDetector(
                                            child: Icon(
                                              Icons.delete,
                                              color: Color(0xffFE3F60),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              child: Container(
                                  width: double.infinity,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //     color: Colors.grey.withOpacity(0.5),
                                    //     spreadRadius: 2,
                                    //     blurRadius: 6,
                                    //     offset: Offset(0, 0), // changes position of shadow
                                    //   ),
                                    // ],
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                          "assets/images/cat.png"),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8, right: 22),
                                        child: Column(
                                          children: [
                                            Text(
                                              'قطة',
                                              style: TextStyle(
                                                  color: kblack,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              '565 ر.س',
                                              style: TextStyle(
                                                  color: kblack,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )))),
                    );
                  }),
                   SizedBox(
                height: heightApp * 0.10,
              ),
            ],
          ),
        ))
        ]))]))));
  }
}
