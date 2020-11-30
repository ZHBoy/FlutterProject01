/**
 * 数据bean，最简单的数据类
 */
class OnlyDataBean {
  int _state;
  String _message;
  String _data;

  OnlyDataBean({int state, String message, String data}) {
    this._state = state;
    this._message = message;
    this._data = data;
  }

  int get state => _state;
  set state(int state) => _state = state;
  String get message => _message;
  set message(String message) => _message = message;
  String get data => _data;
  set data(String data) => _data = data;

  OnlyDataBean.fromJson(Map<String, dynamic> json) {
    _state = json['state'];
    _message = json['message'];
    _data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['state'] = this._state;
    data['message'] = this._message;
    data['data'] = this._data;
    return data;
  }
}
