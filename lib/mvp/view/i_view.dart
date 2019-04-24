/// @desc  基础 View
/// @time 2019-04-22 10:29 am
/// @author chenyun
abstract class IView {
  ///开始加载
  void startLoading();

  ///加载成功
  void showLoadSuccess();

  ///加载失败
  void showLoadFailure(int code, String message);

  ///无数据
  void showEmptyData();

  ///带参数的对话框
  void startSubmit(String message);

  ///隐藏对话框
  void showSubmitSuccess();

  ///显示提交失败
  void showSubmitFailure(int code, String message);
}
