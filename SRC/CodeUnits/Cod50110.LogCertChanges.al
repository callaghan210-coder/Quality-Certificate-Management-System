codeunit 50110 LogCertChanges
{
    [EventSubscriber(ObjectType::Table, Database::"Item Certificate", 'OnAfterModifyEvent', '', false, false)]
    local procedure LogCertificateChanges(var Rec: Record "Item Certificate"; var xRec: Record "Item Certificate")
    var
        changeLog: Record "CertificateChangeLog";
    begin
        changeLog."Certificate No." := Rec."No.";
        changeLog."Changed By" := UserId();
        changeLog."Date Time" := CurrentDateTime();
        changeLog."Old Status" := xRec.Status;
        changeLog."New Status" := Rec.Status;
        changeLog.Insert();
    end;
}
