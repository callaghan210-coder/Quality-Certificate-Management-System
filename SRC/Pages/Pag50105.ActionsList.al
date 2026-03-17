page 50105 "Actions List"
{
    ApplicationArea = All;
    Caption = 'Actions List';
    PageType = List;
    SourceTable = "Item Certificate Action";
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Certificate No."; Rec."Certificate No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Certificate No. field.', Comment = '%';
                }
                field("Action Date"; Rec."Action Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Action Date field.', Comment = '%';
                }
                field("Action Type "; Rec."Action Type ")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Action Type field.', Comment = '%';
                }
                field("Expiration Date"; Rec."Expiration Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Expiration Date field.', Comment = '%';
                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item No. field.', Comment = '%';
                }
            }
        }
    }
}
