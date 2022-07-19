import 'package:flutter/material.dart';

class ListViewItem extends StatefulWidget {
  const ListViewItem({Key? key}) : super(key: key);

  @override
  _ListViewItemState createState() => _ListViewItemState();
}

class _ListViewItemState extends State<ListViewItem> {
  bool isVisible = false;

  OverlayEntry? _overlayEntry;
  final LayerLink _layerLink = LayerLink();

  OverlayEntry _createOverlay() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;

    return OverlayEntry(
        builder: (context) => Positioned(
              left: size.width,
              width: 200,
              child: CompositedTransformFollower(
                offset: Offset(size.width - 200, 50.0),
                link: _layerLink,
                showWhenUnlinked: false,
                child: Material(
                  child: Container(
                    child: TextButton(
                      child: Text('텍스트버튼'),
                      onPressed: () {
                        setState(() {
                          print('hello');
                          _overlayEntry!.remove();
                          isVisible = !isVisible;
                        });
                      },
                    ),
                    color: Color(0x11ff3458),
                    height: 200,
                    width: 10,
                  ),
                ),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    OverlayState? overlayState = Overlay.of(context);

    return CompositedTransformTarget(
      link: _layerLink,
      child: Column(
        children: [
          Container(
            color: Colors.amber,
            height: 50,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                isVisible = !isVisible;
                if (isVisible) {
                  _overlayEntry = _createOverlay();

                  overlayState!.insert(_overlayEntry!);
                } else {
                  _overlayEntry!.remove();
                }
              });
            },
            child: Text('눌러 보시게나 $isVisible '),
          ),
        ],
      ),
    );
  }
}
