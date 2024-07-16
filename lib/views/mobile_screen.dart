import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../controllers/mobile_controller.dart';
import '../models/course_model.dart';
import '../models/mobile_model.dart';
import '../viewmodels/mobile_viewmodel.dart';

class MobileScreen extends StatelessWidget {
  // ignore: use_super_parameters
  const MobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));

    final MobileModel model = MobileModel(
      title: 'Quality Education By Any Means Necessary.',
      buttonText: 'Get Started',
      imageUrl: 'assets/images/girls_new.png',
      features: [
        'Group Reading', //background: rgba(221, 255, 255, 1);

        '10k Courses',  // background: rgba(221, 255, 255, 1);

        'Problem Solving', // background: rgba(221, 255, 255, 1);

        'Live chat', // background: rgba(221, 255, 255, 1);

        'Hand-on activities',  // background: rgba(221, 255, 255, 1);

      ],
      categories: ['Marketing', 'Technology', 'Photography'],
      popularCourses: [
        CourseModel(
          imageUrl: 'assets/images/learn_more1st.png',
          title: 'Learn Marketing From Top Instructors',
          instructor: 'John Doe',
          price: '30.00\$',
          rating: '4.5',
          enrolled: '8k Enrolled',
        ),
        CourseModel(
          imageUrl: 'assets/images/learn_more2nd.png',
          title: 'Learn Marketing From Top Instructors',
          instructor: 'Jane Smith',
          price: '25.00\$',
          rating: '4.8',
          enrolled: '5k Enrolled',
        ),
        CourseModel(
          imageUrl: 'assets/images/learn_more3rd.png',
          title: 'Learn Marketing From Top Instructors',
          instructor: 'Jane Smith',
          price: '25.00\$',
          rating: '4.8',
          enrolled: '5k Enrolled',
        ),
        CourseModel(
          imageUrl: 'assets/images/learn_more4th.png',
          title: 'Learn Marketing From Top Instructors',
          instructor: 'Jane Smith',
          price: '25.00\$',
          rating: '4.8',
          enrolled: '5k Enrolled',
        ),
        CourseModel(
          imageUrl: 'assets/images/learn_more5th.png',
          title: 'Learn Marketing From Top Instructors',
          instructor: 'Jane Smith',
          price: '25.00\$',
          rating: '4.8',
          enrolled: '5k Enrolled',
        ),
        CourseModel(
          imageUrl: 'assets/images/learn_more6th.png',
          title: 'Learn Marketing From Top Instructors',
          instructor: 'Jane Smith',
          price: '25.00\$',
          rating: '4.8',
          enrolled: '5k Enrolled',
        ),
        // Add more CourseModel instances with unique imageUrls as needed
      ],
      newSkills: [
        CourseModel(
          imageUrl: 'assets/images/learn_more1st.png',
          title: 'Learn Marketing From Top Instructors',
          instructor: 'Alice Brown',
          price: '40.00\$',
          rating: '4.7',
          enrolled: '3k Enrolled',
        ),
        CourseModel(
          imageUrl: 'assets/images/learn_more2nd.png',
          title: 'Learn Marketing From Top Instructors',
          instructor: 'Alice Brown',
          price: '40.00\$',
          rating: '4.7',
          enrolled: '3k Enrolled',
        ),
        CourseModel(
          imageUrl: 'assets/images/learn_more3rd.png',
          title: 'Learn Marketing From Top Instructors',
          instructor: 'Alice Brown',
          price: '40.00\$',
          rating: '4.7',
          enrolled: '3k Enrolled',
        ),
        CourseModel(
          imageUrl: 'assets/images/learn_more4th.png',
          title: 'Learn Marketing From Top Instructors',
          instructor: 'Alice Brown',
          price: '40.00\$',
          rating: '4.7',
          enrolled: '3k Enrolled',
        ),
        CourseModel(
          imageUrl: 'assets/images/learn_more5th.png',
          title: 'Learn Marketing From Top Instructors',
          instructor: 'Alice Brown',
          price: '40.00\$',
          rating: '4.7',
          enrolled: '3k Enrolled',
        ),
        CourseModel(
          imageUrl: 'assets/images/learn_more6th.png',
          title: 'Learn Marketing From Top Instructors',
          instructor: 'Alice Brown',
          price: '40.00\$',
          rating: '4.7',
          enrolled: '3k Enrolled',
        ),
        // Add more CourseModel instances with unique imageUrls as needed
      ],
    );

    final MobileViewModel viewModel = MobileViewModel(model);
    final MobileController controller = MobileController(viewModel);

    final mobileData = controller.getMobileData();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            color: Colors.black,
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          title: const Text('WiSchôöl'),
          actions: [
            IconButton(
              icon: Image.asset('assets/images/sign_in.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Stack(
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      children: const [
                        TextSpan(text: 'Quality '),
                        TextSpan(
                          text: 'Education',
                          style: TextStyle(color: Colors.green),
                        ),
                        TextSpan(text: '\nBy Any Means\nNecessary.'),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 100.w,
                      height: 50.h,
                      color: Colors.blue.withOpacity(0.3),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 15.h),
                ),
                child: const Text('Get Started'),
              ),
              SizedBox(height: 20.h),
              Center(
                child: Image.asset(
                  mobileData.imageUrl,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20.h),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: mobileData.features.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                  childAspectRatio: 3,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: const BorderRadius.horizontal(),
                    ),
                    child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Image.asset(
                            _getFeatureIconPath(index),
                            height:24.h ,
                            width: 24.h, //shsjhsj
                          ),
                        ),
                       SizedBox(width: 10.w),
                       Text(mobileData.features[index],
                        style: TextStyle(fontSize: 15.sp,
                         color: Colors.black),
                       ),
            ],
          ),
          );
       },
    ), 
              SizedBox(height: 20.h),
              const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Choose favourite course from top categories',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CategoryCard(label: 'Marketing'),
                        CategoryCard(label: 'Technology'),
                        CategoryCard(label: 'Photography'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h), // Increased space before "Most Popular Courses"
              Text(
                'Most Popular Courses',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.h),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: mobileData.popularCourses.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  final course = mobileData.popularCourses[index];
                  return CourseCard(course: course);
                },
              ),
              SizedBox(height: 20.h),
              Text(
                'Learn New Skills Within 2 Hours',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
               SizedBox(height: 30.h,),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: mobileData.newSkills.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  final course = mobileData.newSkills[index];
                  return CourseCard(course: course);
                },
              ),
              SizedBox(height: 20.h),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.w),
                      child: Text(
                        'We Bring The Good Education To Life',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.r),
                      child: Center(
                        child: Image.asset(
                          'assets/images/new_footer.png',
                          fit: BoxFit.cover,
                          height: 300.h,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  'Let Your Education Do The Walking',
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16.h),
                          _buildFeatureItem('assets/images/new_e_book.png', 'Free E-books, Videos and Kits'),
                          _buildFeatureItem('assets/images/new_learn_icons.png', 'Learn at your own pace'),
                          _buildFeatureItem('assets/images/new_collborate.png', 'Collaborate with different learners around the globe'),
                          _buildFeatureItem('assets/images/new_instructorses.png', 'Top instructors around the globe'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                color: Colors.black,
                padding: EdgeInsets.all(16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Subscribe to get latest updates',
                      style: TextStyle(color: Colors.white, fontSize: 18.sp),
                    ),
                    SizedBox(height: 10.h),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Enter your email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 15.h),
                      ),
                      child: const Text('Subscribe'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                color: Colors.black,
                padding: EdgeInsets.all(16.w),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Home', style: TextStyle(color: Colors.white)),
                    Text('Contact Us', style: TextStyle(color: Colors.white)),
                    Text('Terms', style: TextStyle(color: Colors.white)),
                    Text('Privacy', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureItem(String imagePath, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          Image.asset(imagePath, height: 30.h, width: 30.h), // Icon display
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14.sp),
            ),
          ),
        ],
      ),
    );
  }
}

