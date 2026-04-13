pageextension 50101 UserSetUpExt extends "User Setup"
{
    layout
    {
        // Add changes to page layout here
        addafter(PhoneNo)
        {
            field("Is Manager"; Rec."Is Manager")
            {
                ApplicationArea = All;
                ToolTip = 'Indicates whether the user is a manager.';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}