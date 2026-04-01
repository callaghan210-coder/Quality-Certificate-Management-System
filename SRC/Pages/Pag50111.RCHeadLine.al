page 50111 RCHeadLine
{
    Caption = 'RCHeadLine';
    PageType = HeadlinePart;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(Group)
            {
                field(MyHeadline; MyHeadLineText)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    var
        MyHeadLineText: Text[100];

    trigger OnOpenPage()
    begin
        MyHeadLineText := GetHeadlneText();
    end;

    local procedure GetHeadlneText(): Text[100]
    begin
        exit('Welcome to Quality Certificate Management System, Good day!');
    end;
}
