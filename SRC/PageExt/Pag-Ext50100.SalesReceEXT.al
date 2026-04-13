pageextension 50100 "Sales&ReceEXT" extends "Sales & Receivables Setup"
{
    layout
    {
        addlast(Content)
        {
            group("Certificate Setup")
            {
                Caption = 'Certificate Setup';
                field("CERT NO."; Rec."CERT NO.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the certificate number series for quality certificates.';
                }
            }
        }
    }
}