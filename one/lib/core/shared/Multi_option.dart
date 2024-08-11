import 'package:flutter/material.dart';
import 'package:checkbox_grouped/checkbox_grouped.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';

class Multi_option extends StatelessWidget {

  List<String> list;
  var name_con;
  Multi_option({required this.list, this.name_con});

  GroupController chipsController = GroupController(isMultipleSelection:false );
  @override
  Widget build(BuildContext context) {
    return SimpleGroupedChips<String>(
      controller: chipsController,
      values: list,
      itemsTitle:list,
      // List.generate(7, (index) => "chip_text_$index"),
      chipGroupStyle: ChipGroupStyle.minimize(
        isScrolling: true,
        backgroundColorItem: Colors.white,
        selectedTextColor: Colors.white,
        selectedColorItem: my_green,
        itemTitleStyle: TextStyle(
          fontSize: 25,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide.none,
        ),
        checkedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            width: 2,
            color: Colors.grey,
          ),
        ),
        selectedIcon: Icons.check,
        direction: ChipsDirection.horizontal,

      ),
      onItemSelected: ( values) {
        print(values);
        name_con.chengname_type(values);
      },
    );
  }
}

void main() => runApp(const ColorPickerDemo());

class ColorPickerDemo extends StatefulWidget {
  const ColorPickerDemo({super.key});

  @override
  State<ColorPickerDemo> createState() => _ColorPickerDemoState();
}

class _ColorPickerDemoState extends State<ColorPickerDemo> {
  late ThemeMode themeMode;

  @override
  void initState() {
    super.initState();
    themeMode = ThemeMode.light;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'ColorPicker',
      theme: ThemeData(useMaterial3: true),
      darkTheme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      themeMode: themeMode,
      home: ColorPickerPage(
        themeMode: (ThemeMode mode) {
          setState(() {
            themeMode = mode;
          });
        },
      ),
    );
  }
}

class ColorPickerPage extends StatefulWidget {
  const ColorPickerPage({super.key, required this.themeMode});
  final ValueChanged<ThemeMode> themeMode;

  @override
  State<ColorPickerPage> createState() => _ColorPickerPageState();
}

class _ColorPickerPageState extends State<ColorPickerPage> {
  late Color screenPickerColor; // Color for picker shown in Card on the screen.
  late Color dialogPickerColor; // Color for picker in dialog using onChanged
  late Color dialogSelectColor; // Color for picker using color select dialog.
  late bool isDark;

  // Define some custom colors for the custom picker segment.
  // The 'guide' color values are from
  // https://material.io/design/color/the-color-system.html#color-theme-creation
  static const Color guidePrimary = Color(0xFF6200EE);
  static const Color guidePrimaryVariant = Color(0xFF3700B3);
  static const Color guideSecondary = Color(0xFF03DAC6);
  static const Color guideSecondaryVariant = Color(0xFF018786);
  static const Color guideError = Color(0xFFB00020);
  static const Color guideErrorDark = Color(0xFFCF6679);
  static const Color blueBlues = Color(0xFF174378);

  // Make a custom ColorSwatch to name map from the above custom colors.
  final Map<ColorSwatch<Object>, String> colorsNameMap =
  <ColorSwatch<Object>, String>{
    ColorTools.createPrimarySwatch(guidePrimary): 'Guide Purple',
    ColorTools.createPrimarySwatch(guidePrimaryVariant): 'Guide Purple Variant',
    ColorTools.createAccentSwatch(guideSecondary): 'Guide Teal',
    ColorTools.createAccentSwatch(guideSecondaryVariant): 'Guide Teal Variant',
    ColorTools.createPrimarySwatch(guideError): 'Guide Error',
    ColorTools.createPrimarySwatch(guideErrorDark): 'Guide Error Dark',
    ColorTools.createPrimarySwatch(blueBlues): 'Blue blues',
  };

