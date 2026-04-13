codeunit 50103 DemoCodeunit
{
    procedure RunDemo()
    var
        cust: Record Customer;
    begin
        cust.FindFirst();
        OnbeforeDosomething(cust);
        Message('Customer Name: %1', cust.Name);
    end;

    [IntegrationEvent(false, false)]
    procedure OnbeforeDosomething(cust: Record Customer)
    begin
    end;
}
