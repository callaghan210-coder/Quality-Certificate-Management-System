page 50106 "Item Certificate Action ListPa"
{
    Caption = 'Item Certificate Action ListPart';
    PageType = ListPart;
    SourceTable = "Item Certificate Action";
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
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
            }
        }
    }
}
