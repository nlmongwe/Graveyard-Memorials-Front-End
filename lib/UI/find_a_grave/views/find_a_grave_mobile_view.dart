import 'package:flutter/material.dart';
import 'package:web_project/UI/Widgets/call_to_action_button.dart';
import 'package:web_project/UI/Widgets/custom_form.dart';
import 'package:web_project/Utils/extensions.dart';
import 'package:web_project/models/find_a_grave_search_input.dart';
import '../../../models/grave.dart';
import '../../../services/api_requests_handler.dart';
import '../../Widgets/custom_date_form.dart';
import 'find_a_grave_search_results.datr==rt.dart';

class FindAGraveMobileView extends StatefulWidget {
  const FindAGraveMobileView({super.key});

  @override
  State<FindAGraveMobileView> createState() => _FindAGraveMobileViewState();
}

class _FindAGraveMobileViewState extends State<FindAGraveMobileView> {
  final _findAGraveFormKey = GlobalKey<FormState>();
  final _findAGraveApi = ApiRequestsHandler();
  final TextEditingController _dateOdBirthController = TextEditingController();
  final TextEditingController _dateOdDeathController = TextEditingController();

  String? _graveNumber;
  String? _burialOrderNumber;
  String? _fullNames;
  String? _surName;
  DateTime? _dateOfBirth;
  DateTime? _dateOfDeath;

  @override
  void dispose() {
    _dateOdBirthController;
    _dateOdDeathController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.00),
      child: Form(
        key: _findAGraveFormKey,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            CustomForm(
                obscureText: false,
                hintText: "Grave Number",
                validator: _validateStringLength,
                onSaved: (value) {
                  if (value != null) {
                    setState(() {
                      _graveNumber = value;
                    });
                  }
                }),
            CustomForm(
                obscureText: false,
                hintText: "Burial Order Number",
                validator: _validateStringLength,
                onSaved: (value) {
                  if (value != null) {
                    setState(() {
                      _burialOrderNumber = value;
                    });
                  }
                }),
            CustomForm(
                obscureText: false,
                hintText: "Full Name(s)",
                validator: _validateStringLength,
                onSaved: (value) {
                  if (value != null) {
                    setState(() {
                      _fullNames = value;
                    });
                  }
                }),
            CustomForm(
                obscureText: false,
                hintText: "Surname",
                validator: _validateStringLength,
                onSaved: (value) {
                  if (value != null) {
                    setState(() {
                      _surName = value;
                    });
                  }
                }),
            CustomDateForm(
                controller: _dateOdBirthController,
                function: _pickDateOfBirth,
                validator: null,
                hintText: 'Date of Birth'),
            CustomDateForm(
                controller: _dateOdDeathController,
                function: _pickDateOfDeath,
                validator: null,
                hintText: 'Date of Death'),
            const SizedBox(height: 35.00),
            CallToActionButton(buttonName: "Find", function: _submitForm)
          ],
        ),
      ),
    );
  }

  Future<void> _pickDateOfBirth() async {
    _dateOdBirthController.clear();
    final DateTime? picked = await showDatePicker(
      context: context,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      _dateOdBirthController.text = picked.toString();
      _dateOfBirth = DateTime.parse(picked.toString());
    }
  }

  Future<void> _pickDateOfDeath() async {
    _dateOdDeathController.clear();
    final DateTime? picked = await showDatePicker(
      context: context,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      _dateOdDeathController.text = picked.toString();
      _dateOfDeath = DateTime.parse(picked.toString());
    }
  }

  String? _validateStringLength(String? value) {
    if (value != null) {
      if (!value.isTextValidLength) {
        return "Max length of 50 exceeded";
      }
    }
    return null;
  }

  void _submitForm() async{
    if (_findAGraveFormKey.currentState!.validate()) {
      _findAGraveFormKey.currentState!.save();

      if (_graveNumber!.isEmpty &&
          _burialOrderNumber!.isEmpty &&
          _fullNames!.isEmpty &&
          _surName!.isEmpty &&
          _dateOdBirthController.text.isEmpty &&
          _dateOdDeathController.text.isEmpty) {
        // none filled
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Please fill at least on field")));
      } else {
        final FindAGraveSearchInput input = FindAGraveSearchInput(
            graveNumber: _graveNumber,
            burialOrderNumber: _burialOrderNumber,
            fullName: _fullNames,
            surName: _surName,
            dateOfBirth: _dateOfBirth,
            dateOfDeath: _dateOfDeath);
        List<Grave> graves = await _findAGraveApi.findAGraveSearch(input);

        Navigator.of(context).push(MaterialPageRoute(builder: (context) => FindAGraveSearchResults(graveResults:graves)));
      }
    }
  }
}
