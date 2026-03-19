page 50101 "Item Certificate Card"
{
    Caption = 'Item Certificate Card';
    PageType = Card;
    SourceTable = "Item Certificate";
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(FactBoxes)
        {
            part(ItemCertificateFactBox; "Item CertificateFactBox")
            {
                ApplicationArea = All;
                SubPageLink = "No." = field("No.");
                Caption = 'Item Certificate FactBox';
            }
        }
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.', Comment = '%';
                }
                field("CA Code"; Rec."CA Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CA Code field.', Comment = '%';
                }
                field("Item No"; Rec."Item No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item No field.', Comment = '%';
                }
                field("Issued Date"; Rec."Issued Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Issued Date field.', Comment = '%';
                }
                field("Last Prolonged Date"; Rec."Last Prolonged Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Prolonged Date field.', Comment = '%';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.', Comment = '%';
                    Style = Strong;
                    StyleExpr = true;
                }
                field("Approver User Id"; Rec."Approver User Id")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Approver User Id field.', Comment = '%';
                }
            }
            part(ItemListPart; "Item Certificate Action ListPa")
            {
                ApplicationArea = All;
                SubPageLink = "Certificate No." = field("No.");
                Caption = 'Item Certificate Action ListPart';
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Send For Approval")
            {
                Caption = 'Send For Approval';
                ApplicationArea = All;
                Enabled = Rec.Status = Rec.Status::Open;
                trigger OnAction()
                begin
                    Rec.Status := Rec.Status::"Pending Approval";
                    Rec.Modify();
                    Message('Certificate %1 is sent for approval.', Rec."No.");
                end;
            }
            action(Approve)
            {
                Caption = 'Approve';
                ApplicationArea = All;
                Enabled = Rec.Status = Rec.Status::"Pending Approval";
                Visible = (UserId = Rec."Approver User ID");
                trigger OnAction()
                begin
                    if UserId <> Rec."Approver User Id" then
                        Error('Only the assigned approver can approve this certificate.');
                    if Rec.Status <> Rec.Status::"Pending Approval" then
                        Error('Only certificates with status "Pending Approval" can be approved.');
                    Rec.Status := Rec.Status::Approved;
                    Rec.Modify();
                    Message('Certificate %1 is approved.', Rec."No.");
                end;
            }
            action(Reject)
            {
                Caption = 'Reject';
                ApplicationArea = All;
                Enabled = Rec.Status = Rec.Status::"Pending Approval";
                Visible = (UserId = Rec."Approver User ID");
                trigger OnAction()
                begin
                    if UserId <> Rec."Approver User Id" then
                        Error('Only the assigned approver can reject this certificate.');
                    if Rec.Status <> Rec.Status::"Pending Approval" then
                        Error('Only certificates with status "Pending Approval" can be rejected.');
                    Rec.Status := Rec.Status::Rejected;
                    Rec.Modify();
                    Message('Certificate %1 is rejected.', Rec."No.");
                end;
            }
            action(Reopen)
            {
                Caption = 'Reopen';
                ApplicationArea = All;
                Enabled = Rec.Status = Rec.Status::Rejected;
                trigger OnAction()
                begin
                    if Rec.Status <> Rec.Status::Rejected then
                        Error('Only certificates with status "Rejected" can be reopened.');
                    Rec.Status := Rec.Status::Open;
                    Rec.Modify();
                    Message('Certificate %1 is reopened.', Rec."No.");
                end;

            }
        }
    }
}