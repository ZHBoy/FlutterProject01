/*
 * 热卖商品
 */
class HotSaleBean {
  int _state;
  String _message;
  List<Data> _data;

  HotSaleBean({int state, String message, List<Data> data}) {
    this._state = state;
    this._message = message;
    this._data = data;
  }

  int get state => _state;
  set state(int state) => _state = state;
  String get message => _message;
  set message(String message) => _message = message;
  List<Data> get data => _data;
  set data(List<Data> data) => _data = data;

  HotSaleBean.fromJson(Map<String, dynamic> json) {
    _state = json['state'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = new List<Data>();
      json['data'].forEach((v) {
        _data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['state'] = this._state;
    data['message'] = this._message;
    if (this._data != null) {
      data['data'] = this._data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int _id;
  String _title;
  String _contentDesc;
  String _landingPage;
  int _isDelete;
  int _goodStatus;
  String _createTime;
  String _updateTime;
  String _taskBaseId;

  Data(
      {int id,
      String title,
      String contentDesc,
      String landingPage,
      int isDelete,
      int goodStatus,
      String createTime,
      String updateTime,
      String taskBaseId}) {
    this._id = id;
    this._title = title;
    this._contentDesc = contentDesc;
    this._landingPage = landingPage;
    this._isDelete = isDelete;
    this._goodStatus = goodStatus;
    this._createTime = createTime;
    this._updateTime = updateTime;
    this._taskBaseId = taskBaseId;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get title => _title;
  set title(String title) => _title = title;
  String get contentDesc => _contentDesc;
  set contentDesc(String contentDesc) => _contentDesc = contentDesc;
  String get landingPage => _landingPage;
  set landingPage(String landingPage) => _landingPage = landingPage;
  int get isDelete => _isDelete;
  set isDelete(int isDelete) => _isDelete = isDelete;
  int get goodStatus => _goodStatus;
  set goodStatus(int goodStatus) => _goodStatus = goodStatus;
  String get createTime => _createTime;
  set createTime(String createTime) => _createTime = createTime;
  String get updateTime => _updateTime;
  set updateTime(String updateTime) => _updateTime = updateTime;
  String get taskBaseId => _taskBaseId;
  set taskBaseId(String taskBaseId) => _taskBaseId = taskBaseId;

  Data.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _title = json['title'];
    _contentDesc = json['contentDesc'];
    _landingPage = json['landingPage'];
    _isDelete = json['isDelete'];
    _goodStatus = json['goodStatus'];
    _createTime = json['createTime'];
    _updateTime = json['updateTime'];
    _taskBaseId = json['taskBaseId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['title'] = this._title;
    data['contentDesc'] = this._contentDesc;
    data['landingPage'] = this._landingPage;
    data['isDelete'] = this._isDelete;
    data['goodStatus'] = this._goodStatus;
    data['createTime'] = this._createTime;
    data['updateTime'] = this._updateTime;
    data['taskBaseId'] = this._taskBaseId;
    return data;
  }
}
