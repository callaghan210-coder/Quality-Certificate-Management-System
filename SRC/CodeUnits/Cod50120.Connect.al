// codeunit 50120 Connect
// {
//     [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Response Handling", 'OnAddWorkflowResponsePredecessorsToLibrary', '', false, false)]
//     procedure LinkEventResponse(ResponseFunctionName: Code[128])
//     var
//         WorkflowResponseHandling: Codeunit "Workflow Response Handling";
//     begin
//         if ResponseFunctionName = 'CERT_NOTIFY' then
//             WorkflowResponseHandling.AddResponsePredecessor('CERT_NOTIFY', 'CERT_RELEASED');
//     end;
// }