String _getFeatureIconPath(int index) {
    switch (index) {
      case 0:
        return 'assets/images/group_reading.png';
      case 1:
        return 'assets/images/10k_courses.png';
      case 2:
        return 'assets/images/problem_solving.png';
      case 3:
        return 'assets/images/live_chat.png';
      case 4:
        return 'assets/images/hand-on-activities.png';
      default:
        return 'assets/images/group_reading.png';
    }
  }

class CourseCard extends StatelessWidget {
  final CourseModel course;

  const CourseCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(10.r),
            ),
            child: Image.asset(
              course.imageUrl,
              height: 150.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  course.title,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Instructor: ${course.instructor}',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'Price: ${course.price}',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.green,
                  ),
                ),
                Text(
                  'Rating: ${course.rating}',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.amber,
                  ),
                ),
                Text(
                  // ignore: unnecessary_string_interpolations
                  '${course.enrolled}',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String label;

  const CategoryCard({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.sp,
        ),
      ),
    );
  }
}
 
  //addd new code  ..


// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../controllers/mobile_controller.dart';
// import '../models/course_model.dart';
// import '../models/mobile_model.dart';
// import '../viewmodels/mobile_viewmodel.dart';

// class MobileScreen extends StatelessWidget {
//   const MobileScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     ScreenUtil.init(context, designSize: const Size(375, 812));

