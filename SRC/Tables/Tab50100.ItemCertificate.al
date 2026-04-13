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
            TableRelation = Item."No." where(Type = const(Inventory));

        }
        field(40; "Issued Date"; Date)
        {
            Caption = 'Issued Date';
        }
        field(50; "Last Prolonged Date"; Date)
        {
            Caption = 'Last Prolonged Date';
        }
        field(60; Status; Enum "Item Cert Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'Status';
            Editable = false;
        }
        field(70; "Approver User Id"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = User."User Name";
        }
        field(80; Description; Text[250])
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(pk2; "Item No", "CA Code")
        {
        }
    }

    trigger OnDelete()
    begin
        DeleteAction();
    end;

    trigger OnModify()
    begin
        ModifyAction();
    end;

    procedure ModifyAction()
    var
        certaction: Record "Item Certificate Action";
    begin
        certaction.SetRange("Certificate No.", Rec."No.");
        if Rec.Status = Rec.Status::Open then
            certaction.ModifyAll("Item No.", rec."Item No");
    end;

    procedure DeleteAction()
    var
        certaction: Record "Item Certificate Action";
    begin
        certaction.SetRange("Certificate No.", Rec."No.");
        if Rec.Status = Rec.Status::Open then
            certaction.DeleteAll();
    end;



}
