codeunit 50100 "Certificate Action Mgt"
{
    procedure ProcessAction(var ActionRec: Record "Item Certificate Action")
    begin
        ValidateAction(ActionRec);
        UpdateCertificate(ActionRec);
        LogAction(ActionRec);
    end;

    local procedure ValidateAction(var ActionRec: Record "Item Certificate Action")
    begin
        if ActionRec."Action Date" = 0D then
            Error('Action Date cannot be empty.');
        if ActionRec."Action Type" = ActionRec."Action Type"::" " then
            Error('Action Type must be selected.');
    end;

    local procedure UpdateCertificate(var ActionRec: Record "Item Certificate Action")
    var
        cert: Record "Item Certificate";
    begin
        if cert.Get(ActionRec."Certificate No.") then begin
            cert."Last Prolonged Date" := ActionRec."Action Date";
            cert.Modify();
        end;
    end;

    local procedure LogAction(ActionRec: Record "Item Certificate Action")
    begin
        Message('Action %1 processed for certificate %2',
            ActionRec."Action Type",
            ActionRec."Certificate No.");
    end;

}
