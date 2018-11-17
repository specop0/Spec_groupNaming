class CfgVehicles {
    class Man;

    class CAManBase : Man {
        class ACE_SelfActions {
            class ACE_TeamManagement  {
                class Spec_groupNaming {
                    displayName = "$STR_Spec_groupNaming_Rename";
                    condition = "Spec_groupNaming_enabled";
                    exceptions[] = {"isNotInside", "isNotSitting"};
                    statement = "[] spawn Spec_groupNaming_fnc_editDialog";
                };
            };
        };
    };
};