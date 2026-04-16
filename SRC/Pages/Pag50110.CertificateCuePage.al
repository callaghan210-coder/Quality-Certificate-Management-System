page 50110 "Certificate Cue Page"
{
    Caption = 'Certificate Cue Page';
    PageType = CardPart;
    SourceTable = "Certificate Cue";

    layout
    {
        area(Content)
        {
            cuegroup(Certificates)
            {
                Caption = 'Certificates';

                field("Expired Certificates"; Rec."Expired Certificates")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Expired Certificates field.', Comment = '%';
                    DrillDown = true;
                    trigger OnDrillDown()
                    var
                        CertRec: Record "Item Certificate Action";
                    begin
                        CertRec.SetFilter("Expiration Date", '<=%1', Today());
                        Page.Run(Page::"Actions List", CertRec);
                    end;
                }
                field("Expiring soon"; Rec."Expiring soon")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Expiring soon field.', Comment = '%';
                    trigger OnDrillDown()
                    var
                        CertRec: Record "Item Certificate Action";
                    begin
                        CertRec.SetFilter("Expiration Date", '%1..%2', Today(), Today() + 30);
                        Page.Run(Page::"Actions List", CertRec);
                    end;
                }
                field("Active Certificates"; Rec."Active Certificates")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Active Certificates field.', Comment = '%';
                    trigger OnDrillDown()
                    var
                        CertRec: Record "Item Certificate Action";
                    begin
                        CertRec.SetFilter("Expiration Date", '>%1', Today());
                        Page.Run(Page::"Actions List", CertRec);
                    end;
                }
                field("Rejected Certificates"; Rec."Rejected Certificates")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Rejected Certificates field.', Comment = '%';
                    trigger OnDrillDown()
                    var
                        CertRecord: Record "Item Certificate";
                    begin
                        CertRecord.SetRange(Status, CertRecord.Status::Rejected);
                        Page.Run(Page::"Item Certificate List", CertRecord);
                    end;
                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        LoadData();
    end;

    local procedure LoadData()
    var
        Cert: Record "Item Certificate Action";
        CertRecord: Record "Item Certificate";
    begin
        Rec.Init();
        Rec."Primary Key" := '1';
        // Expired
        Cert.SetFilter("Expiration Date", '<=%1', Today());
        Rec."Expired Certificates" := Cert.Count();
        // Expiring soon
        Cert.Reset();
        Cert.SetFilter("Expiration Date", '%1..%2', Today(), Today() + 30);
        Rec."Expiring soon" := Cert.Count();
        // Active
        Cert.Reset();
        Cert.SetFilter("Expiration Date", '>%1', Today());
        Rec."Active Certificates" := Cert.Count();
        // Revoked
        CertRecord.Reset();
        CertRecord.SetRange(Status, CertRecord.Status::Rejected);
        Rec."Rejected Certificates" := CertRecord.Count();
        if not Rec.Insert() then
            Rec.Modify();
    end;

}
