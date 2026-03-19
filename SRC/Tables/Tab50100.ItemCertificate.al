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
        }
        field(40; "Issued Date"; Date)
        {
            Caption = 'Issued Date';
        }
        field(50; "Last Prolonged Date"; Date)
        {
            Caption = 'Last Prolonged Date';
        }
        field(60; Status; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Open,"Pending Approval",Approved,Rejected;
            Caption = 'Status';
            Editable = false;
        }
        field(70; "Approver User Id"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = User."User Name";
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
