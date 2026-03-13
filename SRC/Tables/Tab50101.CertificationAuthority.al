table 50101 "Certification Authority"
{
    Caption = 'Certification Authority';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(10; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(20; Name; Text[50])
        {
            Caption = 'Name';
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
