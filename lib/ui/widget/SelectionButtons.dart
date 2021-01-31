part of "widgets.dart";

class SelectionButtons extends StatelessWidget {
  final int selectedIndex;
  final List<String> titles;
  final Function(int) onTap;

  SelectionButtons({@required this.titles, this.selectedIndex, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.04,
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemExtent: MediaQuery.of(context).size.width * 0.275,
            itemCount: titles.length,
            itemBuilder: (BuildContext context, index) {
              return Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.025),
                  child: RaisedButton(
                      onPressed: () {
                        if (onTap != null) {
                          onTap(titles.indexOf(titles[index]));
                        }
                      }, //TBA
                      color: (titles.indexOf(titles[index]) == selectedIndex) ? Theme.of(context).primaryColor : HexColor("1B1F28"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Text("${titles[index]}")));
            }));
  }
}
