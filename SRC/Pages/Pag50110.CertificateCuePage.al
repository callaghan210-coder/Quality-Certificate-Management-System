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
                        Page.Run(Page::"Item Certificate List", CertRec);
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
                        Page.Run(Page::"Item Certificate List", CertRec);
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
                        Page.Run(Page::"Item Certificate List", CertRec);
                    end;
                }
                field("Revoked Certificates"; Rec."Revoked Certificates")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Revoked Certificates field.', Comment = '%';
                    trigger OnDrillDown()
                    var
                        CertAction: Record "Item Certificate Action";
                    begin
                        CertAction.SetRange("Action Type ", CertAction."Action Type "::Revoked);
                        Page.Run(Page::"Actions List", CertAction);
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
        Cert.Reset();
        Cert.SetRange("Action Type ", Cert."Action Type "::Revoked);
        Rec."Revoked Certificates" := Cert.Count();
        if not Rec.Insert() then
            Rec.Modify();
    end;

}
