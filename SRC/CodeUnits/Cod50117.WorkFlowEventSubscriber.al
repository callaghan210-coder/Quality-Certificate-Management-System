// codeunit 50117 WorkFlowEventSubscriber
// {
//     [EventSubscriber(ObjectType::Codeunit, Codeunit::"CertWorkflowEvent", 'OnAfterCertificateReleased', '', true, true)]
//     local procedure RunWorkflow(Cert: Record "Item Certificate")
//     var
//         WorkflowManagement: Codeunit "Workflow Management";
//     begin
//         WorkflowManagement.HandleEvent('Certificate Released', Cert);
//     end;
// }
