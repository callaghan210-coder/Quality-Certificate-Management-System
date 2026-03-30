page 50104 "Item Certificate List"
{
    Caption = 'Item Certificate List';
    PageType = Card;
    SourceTable = "Item Certificate";
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.', Comment = '%';
                }
                field("CA Code"; Rec."CA Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CA Code field.', Comment = '%';
                }
                field("Item No"; Rec."Item No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item No field.', Comment = '%';
                }
                field("Issued Date"; Rec."Issued Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Issued Date field.', Comment = '%';
                }
                field("Last Prolonged Date"; Rec."Last Prolonged Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Prolonged Date field.', Comment = '%';
                }
            }
        }
    }

}
