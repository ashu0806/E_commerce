import 'package:e_commerce/dashboard/presentation/pages/home/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(getPostsFutureProvider);
    // final carouselItems = [
    //   Image.asset(
    //     'assets/images/login_page_image.jpg',
    //   ),
    //   Image.asset(
    //     'assets/images/onboarding_image1.png',
    //   ),
    // ];
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 1.sw,
          height: 1.sh,
          child: posts.when(data: (data) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    data[index].title,
                  ),
                );
              },
              itemCount: data.length,
            );
          }, error: (error, _) {
            return const Text('error');
          }, loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
        ),
        // ListView(
        //   children: [
        //     SizedBox(
        //       height: 40.h,
        //     ),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         SizedBox(
        //           height: 45.h,
        //           width: 250.w,
        //           child: TextField(
        //             cursorColor: AppConstant.secondaryColor,
        //             style: Theme.of(context).textTheme.headline3!.copyWith(
        //                   fontSize: 18.sp,
        //                   color: Colors.black,
        //                 ),
        //             decoration: InputDecoration(
        //               isDense: true,
        //               hintText: "Search items",
        //               hintStyle:
        //                   Theme.of(context).textTheme.headline5!.copyWith(
        //                         fontSize: 16.sp,
        //                         color: AppConstant.titleColor,
        //                       ),
        //               prefixIcon: Icon(
        //                 Icons.search,
        //                 color: AppConstant.appBlack,
        //                 size: 25.sp,
        //               ),
        //               border: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(
        //                   10.r,
        //                 ),
        //                 borderSide: const BorderSide(
        //                   color: AppConstant.titleColor,
        //                 ),
        //               ),
        //               enabledBorder: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(
        //                   10.r,
        //                 ),
        //                 borderSide: const BorderSide(
        //                   color: AppConstant.titleColor,
        //                 ),
        //               ),
        //               focusedBorder: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(
        //                   10.r,
        //                 ),
        //                 borderSide: const BorderSide(
        //                   color: AppConstant.titleColor,
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ),
        //         Container(
        //           height: 45.h,
        //           width: 45.w,
        //           decoration: BoxDecoration(
        //             border: Border.all(
        //               color: Colors.grey,
        //             ),
        //             borderRadius: BorderRadius.circular(
        //               10.r,
        //             ),
        //           ),
        //           child: const Icon(
        //             Icons.notifications,
        //           ),
        //         ),
        //       ],
        //     ),
        //     SizedBox(
        //       height: 15.h,
        //     ),
        //     CarouselSlider.builder(
        //       itemCount: carouselItems.length,
        //       itemBuilder: (context, index, pageIndex) {
        //         return Container(
        //           height: 200.h,
        //           alignment: Alignment.center,
        //           color: Colors.red,
        //           child: carouselItems[index],
        //         );
        //       },
        //       options: CarouselOptions(
        //         autoPlay: false,
        //         enlargeCenterPage: true,
        //         viewportFraction: 0.9,
        //         aspectRatio: 2.0,
        //         initialPage: 1,
        //       ),
        //     ),
        //     SizedBox(
        //       height: 20.h,
        //     ),

        //   ],
        // ),
      ),
    );
  }
}
