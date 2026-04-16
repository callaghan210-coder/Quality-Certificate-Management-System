codeunit 50109 "Prevent Delete"
{
    [EventSubscriber(ObjectType::Table, Database::"Item Certificate", 'OnBeforeDeleteEvent', '', false, false)]
    local procedure PreventDeleteItemCertificate(var Rec: Record "Item Certificate"; RunTrigger: Boolean)
    begin
        if Rec.Status <> Rec.Status::Open then
            Error('Only item certificates with status "Open" can be deleted.');
    end;
}
