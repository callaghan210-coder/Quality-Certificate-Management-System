codeunit 50127 CertWorkflowReject
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Approvals Mgmt.", 'OnRejectApprovalRequest', '', false, false)]
    local procedure OnRejectApprovalRequest(var ApprovalEntry: Record "Approval Entry")
    var
        RecRef: RecordRef;
        Cert: Record "Item Certificate";
    begin
        RecRef := ApprovalEntry."Record ID to Approve".GetRecord();

        if RecRef.Number = Database::"Item Certificate" then begin
            RecRef.SetTable(Cert);
            Cert.Status := Cert.Status::Rejected;
            Cert.Modify();
        end;
    end;
}
