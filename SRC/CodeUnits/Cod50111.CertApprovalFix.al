// codeunit 50111 CertApprovalFix
// {
//     // This fixes the "Salespers./Purch. Code must have a value" error
//     // by providing a dummy value BEFORE base validation runs

//     [EventSubscriber(ObjectType::Codeunit, Codeunit::"Approval Management", 'OnBeforeCreateApprovalRequest', '', true, true)]
//     local procedure FixCertificateApprovalMissingSalesCode(var ApprovalEntry: Record "Approval Entry")
//     begin
//         // Check if this approval is for Item Certificate
//         // Using Source Table ID = Database::"Item Certificate"
//         if ApprovalEntry."Source Table ID" = Database::"Item Certificate" then
//         begin
//             if ApprovalEntry."Salespers./Purchase. Code" = '' then
//                 ApprovalEntry."Salespers./Purchase. Code" := 'CERT_DEFAULT';
//         end;
//     end;

//     // Backup: Catch the specific SalesPers/Purchaser path if the above doesn't fire
//     [EventSubscriber(ObjectType::Codeunit, Codeunit::"Approval Management", 'OnBeforeCreateApprovalRequestForSalesPersPurchaser', '', true, true)]
//     local procedure FixCertificateApprovalOnSpecificPath(var ApprovalEntry: Record "Approval Entry"; var IsHandled: Boolean)
//     begin
//         if ApprovalEntry."Source Table ID" = Database::"Item Certificate" then
//         begin
//             if ApprovalEntry."Salespers./Purchase. Code" = '' then
//             begin
//                 ApprovalEntry."Salespers./Purchase. Code" := 'CERT_DEFAULT';
//                 IsHandled := true;
//             end;
//         end;
//     end;
// }

