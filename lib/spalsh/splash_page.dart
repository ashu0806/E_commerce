import 'package:auto_route/auto_route.dart';
import 'package:e_commerce/core/routes/routes.gr.dart';
import 'package:e_commerce/core/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SplashPage extends HookConsumerWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var currentPage = useState<int>(0);
    var pageController = PageController();

    List<Map<String, String>> splashPageData = [
      {
        "text1": "Looking for Items",
        "text2":
            "Our new service makes it easy for you to work anywhere,there are new features will really help you.",
        "imageUrl": "assets/images/onboarding_image3.png",
      },
      {
        "text1": "Grab the Deals",
        "text2":
            "Our new service makes it easy for you to work anywhere,there are new features will really help you.",
        "imageUrl": "assets/images/onboarding_image2.png",
      },
      {
        "text1": "Shop trending products",
        "text2":
            "Our new service makes it easy for you to work anywhere,there are new features will really help you.",
        "imageUrl": "assets/images/onboarding_image1.png",
      },
    ];
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (notification) {
                  notification.disallowIndicator();
                  return true;
                },
                child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (value) {
                    currentPage.value = value;
                  },
                  itemCount: splashPageData.length,
                  itemBuilder: (context, index) {
                    final items = splashPageData[index];
                    return OnBoardData(
                      imageUrl: '${items["imageUrl"]}',
                      text1: items["text1"]!,
                      text2: items["text2"]!,
                    );
                  },
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currentPage.value == 2
                      ? InkWell(
                          onTap: () {
                            AutoRouter.of(context).push(const LogInRoute());
                          },
                          child: Container(
                            height: 40.h,
                            width: 300.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                15.r,
                              ),
                              color: AppConstant.primaryColor,
                            ),
                            child: Text(
                              "Get Started",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                    fontSize: 20.sp,
                                    color: AppConstant.appWhite,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        )
                      : Row(
                          children: [
                            SizedBox(
                              width: 30.w,
                            ),
                            Row(
                              children: List.generate(
                                splashPageData.length,
                                (index) {
                                  return Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.w,
                                    ),
                                    child: buildIndicator(
                                      index,
                                      currentPage.value,
                                    ),
                                  );
                                },
                              ),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                if (currentPage.value == 0) {
                                  pageController.jumpToPage(1);
                                } else if (currentPage.value == 1) {
                                  pageController.jumpToPage(2);
                                }
                              },
                              child: Container(
                                height: 40.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                  color: AppConstant.primaryColor,
                                  borderRadius: BorderRadius.circular(
                                    20.r,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.arrow_forward,
                                  color: AppConstant.appWhite,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 30.w,
                            ),
                          ],
                        ),
                  SizedBox(
                    height: 50.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildIndicator(int index, int currentPage) {
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 200,
      ),
      width: currentPage == index ? 25.w : 8.w,
      height: 6.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          15.r,
        ),
        color: currentPage == index
            ? AppConstant.primaryColor
            : AppConstant.titleColor,
      ),
    );
  }
}

class OnBoardData extends StatelessWidget {
  const OnBoardData({
    Key? key,
    required this.text1,
    required this.text2,
    required this.imageUrl,
  }) : super(key: key);
  final String text1, text2, imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 40.h,
        ),
        Image.asset(
          imageUrl,
          width: 300.w,
          height: 250.h,
          fit: BoxFit.contain,
        ),
        SizedBox(
          height: 50.h,
        ),
        Text(
          text1,
          style: Theme.of(context).textTheme.headline4!.copyWith(
                fontSize: 26.sp,
                color: AppConstant.appBlack,
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 35.w,
          ),
          child: Text(
            text2,
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontSize: 16.sp,
                  color: AppConstant.titleColor,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ],
    );
  }
}