//     final MobileModel model = MobileModel(
//       title: 'Quality Education By Any Means Necessary.',
//       buttonText: 'Get Started',
//       imageUrl: 'assets/images/girls_new.png',
//       features: [
//         'Group Reading',
//         '10k Courses',
//         'Problem Solving',
//         'Live chat',
//         'Hand-on activities',
//       ],
//       categories: ['Marketing', 'Technology', 'Photography'],
//       popularCourses: [
//         CourseModel(
//           imageUrl: 'assets/images/learn_more1st.png',
//           title: 'Learn Marketing From Top Instructors',
//           instructor: 'John Doe',
//           price: '30.00\$',
//           rating: '4.5',
//           enrolled: '8k Enrolled',
//         ),
//         CourseModel(
//           imageUrl: 'assets/images/learn_more2nd.png',
//           title: 'Learn Marketing From Top Instructors',
//           instructor: 'Jane Smith',
//           price: '25.00\$',
//           rating: '4.8',
//           enrolled: '5k Enrolled',
//         ),
//         CourseModel(
//           imageUrl: 'assets/images/learn_more3rd.png',
//           title: 'Learn Marketing From Top Instructors',
//           instructor: 'Jane Smith',
//           price: '25.00\$',
//           rating: '4.8',
//           enrolled: '5k Enrolled',
//         ),
//         CourseModel(
//           imageUrl: 'assets/images/learn_more4th.png',
//           title: 'Learn Marketing From Top Instructors',
//           instructor: 'Jane Smith',
//           price: '25.00\$',
//           rating: '4.8',
//           enrolled: '5k Enrolled',
//         ),
//         CourseModel(
//           imageUrl: 'assets/images/learn_more5th.png',
//           title: 'Learn Marketing From Top Instructors',
//           instructor: 'Jane Smith',
//           price: '25.00\$',
//           rating: '4.8',
//           enrolled: '5k Enrolled',
//         ),
//         CourseModel(
//           imageUrl: 'assets/images/learn_more6th.png',
//           title: 'Learn Marketing From Top Instructors',
//           instructor: 'Jane Smith',
//           price: '25.00\$',
//           rating: '4.8',
//           enrolled: '5k Enrolled',
//         ),
//       ],
//       newSkills: [
//         CourseModel(
//           imageUrl: 'assets/images/learn_more1st.png',
//           title: 'Learn Marketing From Top Instructors',
//           instructor: 'Alice Brown',
//           price: '40.00\$',
//           rating: '4.7',
//           enrolled: '3k Enrolled',
//         ),
//         CourseModel(
//           imageUrl: 'assets/images/learn_more2nd.png',
//           title: 'Learn Marketing From Top Instructors',
//           instructor: 'Alice Brown',
//           price: '40.00\$',
//           rating: '4.7',
//           enrolled: '3k Enrolled',
//         ),
//         CourseModel(
//           imageUrl: 'assets/images/learn_more3rd.png',
//           title: 'Learn Marketing From Top Instructors',
//           instructor: 'Alice Brown',
//           price: '40.00\$',
//           rating: '4.7',
//           enrolled: '3k Enrolled',
//         ),
//         CourseModel(
//           imageUrl: 'assets/images/learn_more4th.png',
//           title: 'Learn Marketing From Top Instructors',
//           instructor: 'Alice Brown',
//           price: '40.00\$',
//           rating: '4.7',
//           enrolled: '3k Enrolled',
//         ),
//         CourseModel(
//           imageUrl: 'assets/images/learn_more5th.png',
//           title: 'Learn Marketing From Top Instructors',
//           instructor: 'Alice Brown',
//           price: '40.00\$',
//           rating: '4.7',
//           enrolled: '3k Enrolled',
//         ),
//         CourseModel(
//           imageUrl: 'assets/images/learn_more6th.png',
//           title: 'Learn Marketing From Top Instructors',
//           instructor: 'Alice Brown',
//           price: '40.00\$',
//           rating: '4.7',
//           enrolled: '3k Enrolled',
//         ),
//       ],
//     );

