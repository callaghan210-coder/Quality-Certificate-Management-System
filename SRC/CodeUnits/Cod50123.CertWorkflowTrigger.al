codeunit 50123 CertWorkflowTrigger
{
    procedure SendForApproval(var Cert: Record "Item Certificate")
    var
        WorkflowMgt: Codeunit "Workflow Management";
        const: Codeunit "CertWorkflowConstants";
    begin
        if not WorkflowMgt.CanExecuteWorkflow(Cert, const.SendForApprovalCode()) then
            Error('No active approval workflow for this certificate');
        WorkflowMgt.HandleEvent(const.SendForApprovalCode(), Cert);

    end;

    procedure CancelApproval(var Cert: Record "Item Certificate")
    var
        WorkflowMgt: Codeunit "Workflow Management";
        const: Codeunit "CertWorkflowConstants";
    begin
        WorkflowMgt.HandleEvent(const.CancelApprovalCode(), Cert);
    end;
}
