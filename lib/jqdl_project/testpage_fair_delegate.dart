import 'dart:async';
import 'dart:convert';

import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

class TestPageFairDelegate extends FairDelegate {
  late ScrollController _controller;

  @override
  void initState() {
    super.initState();
    onLoad();
  }

  void onLoad() {
    _controller = ScrollController();
  }

  @override
  Map<String, PropertyValue> bindValue() {
    return {
      ...super.bindValue(),
      // key 跟页面上面的名字一致
      '_controller': () => _controller,
    };
  }

  @override
  Map<String, Function> bindFunction() {
    return super.bindFunction();
  }
}

// class FairCommonPlugin extends IFairPlugin  with HttpPlugin ,ToastPlugin{
//   factory FairCommonPlugin() => _fairCommonPlugin;
//   FairCommonPlugin._();
//   static final FairCommonPlugin _fairCommonPlugin = FairCommonPlugin._();
//
//   @override
//   Map<String, Function> getRegisterMethods() {
//     return {
//       'http': http,
//       'showToast':showToast,
//     };
//   }
// }


