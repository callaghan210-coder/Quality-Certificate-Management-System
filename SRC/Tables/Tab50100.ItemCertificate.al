table 50100 "Item Certificate"
{
    Caption = 'Item Certificate';
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(20; "CA Code"; Code[20])
        {
            Caption = 'CA Code';
            TableRelation = "Certification Authority"."Code";
        }
        field(30; "Item No"; Code[20])
        {
            Caption = 'Item No';
            TableRelation = "Item"."No.";
        }
        field(40; "Issued Date"; Date)
        {
            Caption = 'Issued Date';
        }
        field(50; "Last Prolonged Date"; Date)
        {
            Caption = 'Last Prolonged Date';
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}
