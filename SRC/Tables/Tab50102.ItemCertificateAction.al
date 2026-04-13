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
        field(30; "Action Type"; Enum ActionTypeEnum)
        {
            Caption = 'Action Type';

        }

        field(40; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
            trigger OnValidate()
            begin
                if "Expiration Date" < "Action Date" then
                    Error('Expiration Date cannot be earlier than Action Date.');
            end;
        }
        field(50; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = "Item"."No.";
        }
        field(60; "Issued Certificates"; Date)
        {
            Caption = 'Issued Certificates';
            FieldClass = FlowField;
            CalcFormula = lookup("Item Certificate Action"."Action Date" where("Action Type" = const(Issued)));
        }
        field(70; "Latest Prolonged Certificates"; Date)
        {
            Caption = 'Latest Prolonged Certificates';
            FieldClass = FlowField;
            CalcFormula = max("Item Certificate Action"."Action Date" where("Action Type" = const(Prolonged)));
        }
    }
    keys
    {
        key(PK; "Certificate No.", "Action Date")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    begin
        NotblankAction();
        ItemValidate();
    end;

    procedure NotblankAction();
    begin
        // if "Action Date" = 0D then
        //     Error('Action Date cannot be blank.');
        // if "Expiration Date" = 0D then
        //     Error('Expiration Date cannot be blank.');
        // if "Action Type" = " " then
        //     Error('Action Type cannot be blank.');
        TestField("Action Date");
        TestField("Action Type");
        if "Action Type" <> "Action Type"::Revoked then
            TestField("Expiration Date");
    end;

    procedure ItemValidate()
    var
        ItemRec: Record Item;
    begin
        // if ItemRec.Get("Item No.") then
        //     Validate("Item No.");
        // if not ItemRec.Get("Item No.") then
        //     Error('Item No. %1 does not exist.', "Item No.");
    end;

}
