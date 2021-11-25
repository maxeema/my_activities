import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_activities/domain/activity.dart';
import 'package:my_activities/generated/l10n.dart';
import 'package:my_activities/presentation/util/datetime_format.dart';

class ActivityListItemWidget extends StatelessWidget {
  const ActivityListItemWidget({required this.activity, required this.markAsCompleted, Key? key}) : super(key: key);

  final Activity activity;
  final VoidCallback? markAsCompleted;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Transform.scale(
                scale: 1.2,
                child: Icon(activity.completed ? Icons.done : Icons.watch_later_outlined,
                    color: activity.completed ? Colors.green : Colors.orange),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  activity.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.headline4?.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
              Visibility(
                visible: !activity.completed,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: OutlinedButton(
                      child: Text(S.of(context).complete), onPressed: activity.completed ? null : markAsCompleted),
                ),
              )
            ],
          ),
          Visibility(
            visible: activity.description?.isNotEmpty == true,
            child: Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                activity.description ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.headline5,
              ),
            ),
          ),
          Visibility(
            visible: activity.completionDate != null,
            child: Container(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                activity.completionDate == null
                    ? ''
                    : '${activity.completed ? S.of(context).completed : S.of(context).auto_completes}: ${DateTimeFormat.formatDateTime(activity.completionDate!)}',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyText2?.copyWith(
                  color: Colors.grey.shade800,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
