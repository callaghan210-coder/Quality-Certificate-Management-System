page 50102 "Actions Card"
{
    Caption = 'Actions Card';
    PageType = Card;
    SourceTable = "Item Certificate Action";
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

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
                field("Action Type"; Rec."Action Type")
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
                field("Issued Certificates"; Rec."Issued Certificates")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Issued Certificates field.', Comment = '%';
                }
                field("Latest Prolonged Certificates"; Rec."Latest Prolonged Certificates")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Latest Prolonged Certificates field.', Comment = '%';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(ProcessActions)
            {
                Caption = 'Process Actions';
                ApplicationArea = All;
                trigger OnAction()
                var
                    Actionmgt: Codeunit "Certificate Action Mgt";
                begin
                    Actionmgt.ProcessAction(Rec);
                end;
            }
        }
    }
}
