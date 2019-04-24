import 'package:flutter/material.dart';
import 'package:flutter_mvp/mvp/presenter/i_present.dart';
import 'package:flutter_mvp/mvp/view/i_view.dart';

/// @desc  基础 widget,关联 Presenter，且与生命周期关联
/// @time 2019-04-22 11:08 am
/// @author chenyun
///
abstract class AbstractView extends StatefulWidget {}

abstract class AbstractViewState<T extends IPresenter, V extends AbstractView>
    extends State<V> implements IView {
  T presenter;

  @override
  void initState() {
    super.initState();
    presenter = createPresenter();
    if (presenter != null) {
      presenter.attachView(this);
    }
  }

  T createPresenter();

  T getPresenter() {
    return presenter;
  }

  @override
  void dispose() {
    super.dispose();
    if (presenter != null) {
      presenter.detachView();
      presenter = null;
    }
  }
}
