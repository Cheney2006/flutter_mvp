import 'package:flutter_mvp/mvp/view/i_view.dart';

/// @desc  基础 Presenter
/// @time 2019-04-22 10:30 am
/// @author cheny
abstract class IPresenter<V extends IView> {
  ///Set or attach the view to this mPresenter
  void attachView(V view);

  ///Will be called if the view has been destroyed . Typically this method will be invoked from
  void detachView();
}
