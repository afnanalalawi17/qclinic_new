import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qclinic/Shared/color/colors.dart';
import 'package:qclinic/Shared/widget/box_Text_Field.dart';
import 'package:qclinic/Shared/widget/constants.dart';
import 'package:qclinic/Shared/widget/main_button.dart';
import 'package:qclinic/app/routes/app_pages.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
               child: Align(
                      // padding: EdgeInsets.symmetric(
                      //   vertical: 88
                      // ),
                      alignment: Alignment.centerRight,
                      child: Text(
                        'تسجيل جديد ',
                        style: TextStyle(
                            color: kwhite,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      ),
             ),
                     ]),
                  // SizedBox(
                  //   height: heightApp * 0.15,
                  // ),
                  Form(
                      key: controller.SignuoFormKey,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                        child: Column(
                          children: [
                            BoxTextField(
                                controller: controller.nameController,
                                keyboardType: TextInputType.text,
                                onSaved: (value) {
                                  controller.name = value;
                                },
                                validator: (value) {
                                  return controller.validateName(value!);
                                },
                                text: "الاسم"),
                            BoxTextField(
                                controller: controller.phoneController,
                                keyboardType: TextInputType.text,
                                onSaved: (value) {
                                  controller.phone = value;
                                },
                                validator: (value) {
                                  return controller.validateMobile(value!);
                                },
                                text: "رقم الهاتف"),
                            BoxTextField(
                                controller: controller.emailController,
                                keyboardType: TextInputType.text,
                                onSaved: (value) {
                                  controller.email = value;
                                },
                                validator: (value) {
                                  return controller.validateEmail(value!);
                                },
                                text: "البريد الإلكتروني(اختياري)"),
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
                                )), SizedBox(
        height: heightApp * 0.01,
          ), 
          
          
          Obx(() => Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8),
                                      child: Text(
                                        "تاكيد كلمة المرور",
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
                                          
                                          suffixIcon: IconButton(
                                            icon: controller
                                                    .obscureText1.value
                                                ? Icon(Icons
                                                    .visibility_off_outlined)
                                                : Icon(Icons
                                                    .visibility_outlined),
                                            onPressed: () {
                                              controller.changPassVisiblit1();
                                            },
                                          )),
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      obscureText:
                                          controller.obscureText1.value,
                                      controller: controller
                                          .confirm_passwordController,
                                      onSaved: (value) {
                                        controller.confirm_password = value!;
                                      },
                                      onChanged: (value) {
                                        controller.confirm_password = value;
                                      },
                                      validator: (value) {
                                        return controller
                                            .validateRePassword(value!);
                                      },
                                    ),
                                  ],
                                )), SizedBox(
                    height: heightApp * 0.04,
                  ),
                  MainButton(
                      text: "تسجيل",
                      press: () {
                         Get.toNamed(Routes.OTP);
                       // controller.checkSignup();
                      }), 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(' لديك حساب ؟',
                          style: TextStyle(
                              fontSize: 14,
                              color: kblack,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: widthApp * 0.01,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.LOGIN);
                        },
                        child: Text('تسجيل الدخول',
                            style: TextStyle(
                                fontSize: 14,
                                color: kblue,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  Center(
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
                      )),
                 
                
                  Align(
              alignment: Alignment.bottomLeft,
              child: Stack(children: [
                Container(
                  child: Image.asset("assets/images/bottom.png"),
                ),
              ])),
                ],
              ),
            ),
            
          
         );
  }
}
