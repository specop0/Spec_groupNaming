/*
    Author: SpecOp0

    Description:
    Edit the display name of the group by requesting user input.

    Parameter(s):
    -

    Return Value:
    None

    Example:
    [] spawn Spec_groupNaming_fnc_editDialog;
*/

private _group = group player;
if (isNull _group) exitWith {
    hint "Error: Group not found.";
};

disableSerialization;

// get old display name
private _oldGroupName = groupId _group;

private _dialogResult =
[
    localize "STR_Spec_groupNaming_DialogTitle",
    [
        [localize "STR_Spec_groupNaming_DialogNameEntry", "", _oldGroupName, true]
    ]
] call Ares_fnc_ShowChooseDialog;

if (_dialogResult isEqualTo []) exitWith {};

// parse result
_dialogResult params ["_newGroupName"];
if (([_newGroupName] call CBA_fnc_removeWhitespace) isEqualTo "") exitWith {};

// save the display name
_group setGroupIdGlobal [_newGroupName];

true
