// codeunit 50111 CertWorkflowEvent
// {
//     [integrationEvent(false, false)]
//     procedure OnAfterCertificateReleased(Cert: Record "Item Certificate")
//     begin

//     end;

//     procedure ReleaseCertificate(var Cert: Record "Item Certificate")
//     begin
//         Cert.Status := Cert.Status::Approved;
//         Cert.Modify();

//         OnAfterCertificateReleased(Cert);
//     end;
// }
