table 50102 "Item Certificate Action"
{
    Caption = 'Item Certificate Action';
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "Certificate No."; Code[20])
        {
            Caption = 'Certificate No.';
            Editable = false;
            TableRelation = "Item Certificate"."No.";
        }
        field(20; "Action Date"; Date)
        {
            Caption = 'Action Date';
        }
        field(30; "Action Type "; Option)
        {
            Caption = 'Action Type ';
            OptionMembers = Issued,Prolonged,Revoked;
        }
        field(40; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
        }
        field(50; "Item No."; Code[20])
        {
            Caption = 'Item No.';
        }
    }
    keys
    {
        key(PK; "Certificate No.", "Action Date")
        {
            Clustered = true;
        }
    }
}
