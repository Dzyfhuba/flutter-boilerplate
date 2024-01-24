import 'package:flutter/material.dart';

class SelectWeight extends StatefulWidget {
  final void Function(WeightSet) onSelected;
  final Set<WeightSet> selected;

  const SelectWeight({
    Key? key,
    required this.onSelected,
    this.selected = const {WeightSet.style},
  }) : super(key: key);

  @override
  State<SelectWeight> createState() => _SelectWeightState();
}

enum WeightSet {
  style,
  req,
  sample,
}

class _SelectWeightState extends State<SelectWeight> {
  final Set<WeightSet> _selected = {WeightSet.style};

  @override
  Widget build(BuildContext context) {
    // horizontal listview
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              SegmentedButton<WeightSet>(
                showSelectedIcon: false,
                segments: const [
                  ButtonSegment(value: WeightSet.style, label: Text('Style')),
                  ButtonSegment(value: WeightSet.req, label: Text('Req')),
                  ButtonSegment(value: WeightSet.sample, label: Text('Sample')),
                ],
                selected: _selected,
                onSelectionChanged: (Set<WeightSet> p0) {
                  setState(() {
                    _selected.clear();
                    _selected.add(p0.first);
                  });
                  widget.onSelected(p0.first);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
