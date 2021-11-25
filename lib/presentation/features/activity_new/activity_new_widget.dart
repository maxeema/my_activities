import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_activities/blocs/activity_new/activity_new_bloc.dart';
import 'package:my_activities/generated/l10n.dart';
import 'package:my_activities/presentation/consts.dart';
import 'package:my_activities/presentation/util/datetime_format.dart';

class ActivityNewWidget extends StatefulWidget {
  const ActivityNewWidget({required this.activityNewBloc, Key? key}) : super(key: key);

  final ActivityNewBloc activityNewBloc;

  @override
  State<ActivityNewWidget> createState() => _ActivityNewWidgetState();
}

class _ActivityNewWidgetState extends State<ActivityNewWidget> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _titleController.addListener(() {
      widget.activityNewBloc.add(ActivityNewEvent.setTitle(_titleController.text.trim()));
    });
    _descriptionController.addListener(() {
      widget.activityNewBloc.add(ActivityNewEvent.setDescription(_descriptionController.text.trim()));
    });
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextFormField(
          controller: _titleController,
          inputFormatters: [
            LengthLimitingTextInputFormatter(kNewActivityMaxTitleLength),
          ],
          decoration: InputDecoration(hintText: S.of(context).activity_title),
          style: Theme.of(context).textTheme.headline5,
          maxLines: 1,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.text,
        ),
        const SizedBox(height: 16),
        BlocBuilder<ActivityNewBloc, ActivityNewState>(
          bloc: widget.activityNewBloc,
          builder: (context, state) {
            return Column(
              children: [
                CheckboxListTile(
                  contentPadding: EdgeInsets.zero,
                  value: state.completionDateEnabled,
                  onChanged: (newValue) {
                    widget.activityNewBloc.add(ActivityNewEvent.setCompletionDateTimeEnabled(newValue!));
                  },
                  title: Text('${S.of(context).completion_time} (${S.of(context).optional_mark})'),
                ),
                Opacity(
                  opacity: state.completionDateEnabled ? 1 : 0.5,
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                    onTap: state.completionDateEnabled
                        ? () {
                            showTimePicker(context: context, initialTime: state.timeOfDay!).then((newTime) {
                              if (newTime != null && newTime != state.timeOfDay && state.completionDateEnabled) {
                                widget.activityNewBloc.add(ActivityNewEvent.setCompletionTimeOfDay(newTime));
                              }
                            });
                          }
                        : null,
                    title: Row(
                      children: [
                        Text(S.of(context).activity_time),
                        const SizedBox(width: 16),
                        Text(
                          state.completionDateEnabled
                              ? DateTimeFormat.formatTime(state.completionDate!)
                              : kDateTimePlaceholder,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    trailing: const Icon(Icons.edit),
                  ),
                ),
                Opacity(
                  opacity: state.completionDateEnabled ? 1 : 0.5,
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                    onTap: state.completionDateEnabled
                        ? () async {
                            showDatePicker(
                              context: context,
                              initialDate: state.completionDate!,
                              firstDate: state.completionDate!,
                              lastDate: state.completionDate!.add(const Duration(days: 365)),
                            ).then((newDate) {
                              if (newDate != null &&
                                  newDate != state.completionDate &&
                                  state.completionDateEnabled) {
                                widget.activityNewBloc
                                    .add(ActivityNewEvent.setCompletionDateTime(newDate.add(state.hoursAndLess!)));
                              }
                            });
                          }
                        : null,
                    title: Row(
                      children: [
                        Text(S.of(context).activity_date),
                        const SizedBox(width: 16),
                        Text(
                          state.completionDateEnabled
                              ? DateTimeFormat.formatDate(state.completionDate!.subtract(state.hoursAndLess!))
                              : kDateTimePlaceholder,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    trailing: const Icon(Icons.edit),
                  ),
                )
              ],
            );
          },
        ),
        const SizedBox(height: 16),
        TextFormField(
          controller: _descriptionController,
          inputFormatters: [
            LengthLimitingTextInputFormatter(kNewActivityMaxDescriptionLength),
          ],
          decoration: InputDecoration(
            hintText: '${S.of(context).activity_description} (${S.of(context).optional_mark})',
          ),
          minLines: 5,
          maxLines: 5,
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.text,
        ),
        const SizedBox(height: 78),
      ],
    );
  }
}
