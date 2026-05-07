// codeunit 50116 MyWorkflowEvents
// {
//     procedure MyWorkFlowEventCode(): code[128]
//     begin
//         exit('Certificate Approved');
//     end;

//     [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Event Handling", 'OnAddWorkflowEventsToLibrary', '', true, true)]
//     procedure AddEventsToLibrary()
//     var
//         WorkflowEventHandling: Codeunit "Workflow Event Handling";
//     begin
//         WorkflowEventHandling.AddEventToLibrary('When a certificate is Approved', Database::"Item Certificate", 'When a certificate is released', 0, false);
//     end;
// }
