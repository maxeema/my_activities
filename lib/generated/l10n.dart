// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `My activities`
  String get my_activities {
    return Intl.message(
      'My activities',
      name: 'my_activities',
      desc: '',
      args: [],
    );
  }

  /// `New activity`
  String get new_activity {
    return Intl.message(
      'New activity',
      name: 'new_activity',
      desc: '',
      args: [],
    );
  }

  /// `Load activities`
  String get load_activities {
    return Intl.message(
      'Load activities',
      name: 'load_activities',
      desc: '',
      args: [],
    );
  }

  /// `You have no activities yet.`
  String get no_activities_message {
    return Intl.message(
      'You have no activities yet.',
      name: 'no_activities_message',
      desc: '',
      args: [],
    );
  }

  /// `Let's start with a new one!`
  String get lets_start_with_new_one {
    return Intl.message(
      'Let\'s start with a new one!',
      name: 'lets_start_with_new_one',
      desc: '',
      args: [],
    );
  }

  /// `Activity information`
  String get activity_information {
    return Intl.message(
      'Activity information',
      name: 'activity_information',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get activity_title {
    return Intl.message(
      'Title',
      name: 'activity_title',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get activity_time {
    return Intl.message(
      'Time',
      name: 'activity_time',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get activity_date {
    return Intl.message(
      'Date',
      name: 'activity_date',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get activity_description {
    return Intl.message(
      'Description',
      name: 'activity_description',
      desc: '',
      args: [],
    );
  }

  /// `optional`
  String get optional_mark {
    return Intl.message(
      'optional',
      name: 'optional_mark',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get create {
    return Intl.message(
      'Create',
      name: 'create',
      desc: '',
      args: [],
    );
  }

  /// `Created`
  String get created {
    return Intl.message(
      'Created',
      name: 'created',
      desc: '',
      args: [],
    );
  }

  /// `Complete`
  String get complete {
    return Intl.message(
      'Complete',
      name: 'complete',
      desc: '',
      args: [],
    );
  }

  /// `Completion time`
  String get completion_time {
    return Intl.message(
      'Completion time',
      name: 'completion_time',
      desc: '',
      args: [],
    );
  }

  /// `Auto completes`
  String get auto_completes {
    return Intl.message(
      'Auto completes',
      name: 'auto_completes',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get completed {
    return Intl.message(
      'Completed',
      name: 'completed',
      desc: '',
      args: [],
    );
  }

  /// `Completed activity`
  String get completed_activity {
    return Intl.message(
      'Completed activity',
      name: 'completed_activity',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
