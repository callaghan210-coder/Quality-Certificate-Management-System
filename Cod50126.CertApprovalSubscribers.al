codeunit 50126 CertApprovalSubscribers
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Approvals Mgmt.", 'OnApproveApprovalRequest', '', false, false)]
    local procedure OnApproveApprovalRequest(var ApprovalEntry: Record "Approval Entry")
    var
        RecRef: RecordRef;
        Cert: Record "Item Certificate";
    begin
        RecRef := ApprovalEntry."Record ID to Approve".GetRecord();

        if RecRef.Number = Database::"Item Certificate" then begin
            RecRef.SetTable(Cert);
            Cert.Status := Cert.Status::Approved;
            Cert.Modify();
        end;
    end;
}
