import 'package:flutter/material.dart';

class SelectWeight extends StatefulWidget {
  const SelectWeight({Key? key}) : super(key: key);

  @override
  _SelectWeightState createState() => _SelectWeightState();
}

enum WeightSet {
  xs,
  s,
  m,
  l,
  xl,
  xxl,
  xxxl,
  xxxxl,
  xxxxxl,
}

class _SelectWeightState extends State<SelectWeight> {
  final Set<WeightSet> _selected = {WeightSet.xs};

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
                  ButtonSegment(value: WeightSet.xs, label: Text('XS')),
                  ButtonSegment(value: WeightSet.s, label: Text('S')),
                  ButtonSegment(value: WeightSet.m, label: Text('M')),
                  ButtonSegment(value: WeightSet.l, label: Text('L')),
                  ButtonSegment(value: WeightSet.xl, label: Text('XL')),
                  ButtonSegment(value: WeightSet.xxl, label: Text('XXL')),
                  ButtonSegment(value: WeightSet.xxxl, label: Text('XXXL')),
                  ButtonSegment(value: WeightSet.xxxxl, label: Text('XXXXL')),
                  ButtonSegment(value: WeightSet.xxxxxl, label: Text('XXXXXL')),
                ],
                selected: _selected,
                onSelectionChanged: (Set<WeightSet> p0) {
                  setState(() {
                    _selected.clear();
                    _selected.add(p0.first);
                  });
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
