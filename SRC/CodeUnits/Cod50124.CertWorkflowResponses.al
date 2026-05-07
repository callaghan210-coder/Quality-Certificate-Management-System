codeunit 50124 CertWorkflowResponses
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Response Handling", 'OnAddWorkflowResponsesToLibrary', '', false, false)]
    local procedure AddResponsesToLibrary()
    var
        workflowResponseHandling: Codeunit "Workflow Response Handling";
    begin
        workflowResponseHandling.AddResponseToLibrary('CERT_CREATE_APPROVAL', 0, 'Create approval request for certificate', 'GROUP 0');
    end;

}
