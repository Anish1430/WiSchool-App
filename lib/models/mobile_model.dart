import 'course_model.dart';

class MobileModel {
  final String title;
  final String buttonText;
  final String imageUrl;
  final List<String> features;
  final List<String> categories;
  final List<CourseModel> popularCourses;
  final List<CourseModel> newSkills;

  MobileModel({
    required this.title,
    required this.buttonText,
    required this.imageUrl,
    required this.features,
    required this.categories,
    required this.popularCourses,
    required this.newSkills,
  });
}
