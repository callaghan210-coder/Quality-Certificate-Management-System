codeunit 50107 ItemCertificateSubscriber
{
    [EventSubscriber(ObjectType::Table, Database::"Item Certificate", 'OnAfterInsertEvent', '', false, false)]
    local Procedure OnAfterInsertItemCertificate(var Rec: Record "Item Certificate")
    begin
        Message('Item Certificate Created: %1', Rec."No.");
    end;
}
