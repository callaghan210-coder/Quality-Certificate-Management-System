xmlport 50100 ItemCertificatesXMLPort
{
    Caption = 'ItemCertificatesXMLPort';
    schema
    {
        textelement(RootNodeName)
        {
            tableelement(; "")
            {
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
