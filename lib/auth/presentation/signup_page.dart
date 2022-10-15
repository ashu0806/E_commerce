import 'package:auto_route/auto_route.dart';
import 'package:e_commerce/auth/presentation/widgets/user_details_field.dart';
import 'package:e_commerce/core/routes/routes.gr.dart';
import 'package:e_commerce/core/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final nameController = TextEditingController();
    final passwordController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: ((notification) {
            notification.disallowIndicator();
            return true;
          }),
          child: ListView(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                child: Container(
                  height: 200.h,
                  width: 1.sw,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      15.r,
                    ),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/login_page_image.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      "Create a account",
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: AppConstant.appBlack,
                          ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "and enjoy admirable deals",
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: AppConstant.titleColor,
                          ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign Up",
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: AppConstant.primaryColor,
                          ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    DetailsField(
                      hintText: "Email",
                      icon: Icons.email,
                      controller: emailController,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    DetailsField(
                      hintText: "Username",
                      icon: Icons.person,
                      controller: nameController,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    DetailsField(
                      hintText: "Password",
                      icon: Icons.lock,
                      controller: passwordController,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: Container(
                        width: 300.w,
                        height: 45.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppConstant.primaryColor,
                          borderRadius: BorderRadius.circular(
                            10.r,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sign Up",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                    fontSize: 20.sp,
                                    color: AppConstant.appWhite,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            const Icon(
                              Icons.login,
                              color: AppConstant.appWhite,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          AutoRouter.of(context).push(const LogInRoute());
                        },
                        child: Text.rich(
                          TextSpan(
                            text: "Back to logIn page ! ",
                            style:
                                Theme.of(context).textTheme.headline4!.copyWith(
                                      fontSize: 15.sp,
                                      color: AppConstant.appBlack,
                                      fontWeight: FontWeight.w400,
                                    ),
                            children: [
                              TextSpan(
                                text: "LogIn",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(
                                      fontSize: 16.sp,
                                      color: AppConstant.primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