//     final MobileViewModel viewModel = MobileViewModel(model);
//     final MobileController controller = MobileController(viewModel);

//     final mobileData = controller.getMobileData();

//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           leading: IconButton(
//             color: Colors.black,
//             icon: const Icon(Icons.menu),
//             onPressed: () {},
//           ),
//           title: const Text('WiSchôöl'),
//           actions: [
//             IconButton(
//               icon: Image.asset('assets/images/sign_in.png'),
//               onPressed: () {},
//             ),
//           ],
//         ),
//         body: SingleChildScrollView(
//           padding: EdgeInsets.all(16.w),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 20.h),
//               Stack(
//                 children: [
//                   RichText(
//                     text: TextSpan(
//                       style: TextStyle(
//                         fontSize: 32.sp,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                       children: const [
//                         TextSpan(text: 'Quality '),
//                         TextSpan(
//                           text: 'Education',
//                           style: TextStyle(color: Colors.green),
//                         ),
//                         TextSpan(text: '\nBy Any Means\nNecessary.'),
//                       ],
//                     ),
//                   ),
//                   Positioned(
//                     right: 0,
//                     bottom: 0,
//                     child: Container(
//                       width: 100.w,
//                       height: 50.h,
//                       color: Colors.blue.withOpacity(0.3),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20.h),
//               ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.green,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8.r),
//                   ),
//                   padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 15.h),
//                 ),
//                 child: const Text('Get Started'),
//               ),
//               SizedBox(height: 20.h),
//               Center(
//                 child: Image.asset(
//                   mobileData.imageUrl,
//                   height: 200,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               SizedBox(height: 20.h),
//               GridView.builder(
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 itemCount: mobileData.features.length,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 10.w,
//                   mainAxisSpacing: 10.h,
//                   childAspectRatio: 3,
//                 ),
//                 itemBuilder: (context, index) {
//                   return Container(
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                       color: Colors.green.shade100,
//                       borderRadius: const BorderRadius.horizontal(),
//                     ),
//                     child: Row(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Center(
//                           child: Image.asset(
//                             _getFeatureIconPath(index),
//                             height:24.h ,
//                             width: 24.h,
//                           ),
//                         ),
//                        SizedBox(width: 10.w),
//                        Text(mobileData.features[index],
//                         style: TextStyle(fontSize: 15.sp,
//                          color: Colors.black),
//                        ),
//             ],
//           ),
//           );
//        },
//     ), 
//               SizedBox(height: 20.h),
//               const Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     SizedBox(height: 20),
//                     Text(
//                       'Choose favourite course from top categories',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         CategoryCard(label: 'Marketing'),
//                         CategoryCard(label: 'Technology'),
//                         CategoryCard(label: 'Photography'),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
              // SizedBox(height: 40.h), // Increased space before "Most Popular Courses"
              // Text(
              //   'Most Popular Courses',
              //   style: TextStyle(
              //     fontSize: 18.sp,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // SizedBox(height: 20.h), // Added space after the title
