import 'package:atvos_agricola/app/models/card_info.dart';
import 'package:atvos_agricola/app/theme/colors.dart';
import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard({Key? key, required this.listCard, required this.isAddButton})
      : super(key: key);

  final List<CardInfo> listCard;
  final bool isAddButton;

  @override
  Widget build(BuildContext context) {
    return _listNotes(context, listCard);
  }

  _listNotes(BuildContext context, List<CardInfo> cards) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(bottom: 45, top: 25, left: 10, right: 10),
      child: Container(
          decoration: BoxDecoration(
              color: CustomColors.blueDarkLight,
              borderRadius: BorderRadius.circular(8)),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView.builder(
                    itemCount: cards.length,
                    itemBuilder: (context, int index) {
                      return (Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            _card(cards[index], context),
                            const Divider()
                          ],
                        ),
                      ));
                    }),
              ),
              isAddButton
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                          enableFeedback: false,
                          onPressed: () => print('add'),
                          icon: const Icon(
                            Icons.add_box,
                            size: 40,
                            color: CustomColors.orange,
                          )),
                    )
                  : Container()
            ],
          )),
    ));
  }

  _card(CardInfo note, BuildContext context) {
    return GestureDetector(
      onTap: () => print(note),
      child: Row(
        children: [
          _borderContainer(note.isCompleted),
          _containerCard(note, context)
        ],
      ),
    );
  }

  _borderContainer(bool noteIsCompleted) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
          height: 70,
          decoration: BoxDecoration(
            border: Border(
                left: BorderSide(
                    width: 2,
                    color: noteIsCompleted
                        ? CustomColors.green
                        : CustomColors.orange)),
          )),
    );
  }

  _containerCard(CardInfo note, BuildContext context) {
    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width - 100,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          children: [_containerCardHeader(note), _containerCardContent(note)],
        ),
      ),
    );
  }

  _containerCardHeader(CardInfo note) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '${note.title} ',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: CustomColors.grey),
            ),
            Text(
              note.statusText,
              style: TextStyle(
                  color: note.isCompleted
                      ? CustomColors.green
                      : CustomColors.orange,
                  fontSize: 14),
            ),
          ],
        ),
        Text(
          note.date,
          style: const TextStyle(color: CustomColors.grey, fontSize: 14),
        )
      ],
    );
  }

  _containerCardContent(CardInfo note) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.location_on_outlined,
                    color: CustomColors.grey,
                    size: 18,
                  ),
                ),
                Text(
                  '${note.locationDescription} ${note.locationCode}',
                  style:
                      const TextStyle(color: CustomColors.grey, fontSize: 14),
                )
              ],
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.attach_money_outlined,
                  color: CustomColors.grey,
                  size: 18,
                ),
              ),
              Text(
                'Centro de custo - ${note.centerCostCode}',
                style: const TextStyle(color: CustomColors.grey, fontSize: 14),
              )
            ],
          ),
        ],
      ),
    );
  }
}
