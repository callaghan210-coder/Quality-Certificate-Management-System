codeunit 50108 ItemCertAutomation
{
    [EventSubscriber(ObjectType::Table, Database::"Item Certificate", 'OnAfterValidateEvent', 'Last Prolonged Date', false, false)]
    local procedure UpdateExpiryDate(var Rec: Record "Item Certificate"; var xRec: Record "Item Certificate"; CurrFieldNo: Integer)
    begin
        if Rec."Last Prolonged Date" <> 0D then
            Rec."Expiry Date" := CalcDate('<1Y>', Rec."Last Prolonged Date");
    end;
}

