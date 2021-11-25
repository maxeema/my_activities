import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_activities/domain/activity.dart';

import 'activities_list_item_widget.dart';

class ActivitiesListWidget extends StatelessWidget {
  const ActivitiesListWidget({
    required this.data,
    required this.onItemClick,
    required this.onCompleteClick,
    Key? key,
  }) : super(key: key);

  final List<Activity> data;
  final void Function(Activity activity) onItemClick;
  final void Function(Activity activity) onCompleteClick;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: data.length + 1,
      itemBuilder: (context, idx) {
        if (idx == data.length) {
          // last item as empty widget because FAB overlaps list items
          return AbsorbPointer(
            child: Opacity(
              opacity: 0,
              child: ActivityListItemWidget(
                key: const Key('footer'),
                activity: data.first,
                markAsCompleted: null,
              ),
            ),
          );
        }
        final activity = data[idx];
        return InkWell(
          onTap: () => onItemClick(activity),
          child: ActivityListItemWidget(
            key: Key(activity.id),
            activity: activity,
            markAsCompleted: () => onCompleteClick(activity),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(height: 1);
      },
    );
  }
}
