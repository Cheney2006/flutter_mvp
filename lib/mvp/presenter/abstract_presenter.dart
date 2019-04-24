import 'package:flutter_mvp/mvp/model/i_model.dart';
import 'package:flutter_mvp/mvp/presenter/i_present.dart';
import 'package:flutter_mvp/mvp/view/i_view.dart';

/// @desc  基础 Presenter,关联 View\Model
/// @time 2019-04-22 10:51 am
/// @author cheny
abstract class AbstractPresenter<V extends IView, M extends IModel>
    implements IPresenter {
  M _model;
  V _view;

  @override
  void attachView(IView view) {
    this._model = createModel();
    this._view = view;
  }

  @override
  void detachView() {
    if (_view != null) {
      _view = null;
    }
    if (_model != null) {
      _model.dispose();
      _model = null;
    }
  }

  V get view => _view;

  M get model => _model;

  IModel createModel();
}
