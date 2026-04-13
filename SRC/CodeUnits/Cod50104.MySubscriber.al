codeunit 50104 MySubscriber
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::DemoCodeunit, 'OnbeforeDosomething', '', false, false)]
    procedure HandleBeforeDoSomething(cust: Record Customer)
    begin
        Message('This is a message from the subscriber. Customer No: %1', cust."No.");
    end;
}
