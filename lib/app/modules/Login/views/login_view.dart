import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qclinic/Shared/color/colors.dart';
import 'package:qclinic/Shared/widget/box_Text_Field.dart';
import 'package:qclinic/Shared/widget/constants.dart';
import 'package:qclinic/Shared/widget/main_button.dart';
import 'package:qclinic/app/routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                      Stack( alignment: Alignment.centerRight,
                     children: [
                   Image.asset("assets/images/top.png",alignment: Alignment.center,fit: BoxFit.fill,),
             Padding(
               padding: const EdgeInsets.only(right: 22),
               child: Column(
                 children: [
                   Align(
                          // padding: EdgeInsets.symmetric(
                          //   vertical: 88
                          // ),
                          alignment: Alignment.centerRight,
                          child: Text(
                        "تسجيل الدخول ",
                        style: TextStyle(
                            color: kwhite,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                          ),
                            Align(  alignment: Alignment.centerRight,
                              child: Text(
                    "مرحبا بك من جديد",
                    style: TextStyle(
                        color: kwhite,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                            ),
                 ],
               ),
             ),
                     ]),
                
              
                  Form(
                      key: controller.loginFormKey,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20, top: 20),
                        child: Column(
                          children: [
                            BoxTextField(
                                controller: controller.phoneController,
                                keyboardType: TextInputType.text,
                                onSaved: (value) {
                                  controller.phone = value;
                                },
                                validator: (value) {
                                  return controller.validateMobile(value!);
                                },
                                text: "رقم الهاتف أو البريد الالكتروني"),
                         
                            
                              Obx(() => Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8),
                                      child: Text(
                                        " كلمة المرور",
                                          style: TextStyle(
              fontWeight: FontWeight.bold, color: kblack, fontSize: 12),
                                      ),
                                    ),
                                    TextFormField( textAlign: TextAlign.center,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: kbordergrey, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: kbordergrey, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.red),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.red),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          filled: true,
                                          fillColor: kgrey,
                                          contentPadding: EdgeInsets.all(12),
                                          // hintText: '********',
                                          suffixIcon: IconButton(
                                            icon: controller
                                                    .obscureText.value
                                                ? Icon(Icons
                                                    .visibility_off_outlined)
                                                : Icon(Icons
                                                    .visibility_outlined),
                                            onPressed: () {
                                              controller.changPassVisiblit();
                                            },
                                          )),
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      obscureText:
                                          controller.obscureText.value,
                                      controller: controller
                                          .passwordController,
                                      onSaved: (value) {
                                        controller.password = value!;
                                      },
                                      onChanged: (value) {
                                        controller.password = value;
                                      },
                                      validator: (value) {
                                        return controller
                                            .validatePassword(value!);
                                      },
                                    ),
                                  ],
                                )),    Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   TextButton(
                     onPressed: () {
                         //Get.toNamed(Routes.VERIFY_REST_PASSWORD);
                     },
                     child: Text(
                         'هل نسيت كلمة المرور ؟',
                         style: TextStyle(
                           color: kblue,
                           fontSize: 14,
                           fontWeight: FontWeight.w600,
                         ),
                     ),
                   ),
               
                 ],
               ), SizedBox(
                    height: heightApp * 0.04,
                  ),
                  MainButton(
                      text: "تسجيل الدخول",
                      press: () {
                        //controller.checkLogin();
                                                         
 Get.offAndToNamed(Routes.BASIC);
                      }),
                  SizedBox(
                    height: heightApp * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('ليس لديك حساب ؟',
                          style: TextStyle(
                              fontSize: 14,
                              color: kblack,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: widthApp * 0.01,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.SIGNUP);
                        },
                        child: Text('سجل الان',
                            style: TextStyle(
                                fontSize: 14,
                                color: kblue,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),  Center(
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.BASIC);
                      },
                      child: Text(' الدخول كـ زائر',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 14,
                              color: kblack,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                            ],
                        ),
                      ), ),
                  
                 
                ],
              ),
            )
        );
  }
}
