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
}