  @override
  void initState() {
    screenPickerColor = Colors.blue;
    dialogPickerColor = Colors.red;
    dialogSelectColor = const Color(0xFFA239CA);
    isDark = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ColorPicker Demo'),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
        children: <Widget>[
          const SizedBox(height: 16),
          // Pick color in a dialog.
          ListTile(
            title: const Text('Click this color to modify it in a dialog. '
                'The color is modified while dialog is open, but returns '
                'to previous value if dialog is cancelled'),
            subtitle: Text(
              // ignore: lines_longer_than_80_chars
              '${ColorTools.materialNameAndCode(dialogPickerColor, colorSwatchNameMap: colorsNameMap)} '
                  'aka ${ColorTools.nameThatColor(dialogPickerColor)}',
            ),
            trailing: ColorIndicator(
              width: 44,
              height: 44,
              borderRadius: 4,
              color: dialogPickerColor,
              onSelectFocus: false,
              onSelect: () async {
                // Store current color before we open the dialog.
                final Color colorBeforeDialog = dialogPickerColor;
                // Wait for the picker to close, if dialog was dismissed,
                // then restore the color we had before it was opened.
                if (!(await colorPickerDialog())) {
                  setState(() {
                    dialogPickerColor = colorBeforeDialog;
                  });
                }
              },
            ),
          ),
          ListTile(
            title: const Text('Click to select a new color from a dialog '
                'that uses custom open/close animation. The color is only '
                'modified after dialog is closed with OK'),
            subtitle: Text(
              // ignore: lines_longer_than_80_chars
              '${ColorTools.materialNameAndCode(dialogSelectColor, colorSwatchNameMap: colorsNameMap)} '
                  'aka ${ColorTools.nameThatColor(dialogSelectColor)}',
            ),
            trailing: ColorIndicator(
                width: 40,
                height: 40,
                borderRadius: 0,
                color: dialogSelectColor,
                elevation: 1,
                onSelectFocus: false,
                onSelect: () async {
                  // Wait for the dialog to return color selection result.
                  final Color newColor = await showColorPickerDialog(
                    // The dialog needs a context, we pass it in.
                    context,
                    // We use the dialogSelectColor, as its starting color.
                    dialogSelectColor,
                    title: Text('ColorPicker',
                        style: Theme.of(context).textTheme.titleLarge),
                    width: 40,
                    height: 40,
                    spacing: 0,
                    runSpacing: 0,
                    borderRadius: 0,
                    wheelDiameter: 165,
                    enableOpacity: true,
                    showColorCode: true,
                    colorCodeHasColor: true,
                    pickersEnabled: <ColorPickerType, bool>{
                      ColorPickerType.wheel: true,
                    },
                    copyPasteBehavior: const ColorPickerCopyPasteBehavior(
                      copyButton: true,
                      pasteButton: true,
                      longPressMenu: true,
                    ),
                    actionButtons: const ColorPickerActionButtons(
                      okButton: true,
                      closeButton: true,
                      dialogActionButtons: false,
                    ),
                    transitionBuilder: (BuildContext context,
                        Animation<double> a1,
                        Animation<double> a2,
                        Widget widget) {
                      final double curvedValue =
                          Curves.easeInOutBack.transform(a1.value) - 1.0;
                      return Transform(
                        transform: Matrix4.translationValues(
                            0.0, curvedValue * 200, 0.0),
                        child: Opacity(
                          opacity: a1.value,
                          child: widget,
                        ),
                      );
                    },
                    transitionDuration: const Duration(milliseconds: 400),
                    constraints: const BoxConstraints(
                        minHeight: 480, minWidth: 320, maxWidth: 320),
                  );
                  // We update the dialogSelectColor, to the returned result
                  // color. If the dialog was dismissed it actually returns
                  // the color we started with. The extra update for that
                  // below does not really matter, but if you want you can
                  // check if they are equal and skip the update below.
                  setState(() {
                    dialogSelectColor = newColor;
                  });
                }),
          ),

          // Show the selected color.
          ListTile(
            title: const Text('Select color below to change this color'),
            subtitle:
            Text('${ColorTools.materialNameAndCode(screenPickerColor)} '
                'aka ${ColorTools.nameThatColor(screenPickerColor)}'),
            trailing: ColorIndicator(
              width: 44,
              height: 44,
              borderRadius: 22,
              color: screenPickerColor,
            ),
          ),

          // Show the color picker in sized box in a raised card.
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Card(
                elevation: 2,
                child: ColorPicker(
                  // Use the screenPickerColor as color.
                  color: screenPickerColor,
                  // Update the screenPickerColor using the callback.
                  onColorChanged: (Color color) =>
                      setState(() => screenPickerColor = color),
                  width: 44,
                  height: 44,
                  borderRadius: 22,
                  heading: Text(
                    'Select color',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  subheading: Text(
                    'Select color shade',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ),
            ),
          ),

          // Theme mode toggle
          SwitchListTile(
            title: const Text('Turn ON for dark mode'),
            subtitle: const Text('Turn OFF for light mode'),
            value: isDark,
            onChanged: (bool value) {
              setState(() {
                isDark = value;
                widget.themeMode(isDark ? ThemeMode.dark : ThemeMode.light);
              });
            },
          )
        ],
      ),
    );
  }

  Future<bool> colorPickerDialog() async {
    return ColorPicker(
      color: dialogPickerColor,
      onColorChanged: (Color color) =>
          setState(() => dialogPickerColor = color),
      width: 40,
      height: 40,
      borderRadius: 4,
      spacing: 5,
      runSpacing: 5,
      wheelDiameter: 155,
      heading: Text(
        'Select color',
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subheading: Text(
        'Select color shade',
        style: Theme.of(context).textTheme.titleMedium,
      ),
      wheelSubheading: Text(
        'Selected color and its shades',
        style: Theme.of(context).textTheme.titleMedium,
      ),
      showMaterialName: true,
      showColorName: true,
      showColorCode: true,
      copyPasteBehavior: const ColorPickerCopyPasteBehavior(
        longPressMenu: true,
      ),
      materialNameTextStyle: Theme.of(context).textTheme.bodySmall,
      colorNameTextStyle: Theme.of(context).textTheme.bodySmall,
      colorCodeTextStyle: Theme.of(context).textTheme.bodyMedium,
      colorCodePrefixStyle: Theme.of(context).textTheme.bodySmall,
      selectedPickerTypeColor: Theme.of(context).colorScheme.primary,
      pickersEnabled: const <ColorPickerType, bool>{
        ColorPickerType.both: false,
        ColorPickerType.primary: true,
        ColorPickerType.accent: true,
        ColorPickerType.bw: false,
        ColorPickerType.custom: true,
        ColorPickerType.wheel: true,
      },
      customColorSwatchesAndNames: colorsNameMap,
    ).showPickerDialog(
      context,
      actionsPadding: const EdgeInsets.all(16),
      constraints:
      const BoxConstraints(minHeight: 480, minWidth: 300, maxWidth: 320),
    );
  }
}



// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   late final _ratingController;
//   late double _rating;
//
//   double _userRating = 3.0;
//   int _ratingBarMode = 1;
//   double _initialRating = 2.0;
//   bool _isRTLMode = false;
//   bool _isVertical = false;
//
//   IconData? _selectedIcon;
//
//   @override
//   void initState() {
//     super.initState();
//     _ratingController = TextEditingController(text: '3.0');
//     _rating = _initialRating;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.amber,
//         appBarTheme: AppBarTheme(
//           titleTextStyle: Theme.of(context)
//               .textTheme
//               .headline6
//               ?.copyWith(color: Colors.white),
//         ),
//       ),
//       home: Builder(
//         builder: (context) => Scaffold(
//           appBar: AppBar(
//             title: Text('Flutter Rating Bar'),
//             actions: [
//               IconButton(
//                 icon: Icon(Icons.settings),
//                 color: Colors.white,
//                 onPressed: () async {
//                   _selectedIcon = await showDialog<IconData>(
//                     context: context,
//                     builder: (context) => IconAlert(),
//                   );
//                   _ratingBarMode = 1;
//                   setState(() {});
//                 },
//               ),
//             ],
//           ),
//           body: Directionality(
//             textDirection: _isRTLMode ? TextDirection.rtl : TextDirection.ltr,
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   SizedBox(
//                     height: 40.0,
//                   ),
//                   _heading('Rating Bar'),
//                   _ratingBar(_ratingBarMode),
//                   SizedBox(height: 20.0),
//                   Text(
//                     'Rating: $_rating',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 40.0),
//                   _heading('Rating Indicator'),
//                   SizedBox(height: 20.0),
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 16.0),
//                     child: TextFormField(
//                       controller: _ratingController,
//                       keyboardType: TextInputType.number,
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(),
//                         hintText: 'Enter rating',
//                         labelText: 'Enter rating',
//                         suffixIcon: MaterialButton(
//                           onPressed: () {
//                             _userRating =
//                                 double.parse(_ratingController.text ?? '0.0');
//                             setState(() {});
//                           },
//                           child: Text('Rate'),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 40.0),
//                   _heading('Scrollable Rating Indicator'),
//
//                   SizedBox(height: 20.0),
//                   Text(
//                     'Rating Bar Modes',
//                     style: TextStyle(fontWeight: FontWeight.w300),
//                   ),
//                   Row(
//                     children: [
//                       _radio(1),
//                       _radio(2),
//                       _radio(3),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Text(
//                         'Switch to Vertical Bar',
//                         style: TextStyle(fontWeight: FontWeight.w300),
//                       ),
//                       Switch(
//                         value: _isVertical,
//                         onChanged: (value) {
//                           setState(() {
//                             _isVertical = value;
//                           });
//                         },
//                         activeColor: Colors.amber,
//                       ),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Text(
//                         'Switch to RTL Mode',
//                         style: TextStyle(fontWeight: FontWeight.w300),
//                       ),
//                       Switch(
//                         value: _isRTLMode,
//                         onChanged: (value) {
//                           setState(() {
//                             _isRTLMode = value;
//                           });
//                         },
//                         activeColor: Colors.amber,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _radio(int value) {
//     return Expanded(
//       child: RadioListTile<int>(
//         value: value,
//         groupValue: _ratingBarMode,
//         dense: true,
//         title: Text(
//           'Mode $value',
//           style: TextStyle(
//             fontWeight: FontWeight.w300,
//             fontSize: 12.0,
//           ),
//         ),
//         onChanged: (value) {
//           setState(() {
//             _ratingBarMode = value!;
//           });
//         },
//       ),
//     );
//   }
//
//   Widget _ratingBar(int mode) {
//     switch (mode) {
//       case 1:
//         return RatingBar.builder(
//           initialRating: _initialRating,
//           minRating: 1,
//           direction: _isVertical ? Axis.vertical : Axis.horizontal,
//           allowHalfRating: true,
//           unratedColor: Colors.amber.withAlpha(50),
//           itemCount: 5,
//           itemSize: 50.0,
//           itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//           itemBuilder: (context, _) => Icon(
//             _selectedIcon ?? Icons.star,
//             color: Colors.amber,
//           ),
//           onRatingUpdate: (rating) {
//             setState(() {
//               _rating = rating;
//             });
//           },
//           updateOnDrag: true,
//         );
//       case 2:
//         return RatingBar(
//           initialRating: _initialRating,
//           direction: _isVertical ? Axis.vertical : Axis.horizontal,
//           allowHalfRating: true,
//           itemCount: 5,
//           ratingWidget: RatingWidget(
//             full: _image('assets/heart.png'),
//             half: _image('assets/heart_half.png'),
//             empty: _image('assets/heart_border.png'),
//           ),
//           itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//           onRatingUpdate: (rating) {
//             setState(() {
//               _rating = rating;
//             });
//           },
//           updateOnDrag: true,
//         );
//       case 3:
//         return RatingBar.builder(
//           initialRating: _initialRating,
//           direction: _isVertical ? Axis.vertical : Axis.horizontal,
//           itemCount: 5,
//           itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//           itemBuilder: (context, index) {
//             switch (index) {
//               case 0:
//                 return Icon(
//                   Icons.sentiment_very_dissatisfied,
//                   color: Colors.red,
//                 );
//               case 1:
//                 return Icon(
//                   Icons.sentiment_dissatisfied,
//                   color: Colors.redAccent,
//                 );
//               case 2:
//                 return Icon(
//                   Icons.sentiment_neutral,
//                   color: Colors.amber,
//                 );
//               case 3:
//                 return Icon(
//                   Icons.sentiment_satisfied,
//                   color: Colors.lightGreen,
//                 );
//               case 4:
//                 return Icon(
//                   Icons.sentiment_very_satisfied,
//                   color: Colors.green,
//                 );
//               default:
//                 return Container();
//             }
//           },
//           onRatingUpdate: (rating) {
//             setState(() {
//               _rating = rating;
//             });
//           },
//           updateOnDrag: true,
//         );
//       default:
//         return Container();
//     }
//   }
//
//   Widget _image(String asset) {
//     return Image.asset(
//       asset,
//       height: 30.0,
//       width: 30.0,
//       color: Colors.amber,
//     );
//   }
//
//   Widget _heading(String text) => Column(
//     children: [
//       Text(
//         text,
//         style: TextStyle(
//           fontWeight: FontWeight.w300,
//           fontSize: 24.0,
//         ),
//       ),
//       SizedBox(
//         height: 20.0,
//       ),
//     ],
//   );
// }

class IconAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Select Icon',
        style: TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      titlePadding: EdgeInsets.all(12.0),
      contentPadding: EdgeInsets.all(0),
      content: Wrap(
        children: [
          _iconButton(context, Icons.home),
          _iconButton(context, Icons.airplanemode_active),
          _iconButton(context, Icons.euro_symbol),
          _iconButton(context, Icons.beach_access),
          _iconButton(context, Icons.attach_money),
          _iconButton(context, Icons.music_note),
          _iconButton(context, Icons.android),
          _iconButton(context, Icons.toys),
          _iconButton(context, Icons.language),
          _iconButton(context, Icons.landscape),
          _iconButton(context, Icons.ac_unit),
          _iconButton(context, Icons.star),
        ],
      ),
    );
  }

  Widget _iconButton(BuildContext context, IconData icon) => IconButton(
    icon: Icon(icon),
    onPressed: () => Navigator.pop(context, icon),
    splashColor: Colors.amberAccent,
    color: Colors.amber,
  );
}