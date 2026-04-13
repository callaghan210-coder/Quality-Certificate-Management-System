codeunit 50106 MyEVSubs
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::MyEvent, 'OnMyEvent', '', false, false)]
    procedure HandleMyEvent(itemCertAction: Record "Item Certificate Action")
    begin
        Message('This is a message from the subscriber. Item No: %1', itemCertAction."Item No.");
    end;
}
