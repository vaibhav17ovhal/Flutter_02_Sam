import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../Screen/Category/category01.dart';



class GetxControllers extends GetxController {

  RxString imagePath = ''.obs;

  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imagePath.value = image.path.toString();
    }
  }

  RxList<String> category = [
    "assets/images/001-modified.png",
    "assets/images/001-modified.png",
    "assets/images/001-modified.png",
    "assets/images/001-modified.png",
    "assets/images/001-modified.png",
    "assets/images/001-modified.png",
    "assets/images/001-modified.png",
    "assets/images/001-modified.png",
  ].obs;

  RxList<String> users = [
    "assets/images/photo1-modified.png",
    "assets/images/photo2-modified.png",
    "assets/images/photo3-modified.png",
    "assets/images/photo4-modified.png",
    "assets/images/photo5-modified.png",
  ].obs;

  RxList<String> img = [
    "assets/images/video.png",
    "assets/images/question.png",
    "assets/images/multimedia.png",
    "assets/images/rec.png",
  ].obs;

  RxList<String> imgname = [
    "Study Material",
    "Doubt Solving",
    "Lifetime \nRecording",
    "HD Recorded \nClasses",
  ].obs;

  RxList<String> courses = [
    "assets/images/pic.png",
    "assets/images/pic2.png",
    "assets/images/pic3.png",
    "assets/images/pic.png",
    "assets/images/pic2.png",
    "assets/images/pic3.png",
    "assets/images/pic.png",
    "assets/images/pic2.png",
    "assets/images/pic3.png",
    "assets/images/pic.png",
  ].obs;

  RxList direct = [
    CategoryList(),
    CategoryList(),
    CategoryList(),
    CategoryList(),
    CategoryList(),
    CategoryList(),
    CategoryList(),
    CategoryList(),
    //
    // Mini_Courses(),
    // Upto_50(),
    // Mini_Courses(),
    // Upto_50(),
    // Mini_Courses(),
    // Upto_50(),
    // Mini_Courses(),
  ].obs;

  RxList<String> tags = [
  "Makeup Artistry"
  "Nail Artistry"
  "Facial Massage"
  "Beauty Business"
  "Hair Removal"
  "Aromatherapy"
  "Soapmaking"
  ].obs;

  // RxList<String> carousel01 = [
  //   "assets/images/Search_03.jpg",
  //   "assets/images/Search_04.jpg",
  //   "assets/images/Search_05.jpg",
  //   "assets/images/Search_14.jpg",
  //   "assets/images/Search_16.jpg",
  // ].obs;

}