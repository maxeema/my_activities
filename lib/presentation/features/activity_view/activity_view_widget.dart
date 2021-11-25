import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_activities/domain/activity.dart';
import 'package:my_activities/generated/l10n.dart';
import 'package:my_activities/presentation/util/datetime_format.dart';

const _kDateTimePlaceholder = '- - -';

class ActivityViewWidget extends StatelessWidget {
  const ActivityViewWidget({required this.activity, Key? key}) : super(key: key);

  final Activity activity;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Transform.scale(
                scale: 1.7,
                child: Icon(activity.completed ? Icons.done : Icons.watch_later_outlined,
                    color: activity.completed ? Colors.green : Colors.orange),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  activity.name,
                  style: theme.textTheme.headline4?.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Visibility(
            visible: activity.description?.isNotEmpty == true,
            child: Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Text(
                activity.description ?? '',
                style: theme.textTheme.headline5,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Text(
              '${S.of(context).created}: ${DateTimeFormat.formatDateTime(activity.creationDate)}',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.headline6?.copyWith(
                color: Colors.grey.shade600,
              ),
            ),
          ),
          Visibility(
            visible: activity.completionDate != null,
            child: Container(
              padding: const EdgeInsets.only(top: 32.0),
              child: Text(
                activity.completionDate == null
                    ? ''
                    : '${activity.completed ? S.of(context).completed : S.of(context).auto_completes}: ${DateTimeFormat.formatDateTime(activity.completionDate!)}',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.headline6?.copyWith(
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
