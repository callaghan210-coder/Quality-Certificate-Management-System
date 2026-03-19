tableextension 50103 ValueEntryTableEXT extends "Value Entry"
{
    fields
    {
        field(5000; "Certificate No."; Code[20])
        {
            Caption = 'Certificate No.';
            DataClassification = ToBeClassified;
        }
    }
    trigger OnBeforeInsert()
    var
        Cert: Record "Item Certificate";
        Cert1: Record "Item Certificate Action";
    begin
        if Rec."Certificate No." = '' then
            exit;
        if not Cert.Get(Rec."Certificate No.") then
            Error('Certificate No. %1 does not exist.', Rec."Certificate No.");
        if Cert.Status = Cert.Status::Approved then
            Error('Certificate must be approved before posting');
        if Cert1."Expiration Date" < Today then
            Error('Certificate is expired.');
    end;
}
