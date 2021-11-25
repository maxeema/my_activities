import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_activities/blocs/activities/activities_bloc.dart';
import 'package:my_activities/domain/activity.dart';
import 'package:my_activities/generated/l10n.dart';
import 'package:my_activities/presentation/actions/activity/activity_complete_action.dart';

import 'activity_view_widget.dart';

class ActivityViewPage extends StatelessWidget {
  const ActivityViewPage({required this.activitiesBloc, required this.activity, required this.completeAction, Key? key})
      : super(key: key);

  final ActivitiesBloc activitiesBloc;
  final Activity activity;
  final ActivityCompleteAction completeAction;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivitiesBloc, ActivitiesState>(
        bloc: activitiesBloc,
        builder: (context, state) {
          final updatedActivity = state.data.firstWhere((whereActivity) => whereActivity.id == activity.id);
          return Scaffold(
            appBar: AppBar(
              title: Text(S.of(context).activity_information),
            ),
            body: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: ActivityViewWidget(
                  activity: updatedActivity,
                ),
              ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            floatingActionButton: !updatedActivity.completed
                ? Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: FloatingActionButton.extended(
                      label: Text(S.of(context).complete),
                      onPressed: () {
                        completeAction.call(updatedActivity);
                      },
                    ),
                  )
                : null,
          );
        });
  }
}
