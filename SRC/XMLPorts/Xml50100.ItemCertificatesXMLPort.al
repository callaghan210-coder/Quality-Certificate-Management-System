xmlport 50100 ItemCertificatesXMLPort
{
    Caption = 'ItemCertificatesXMLPort';
    Direction = Import;

    schema
    {
        textelement(Root)
        {
            tableelement(Certificate; "Item Certificate")
            {
                fieldelement("No."; Certificate."No.")
                {
                }
                fieldelement(Description; Certificate.Description)
                {
                }
                fieldelement(status; Certificate.Status)
                {
                }
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
