page 50113 CertificateChangeLog
{
    Caption = 'CertificateChangeLog';
    PageType = List;
    SourceTable = CertificateChangeLog;
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Certificate No."; Rec."Certificate No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No . field.', Comment = '%';
                }
                field("Changed By"; Rec."Changed By")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Changed By field.', Comment = '%';
                }
                field("Date Time"; Rec."Date Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date Time field.', Comment = '%';
                }
                field("Old Status"; Rec."Old Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Old Status field.', Comment = '%';
                }
                field("New Status"; Rec."New Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the New Status field.', Comment = '%';
                }

            }
        }
    }
}
