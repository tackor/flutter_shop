import 'package:flutter/material.dart';
import '../model/category_model.dart';

class ChildCategory with ChangeNotifier{
  List<BxMallSubDto> childCategoryList = [];
  int childIndex = 0; // 右侧子导航高亮索引
  String categoryId = "4";  // 大类id,默认4
  String subId = ""; // 子类id
  // 改变右侧分类数据
  getChildCategoryList(List<BxMallSubDto> list,String id){
    childIndex = 0;  // 每次点击都需要重置0
    categoryId = id; 
    BxMallSubDto all = BxMallSubDto();
    all.mallSubId = "00";
    all.mallCategoryId = "00";
    all.comments = "null";
    all.mallSubName = "全部";
    childCategoryList = [all];
    childCategoryList.addAll(list);
    notifyListeners();
  }
   // 点击右侧分类
   changeChildIndex(index,String id){
     childIndex = index;
     subId = id;
     notifyListeners();
   }



}