codeunit 50105 MyEvent
{
    procedure RunMyEvent()
    var
        itemCertAction: Record "Item Certificate Action";
    begin
        itemCertAction.FindFirst();
        OnMyEvent(itemCertAction);
    end;

    [IntegrationEvent(false, false)]
    procedure OnMyEvent(itemCertAction: Record "Item Certificate Action")
    begin
    end;

}
