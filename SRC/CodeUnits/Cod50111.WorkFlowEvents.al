// codeunit 50111 WorkFlowEvents
// {
//     local procedure MyWorkFlowEvent()
//     var

//     begin

//     end;

//     [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Event Handling", 'OnAddWorkflowEventsToLibrary', '', true, true)]
//     local procedure AddMyWorkflowEventsToLibrary()
//     var
//         WorkFlowEventHandling: Codeunit "Workflow Event Handling";
//     begin
//         WorkFlowEventHandling.AddEventToLibrary(MyWorkFlowEvent(), Database::"Purchase Header", 'My Workflow Event Description', 0, false, false);
//     end;
// }
