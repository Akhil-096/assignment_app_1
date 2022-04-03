import 'package:flutter/material.dart';

class NewsModel with ChangeNotifier {
  Name? _name;
  Images? _images;
  String? _gender;
  String? _species;
  String? _homePlanet;
  String? _occupation;
  List<String>? _sayings;
  int? _id;
  String? _age;

  NewsModel(
      {Name? name,
      Images? images,
      String? gender,
      String? species,
      String? homePlanet,
      String? occupation,
      List<String>? sayings,
      int? id,
      String? age}) {
    if (name != null) {
      this._name = name;
    }
    if (images != null) {
      this._images = images;
    }
    if (gender != null) {
      this._gender = gender;
    }
    if (species != null) {
      this._species = species;
    }
    if (homePlanet != null) {
      this._homePlanet = homePlanet;
    }
    if (occupation != null) {
      this._occupation = occupation;
    }
    if (sayings != null) {
      this._sayings = sayings;
    }
    if (id != null) {
      this._id = id;
    }
    if (age != null) {
      this._age = age;
    }
  }

  Name? get name => _name;

  set name(Name? name) => _name = name;

  Images? get images => _images;

  set images(Images? images) => _images = images;

  String? get gender => _gender;

  set gender(String? gender) => _gender = gender;

  String? get species => _species;

  set species(String? species) => _species = species;

  String? get homePlanet => _homePlanet;

  set homePlanet(String? homePlanet) => _homePlanet = homePlanet;

  String? get occupation => _occupation;

  set occupation(String? occupation) => _occupation = occupation;

  List<String>? get sayings => _sayings;

  set sayings(List<String>? sayings) => _sayings = sayings;

  int? get id => _id;

  set id(int? id) => _id = id;

  String? get age => _age;

  set age(String? age) => _age = age;

  NewsModel.fromJson(Map<String, dynamic> json) {
    _name = json['name'] != null ? new Name.fromJson(json['name']) : null;
    _images =
        json['images'] != null ? new Images.fromJson(json['images']) : null;
    _gender = json['gender'];
    _species = json['species'];
    _homePlanet = json['homePlanet'];
    _occupation = json['occupation'];
    _sayings = json['sayings'].cast<String>();
    _id = json['id'];
    _age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._name != null) {
      data['name'] = this._name!.toJson();
    }
    if (this._images != null) {
      data['images'] = this._images!.toJson();
    }
    data['gender'] = this._gender;
    data['species'] = this._species;
    data['homePlanet'] = this._homePlanet;
    data['occupation'] = this._occupation;
    data['sayings'] = this._sayings;
    data['id'] = this._id;
    data['age'] = this._age;
    return data;
  }
}

class Name {
  String? _first;
  String? _middle;
  String? _last;

  Name({String? first, String? middle, String? last}) {
    if (first != null) {
      this._first = first;
    }
    if (middle != null) {
      this._middle = middle;
    }
    if (last != null) {
      this._last = last;
    }
  }

  String? get first => _first;

  set first(String? first) => _first = first;

  String? get middle => _middle;

  set middle(String? middle) => _middle = middle;

  String? get last => _last;

  set last(String? last) => _last = last;

  Name.fromJson(Map<String, dynamic> json) {
    _first = json['first'];
    _middle = json['middle'];
    _last = json['last'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first'] = this._first;
    data['middle'] = this._middle;
    data['last'] = this._last;
    return data;
  }
}

class Images {
  String? _headShot;
  String? _main;

  Images({String? headShot, String? main}) {
    if (headShot != null) {
      this._headShot = headShot;
    }
    if (main != null) {
      this._main = main;
    }
  }

  String? get headShot => _headShot;

  set headShot(String? headShot) => _headShot = headShot;

  String? get main => _main;

  set main(String? main) => _main = main;

  Images.fromJson(Map<String, dynamic> json) {
    _headShot = json['head-shot'];
    _main = json['main'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['head-shot'] = this._headShot;
    data['main'] = this._main;
    return data;
  }
}