//               GridView.builder(
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 itemCount: mobileData.popularCourses.length,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 10.w,
//                   mainAxisSpacing: 10.h,
//                   childAspectRatio: 0.75,
//                 ),
//                 itemBuilder: (context, index) {
//                   final course = mobileData.popularCourses[index];
//                   return CourseCard(course: course);
//                 },
//               ),
//               SizedBox(height: 40.h), // Increased space before "Learn New Skills"
//               Text(
//                 'Learn New Skills Within 2 Hours',
//                 style: TextStyle(
//                   fontSize: 18.sp,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 20.h), // Added space after the title
//               GridView.builder(
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 itemCount: mobileData.newSkills.length,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 10.w,
//                   mainAxisSpacing: 10.h,
//                   childAspectRatio: 0.75,
//                 ),
//                 itemBuilder: (context, index) {
//                   final skill = mobileData.newSkills[index];
//                   return CourseCard(course: skill);
//                 },
//               ),
//               SizedBox(height: 20.h),
//               Container(
//                 padding: EdgeInsets.all(16.w),
//                 color: Colors.green,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'We Bring The Good Education To Life',
//                       style: TextStyle(
//                         fontSize: 18.sp,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                     SizedBox(height: 10.h),
//                     Text(
//                       'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.',
//                       style: TextStyle(
//                         fontSize: 14.sp,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20.h),
//               Container(
//                 padding: EdgeInsets.all(16.w),
//                 color: Colors.grey.shade200,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Subscribe to get latest updates',
//                       style: TextStyle(
//                         fontSize: 18.sp,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 10.h),
//                     Text(
//                       'Stay updated with our latest news, courses, and promotions.',
//                       style: TextStyle(
//                         fontSize: 14.sp,
//                       ),
//                     ),
//                     SizedBox(height: 10.h),
//                     TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Enter your email',
//                         filled: true,
//                         fillColor: Colors.white,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(8.r),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 10.h),
//                     ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.green,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8.r),
//                         ),
//                         padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 15.h),
//                       ),
//                       child: const Text('Subscribe'),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   String _getFeatureIconPath(int index) {
//     switch (index) {
//       case 0:
//         return 'assets/images/group_reading.png';
//       case 1:
//         return 'assets/images/courses.png';
//       case 2:
//         return 'assets/images/problem_solving.png';
//       case 3:
//         return 'assets/images/live_chat.png';
//       case 4:
//         return 'assets/images/hands_on.png';
//       default:
//         return 'assets/images/default_icon.png';
//     }
//   }
// }

// class CategoryCard extends StatelessWidget {
//   final String label;

//   const CategoryCard({Key? key, required this.label}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(8.w),
//       decoration: BoxDecoration(
//         color: Colors.green,
//         borderRadius: BorderRadius.circular(8.r),
//       ),
//       child: Text(
//         label,
//         style: TextStyle(
//           fontSize: 14.sp,
//           fontWeight: FontWeight.bold,
//           color: Colors.white,
//         ),
//         textAlign: TextAlign.center,
//       ),
//     );
//   }
// }

// class CourseCard extends StatelessWidget {
//   final CourseModel course;

//   const CourseCard({Key? key, required this.course}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Image.asset(
//             course.imageUrl,
//             fit: BoxFit.cover,
//           ),
//           Padding(
//             padding: EdgeInsets.all(8.w),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   course.title,
//                   style: TextStyle(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 5.h),
//                 Text(
//                   'by ${course.instructor}',
//                   style: TextStyle(
//                     fontSize: 12.sp,
//                     color: Colors.grey.shade600,
//                   ),
//                 ),
//                 SizedBox(height: 5.h),
//                 Text(
//                   course.price,
//                   style: TextStyle(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.green,
//                   ),
//                 ),
//                 SizedBox(height: 5.h),
//                 Row(
//                   children: [
//                     Icon(Icons.star, color: Colors.orange, size: 14.sp),
//                     SizedBox(width: 5.w),
//                     Text(
//                       course.rating,
//                       style: TextStyle(
//                         fontSize: 12.sp,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(width: 10.w),
//                     Text(
//                       course.enrolled,
//                       style: TextStyle(
//                         fontSize: 12.sp,
//                         color: Colors.grey.shade600,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
