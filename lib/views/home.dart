import 'package:flutter/material.dart';
import 'package:habit_tracker/data/habit_items.dart';
import 'package:habit_tracker/widgets/add_habit.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime? selectedDate;
  String formattedDate = 'No Date Chosen';
  String chip = 'Morning';

  void showNewHabit() {
    showModalBottomSheet(
      context: context,
      builder: ((context) => const NewHabit()),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // Initial date displayed
      firstDate: DateTime(2000), // Earliest selectable date
      lastDate: DateTime(2025), // Latest selectable date
    );

    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
        formattedDate =
            DateFormat('dd-MM-yyyy').format(pickedDate); // Format the date
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: showNewHabit,
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  'Hi Confidence',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                CircleAvatar(),
              ],
            ),
            const SizedBox(height: 30),
            // SingleChildScrollView(
            //   child: Row(
            //     children: [
            //       Calendar(),
            //       Calendar(),
            //       Calendar(),
            //       Calendar(),
            //       Calendar(),
            //     ],
            //   ),
            OutlinedButton(
              onPressed: () => _selectDate(context),
              child: const Text('Choose Date'),
            ),
            const SizedBox(height: 20),
            Text(formattedDate),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: myHabit.length,
                itemBuilder: ((context, index) {
                  return Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text(myHabit[index].duration),
                          subtitle: Text(
                            myHabit[index].habit,
                            style: const TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Chip(
                          label: Text(myHabit[index].timeOfDay),
                          color: MaterialStatePropertyAll(
                            Theme.of(context).colorScheme.onSurface,
                          ),
                        )
                      ],
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
