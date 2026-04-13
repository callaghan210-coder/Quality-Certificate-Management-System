tableextension 50101 "Sales&ReceivalesSetup" extends "Sales & Receivables Setup"
{
    fields
    {
        field(50100; "CERT NO."; Code[10])
        {
            Caption = '';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }
}
