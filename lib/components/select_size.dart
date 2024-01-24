import 'package:flutter/material.dart';

class SelectSize extends StatefulWidget {
  final void Function(SelectSizeType) onSelected;
  final Set<SelectSizeType> selected;

  const SelectSize({
    super.key,
    required this.onSelected,
    this.selected = const {SelectSizeType.xs},
  });

  @override
  State<SelectSize> createState() => _SelectSizeState();
}

enum SelectSizeType {
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

class _SelectSizeState extends State<SelectSize> {
  final Set<SelectSizeType> _selected = {SelectSizeType.xs};

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
              SegmentedButton<SelectSizeType>(
                showSelectedIcon: false,
                segments: const [
                  ButtonSegment(value: SelectSizeType.xs, label: Text('XS')),
                  ButtonSegment(value: SelectSizeType.s, label: Text('S')),
                  ButtonSegment(value: SelectSizeType.m, label: Text('M')),
                  ButtonSegment(value: SelectSizeType.l, label: Text('L')),
                  ButtonSegment(value: SelectSizeType.xl, label: Text('XL')),
                  ButtonSegment(value: SelectSizeType.xxl, label: Text('XXL')),
                  ButtonSegment(
                      value: SelectSizeType.xxxl, label: Text('XXXL')),
                  ButtonSegment(
                      value: SelectSizeType.xxxxl, label: Text('XXXXL')),
                  ButtonSegment(
                      value: SelectSizeType.xxxxxl, label: Text('XXXXXL')),
                ],
                selected: _selected,
                onSelectionChanged: (Set<SelectSizeType> p0) {
                  setState(() {
                    _selected.clear();
                    _selected.add(p0.first);
                  });

                  widget.onSelected(p0.first);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
