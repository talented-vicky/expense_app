// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class Categories extends $Categories
    with RealmEntity, RealmObjectBase, RealmObject {
  Categories(
    String name,
    int colorval,
  ) {
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'colorval', colorval);
  }

  Categories._();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => throw RealmUnsupportedSetError();

  @override
  int get colorval => RealmObjectBase.get<int>(this, 'colorval') as int;
  @override
  set colorval(int value) => throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Categories>> get changes =>
      RealmObjectBase.getChanges<Categories>(this);

  @override
  Categories freeze() => RealmObjectBase.freezeObject<Categories>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Categories._);
    return const SchemaObject(
        ObjectType.realmObject, Categories, 'Categories', [
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('colorval', RealmPropertyType.int),
    ]);
  }
}
