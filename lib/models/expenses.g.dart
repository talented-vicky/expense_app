// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expenses.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class Expenses extends $Expenses
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  Expenses(
    ObjectId id,
    double amount,
    DateTime date, {
    Categories? category,
    String? note,
    String? recurrence = Recurrence.none,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Expenses>({
        'recurrence': Recurrence.none,
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'amount', amount);
    RealmObjectBase.set(this, 'category', category);
    RealmObjectBase.set(this, 'date', date);
    RealmObjectBase.set(this, 'note', note);
    RealmObjectBase.set(this, 'recurrence', recurrence);
  }

  Expenses._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => throw RealmUnsupportedSetError();

  @override
  double get amount => RealmObjectBase.get<double>(this, 'amount') as double;
  @override
  set amount(double value) => throw RealmUnsupportedSetError();

  @override
  Categories? get category =>
      RealmObjectBase.get<Categories>(this, 'category') as Categories?;
  @override
  set category(covariant Categories? value) => throw RealmUnsupportedSetError();

  @override
  DateTime get date => RealmObjectBase.get<DateTime>(this, 'date') as DateTime;
  @override
  set date(DateTime value) => throw RealmUnsupportedSetError();

  @override
  String? get note => RealmObjectBase.get<String>(this, 'note') as String?;
  @override
  set note(String? value) => throw RealmUnsupportedSetError();

  @override
  String? get recurrence =>
      RealmObjectBase.get<String>(this, 'recurrence') as String?;
  // @override
  set recurrence(String? value) => throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Expenses>> get changes =>
      RealmObjectBase.getChanges<Expenses>(this);

  @override
  Expenses freeze() => RealmObjectBase.freezeObject<Expenses>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Expenses._);
    return const SchemaObject(ObjectType.realmObject, Expenses, 'Expenses', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('amount', RealmPropertyType.double),
      SchemaProperty('category', RealmPropertyType.object,
          optional: true, linkTarget: 'Categories'),
      SchemaProperty('date', RealmPropertyType.timestamp),
      SchemaProperty('note', RealmPropertyType.string, optional: true),
      SchemaProperty('recurrence', RealmPropertyType.string, optional: true),
    ]);
  }
}
