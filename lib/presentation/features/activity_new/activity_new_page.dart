import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_activities/blocs/activities/activities_bloc.dart';
import 'package:my_activities/blocs/activity_new/activity_new_bloc.dart';
import 'package:my_activities/generated/l10n.dart';
import 'package:my_activities/presentation/actions/activity/activity_created_action.dart';

import 'activity_new_widget.dart';

class ActivityNewPage extends StatefulWidget {
  const ActivityNewPage({required this.activitiesBloc, required this.createdAction, Key? key}) : super(key: key);

  final ActivitiesBloc activitiesBloc;
  final ActivityCreatedAction createdAction;

  @override
  State<ActivityNewPage> createState() => _ActivityNewPageState();
}

class _ActivityNewPageState extends State<ActivityNewPage> {
  final _activityNewBloc = ActivityNewBloc(
    initialTitle: '',
    initialCompletionDateTimeEnabled: false,
    initialCompletionDateTime: null,
    initialDescription: null,
  );

  var isAdding = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ActivityNewBloc>(
      create: (context) => _activityNewBloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).new_activity),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: BlocBuilder<ActivityNewBloc, ActivityNewState>(
            bloc: _activityNewBloc,
            builder: (context, state) {
              return FloatingActionButton.extended(
                //TODO show progress when adding a new item
                label: Opacity(
                  opacity: state.readyToCreate && !isAdding ? 1 : 0.7,
                  child: Text(S.of(context).create),
                ),
                onPressed: state.readyToCreate && !isAdding
                    ? () async {
                        setState(() {
                          isAdding = true;
                        });
                        final activitiesStateRef = widget.activitiesBloc.state;
                        widget.activitiesBloc.add(
                          ActivitiesEvent.add(
                            state.newActivity,
                            onSuccess: (newlyCreatedActivity) {
                              if (mounted) {
                                widget.createdAction.call(newlyCreatedActivity);
                              }
                            },
                          ),
                        );
                        await widget.activitiesBloc.stream.firstWhere((newState) => newState != activitiesStateRef);
                        setState(() {
                          isAdding = false;
                        });
                      }
                    : null,
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: ActivityNewWidget(activityNewBloc: _activityNewBloc),
          ),
        ),
      ),
    );
  }
}
