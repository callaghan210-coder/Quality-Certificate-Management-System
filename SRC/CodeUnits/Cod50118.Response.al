// codeunit 50118 Response
// {
//     procedure CertificateNotifyResponseCode(): Code[128]
//     begin
//         exit('CERT_NOTIFY');
//     end;

//     [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Response Handling", 'OnAddWorkflowResponsesToLibrary', '', true, true)]
//     procedure AddResponsesToLibrary()
//     var
//         WorkflowResponseHandling: Codeunit "Workflow Response Handling";
//     begin
//         WorkflowResponseHandling.AddResponseToLibrary(
//         CertificateNotifyResponseCode(),
//         Database::"Item Certificate",
//         'Send certificate notification',
//         'GROUP 0'
//     );
//     end;
// }
