// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:objectbox/flatbuffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'data/activity_object_box_entity.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 6878718602101791602),
      name: 'ActivityObjectBoxEntity',
      lastPropertyId: const IdUid(7, 2679144461452106459),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 3786230470237526345),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 6409198109098594520),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 2575369417122387744),
            name: 'description',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 8391230983215464110),
            name: 'completionDate',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 8166047625811548665),
            name: 'completed',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 2679144461452106459),
            name: 'creationDate',
            type: 10,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(1, 6878718602101791602),
      lastIndexId: const IdUid(0, 0),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [991634815574657091],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    ActivityObjectBoxEntity: EntityDefinition<ActivityObjectBoxEntity>(
        model: _entities[0],
        toOneRelations: (ActivityObjectBoxEntity object) => [],
        toManyRelations: (ActivityObjectBoxEntity object) => {},
        getId: (ActivityObjectBoxEntity object) => object.id,
        setId: (ActivityObjectBoxEntity object, int id) {
          object.id = id;
        },
        objectToFB: (ActivityObjectBoxEntity object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          final descriptionOffset = object.description == null
              ? null
              : fbb.writeString(object.description!);
          fbb.startTable(8);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.addOffset(2, descriptionOffset);
          fbb.addInt64(4, object.completionDate?.millisecondsSinceEpoch);
          fbb.addBool(5, object.completed);
          fbb.addInt64(6, object.creationDate.millisecondsSinceEpoch);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final completionDateValue =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 12);
          final object = ActivityObjectBoxEntity(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              name:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 6, ''),
              completed: const fb.BoolReader()
                  .vTableGet(buffer, rootOffset, 14, false),
              creationDate: DateTime.fromMillisecondsSinceEpoch(
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 16, 0)),
              description: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8),
              completionDate: completionDateValue == null
                  ? null
                  : DateTime.fromMillisecondsSinceEpoch(
                      completionDateValue));

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [ActivityObjectBoxEntity] entity fields to define ObjectBox queries.
class ActivityObjectBoxEntity_ {
  /// see [ActivityObjectBoxEntity.id]
  static final id = QueryIntegerProperty<ActivityObjectBoxEntity>(
      _entities[0].properties[0]);

  /// see [ActivityObjectBoxEntity.name]
  static final name = QueryStringProperty<ActivityObjectBoxEntity>(
      _entities[0].properties[1]);

  /// see [ActivityObjectBoxEntity.description]
  static final description = QueryStringProperty<ActivityObjectBoxEntity>(
      _entities[0].properties[2]);

  /// see [ActivityObjectBoxEntity.completionDate]
  static final completionDate =
      QueryIntegerProperty<ActivityObjectBoxEntity>(
          _entities[0].properties[3]);

  /// see [ActivityObjectBoxEntity.completed]
  static final completed = QueryBooleanProperty<ActivityObjectBoxEntity>(
      _entities[0].properties[4]);

  /// see [ActivityObjectBoxEntity.creationDate]
  static final creationDate =
      QueryIntegerProperty<ActivityObjectBoxEntity>(
          _entities[0].properties[5]);
}
