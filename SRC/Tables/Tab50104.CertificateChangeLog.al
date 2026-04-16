table 50104 CertificateChangeLog
{
    Caption = 'CertificateChangeLog';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Certificate No."; Code[20])
        {
            Caption = 'No .';
        }
        field(2; "Changed By"; Text[50])
        {
            Caption = 'User Id';
        }
        field(3; "Date Time"; DateTime)
        {
            Caption = 'Date Time';
        }
        field(4; "Old Status"; Enum "Item Cert Status")
        {
            Caption = 'Old Status';
        }
        field(5; "New Status"; Enum "Item Cert Status")
        {
            Caption = 'New Status';
        }
    }
    keys
    {
        key(PK; "Certificate No.", "Date Time")
        {
            Clustered = true;
        }
    }
}
