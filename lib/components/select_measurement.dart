import 'package:flutter/material.dart';

class SelectMeasurement extends StatefulWidget {
  final void Function(MeasurementSet) onSelected;
  final Set<MeasurementSet> selected;

  const SelectMeasurement({
    super.key,
    required this.onSelected,
    this.selected = const {MeasurementSet.pom},
  });

  @override
  State<SelectMeasurement> createState() => _SelectMeasurementState();
}

enum MeasurementSet {
  pom,
  req,
  tolerance,
  sample,
}

class _SelectMeasurementState extends State<SelectMeasurement> {
  final Set<MeasurementSet> _selected = {MeasurementSet.pom};

  @override
  Widget build(BuildContext context) {
    // horizontal listview
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: SegmentedButton<MeasurementSet>(
        showSelectedIcon: false,
        segments: const [
          ButtonSegment(
            value: MeasurementSet.pom,
            label: Text('POM'),
          ),
          ButtonSegment(value: MeasurementSet.req, label: Text('Req')),
          ButtonSegment(
              value: MeasurementSet.tolerance, label: Text('Tolerance')),
          ButtonSegment(value: MeasurementSet.sample, label: Text('Sample')),
        ],
        selected: _selected,
        onSelectionChanged: (Set<MeasurementSet> p0) {
          setState(() {
            _selected.clear();
            _selected.add(p0.first);
          });
          widget.onSelected(p0.first);
        },
      ),
    );
  }
}
