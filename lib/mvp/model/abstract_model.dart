import 'package:flutter_mvp/mvp/model/i_model.dart';

/// @desc  基础 Model 生成 Tag
/// @time 2019-04-22 12:06 am
/// @author cheny
abstract class AbstractModel implements IModel {
  String _tag;

  String get tag => _tag;

  AbstractModel() {
    _tag = '${DateTime.now().millisecondsSinceEpoch}';
  }
}
