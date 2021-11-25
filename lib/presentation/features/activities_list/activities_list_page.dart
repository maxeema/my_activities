import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_activities/blocs/activities/activities_bloc.dart';
import 'package:my_activities/generated/l10n.dart';
import 'package:my_activities/presentation/actions/activity/activity_complete_action.dart';
import 'package:my_activities/presentation/actions/activity/activity_new_action.dart';
import 'package:my_activities/presentation/actions/activity/activity_view_action.dart';

import 'activities_list_widget.dart';

class ActivitiesListPage extends StatelessWidget {
  const ActivitiesListPage({
    required this.bloc,
    required this.newAction,
    required this.viewAction,
    required this.completeAction,
    Key? key,
  }) : super(key: key);

  final ActivitiesBloc bloc;
  final ActivityNewAction newAction;
  final ActivityViewAction viewAction;
  final ActivityCompleteAction completeAction;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).my_activities),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: newAction.call,
      ),
      body: BlocConsumer<ActivitiesBloc, ActivitiesState>(
        listener: (context, state) {
          //TODO check also if the page is current
          if (state.data.isNotEmpty && state.hasError && !state.error!.isConsumed) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              behavior: SnackBarBehavior.floating,
              content: Text(
                //TODO localize errors properly
                state.error!.consume().toString(),
                textAlign: TextAlign.center,
              ),
            ));
          }
        },
        builder: (context, state) {
          if (!state.hasFirstLoad) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.hasFirstLoad && state.data.isEmpty) {
            return Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(bottom: 8),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: S.of(context).no_activities_message,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    const TextSpan(text: "\n\n"),
                    TextSpan(
                      text: S.of(context).lets_start_with_new_one,
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            );
          }
          if (state.hasFirstLoad && state.data.isNotEmpty) {
            return ActivitiesListWidget(
              data: state.orderedData,
              onItemClick: (activity) {
                viewAction.call(activity);
              },
              onCompleteClick: (activity) {
                completeAction.call(activity);
              },
            );
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (state.hasError)
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    //TODO localize errors properly
                    state.error!.object!.toString(),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              Center(
                child: ElevatedButton(
                  child: Text(S.of(context).load_activities),
                  onPressed: () {
                    bloc.add(const ActivitiesEvent.list());
                  },
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
