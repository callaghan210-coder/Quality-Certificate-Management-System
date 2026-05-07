codeunit 50121 CertWorkflowConstants
{
    procedure SendForApprovalCode(): Code[50]
    begin
        exit('CERT_SEND_FOR_APPROVAL');
    end;

    procedure CancelApprovalCode(): Code[50]
    begin
        exit('CERT_CANCEL_APPROVAL');
    end;
}


