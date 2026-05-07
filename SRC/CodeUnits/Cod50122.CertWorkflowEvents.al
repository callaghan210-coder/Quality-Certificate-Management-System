codeunit 50122 CertWorkflowEvents
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Event Handling", 'OnAddWorkflowEventsToLibrary', '', false, false)]
    local procedure AddWorkflowEventsToLibrary()
    var
        workflowEventHandling: Codeunit "Workflow Event Handling";
        const: Codeunit "CertWorkflowConstants";
    begin
        workflowEventHandling.AddEventToLibrary(const.SendForApprovalCode(), Database::"Item Certificate", 'Certificate Approval Requested', 0, false);
        workflowEventHandling.AddEventToLibrary(const.CancelApprovalCode(), Database::"Item Certificate", 'Certificate Approval cancelled', 0, false);
    end;
}
