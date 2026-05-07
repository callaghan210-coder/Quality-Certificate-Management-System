codeunit 50125 CertResponseExecution
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Response Handling", 'OnExecuteWorkflowResponse', '', false, false)]
    local procedure OnExecuteWorkflowResponse(
    ResponseWorkflowStepInstance: Record "Workflow Step Instance";
    var ResponseExecuted: Boolean;
    var Variant: Variant;
    xVariant: Variant)
    var
        RecRef: RecordRef;
        Cert: Record "Item Certificate";
        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
    begin
        // Convert Variant → RecordRef
        RecRef.GetTable(Variant);

        if RecRef.Number <> Database::"Item Certificate" then
            exit;

        RecRef.SetTable(Cert);

        // Create approval request
        ApprovalsMgmt.CreateApprovalRequests(RecRef, ResponseWorkflowStepInstance);

        ResponseExecuted := true;
    end;
}
