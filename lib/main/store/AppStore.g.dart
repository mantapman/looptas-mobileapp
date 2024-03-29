// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AppStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppStore on AppStoreBase, Store {
  final _$isDarkModeOnAtom = Atom(name: 'AppStoreBase.isDarkModeOn');

  @override
  bool get isDarkModeOn {
    _$isDarkModeOnAtom.reportRead();
    return super.isDarkModeOn;
  }

  @override
  set isDarkModeOn(bool value) {
    _$isDarkModeOnAtom.reportWrite(value, super.isDarkModeOn, () {
      super.isDarkModeOn = value;
    });
  }

  final _$isLoggedInAtom = Atom(name: 'AppStoreBase.isLoggedIn');

  @override
  bool get isLoggedIn {
    _$isLoggedInAtom.reportRead();
    return super.isLoggedIn;
  }

  @override
  set isLoggedIn(bool value) {
    _$isLoggedInAtom.reportWrite(value, super.isLoggedIn, () {
      super.isLoggedIn = value;
    });
  }

  final _$cardColorAtom = Atom(name: 'AppStoreBase.cardColor');

  @override
  Color get cardColor {
    _$cardColorAtom.reportRead();
    return super.cardColor;
  }

  @override
  set cardColor(Color value) {
    _$cardColorAtom.reportWrite(value, super.cardColor, () {
      super.cardColor = value;
    });
  }

  final _$favDeviceListAtom = Atom(name: 'AppStoreBase.favDeviceList');

  @override
  List<HSDeviceModel> get favDeviceList {
    _$favDeviceListAtom.reportRead();
    return super.favDeviceList;
  }

  @override
  set favDeviceList(List<HSDeviceModel> value) {
    _$favDeviceListAtom.reportWrite(value, super.favDeviceList, () {
      super.favDeviceList = value;
    });
  }

  final _$hsUserProfileListAtom = Atom(name: 'AppStoreBase.hsUserProfileList');

  @override
  List<HSUserProfileModel> get hsUserProfileList {
    _$hsUserProfileListAtom.reportRead();
    return super.hsUserProfileList;
  }

  @override
  set hsUserProfileList(List<HSUserProfileModel> value) {
    _$hsUserProfileListAtom.reportWrite(value, super.hsUserProfileList, () {
      super.hsUserProfileList = value;
    });
  }

  final _$toggleDarkModeAsyncAction = AsyncAction('AppStoreBase.toggleDarkMode');

  @override
  Future<void> toggleDarkMode({bool value}) {
    return _$toggleDarkModeAsyncAction.run(() => super.toggleDarkMode(value: value));
  }

  final _$AppStoreBaseActionController = ActionController(name: 'AppStoreBase');

  @override
  void addToMyItems(HSDeviceModel data) {
    final _$actionInfo = _$AppStoreBaseActionController.startAction(name: 'AppStoreBase.addToMyItems');
    try {
      return super.addToMyItems(data);
    } finally {
      _$AppStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeToMyItems(HSDeviceModel data) {
    final _$actionInfo = _$AppStoreBaseActionController.startAction(name: 'AppStoreBase.removeToMyItems');
    try {
      return super.removeToMyItems(data);
    } finally {
      _$AppStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void hsAddProfileItems(HSUserProfileModel data) {
    final _$actionInfo = _$AppStoreBaseActionController.startAction(name: 'AppStoreBase.hsAddProfileItems');
    try {
      return super.hsAddProfileItems(data);
    } finally {
      _$AppStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoggedIn(bool val) {
    final _$actionInfo = _$AppStoreBaseActionController.startAction(name: 'AppStoreBase.setLoggedIn');
    try {
      return super.setLoggedIn(val);
    } finally {
      _$AppStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isDarkModeOn: ${isDarkModeOn},
isLoggedIn: ${isLoggedIn},
cardColor: ${cardColor},
favDeviceList: ${favDeviceList},
hsUserProfileList: ${hsUserProfileList}
    ''';
  }
}
