table 50103 "Certificate Cue"
{
    Caption = 'Certificate Cue';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            TableRelation = "Item Certificate Action"."Certificate No.";
        }
        field(2; "Expired Certificates"; Integer)
        {
            Caption = 'Expired Certificates';
        }
        field(3; "Expiring soon"; Integer)
        {
            Caption = 'Expiring soon';
        }
        field(4; "Active Certificates"; Integer)
        {
            Caption = 'Active Certificates';
        }
        field(5; "Revoked Certificates"; Integer)
        {
            Caption = 'Revoked Certificates';
        }
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}
