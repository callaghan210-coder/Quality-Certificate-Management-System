// codeunit 50119 "Respopnse Logic"
// {
//     procedure ExecuteResponse(Cert: Record "Item Certificate")
//     begin
//         Message('Certificate %1 released!', Cert."No.");
//     end;

//     [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Response Handling", 'OnExecuteWorkflowResponse', '', true, true)]
//     procedure HandleResponse(ResponseWorkflowStepInstance: Record "Workflow Step Instance"; var ResponseExecuted: Boolean; var Variant: Variant)
//     var
//         WorkflowResponse: Record "Workflow Response";
//     begin
//         if WorkflowResponse.Get(ResponseWorkflowStepInstance."Function Name") then
//             case WorkflowResponse."Function Name" of
//                 'CERT_NOTIFY':
//                     begin
//                         ExecuteResponse(Variant);
//                         ResponseExecuted := true;
//                     end;
//             end;
//     end;
// }
