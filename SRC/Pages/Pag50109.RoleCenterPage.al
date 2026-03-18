page 50109 "Role Center Page"
{
    Caption = 'Role Center Page';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            part(Headline; "Headline RC Business Manager")
            {
                ApplicationArea = All;
            }
            part(CertificateActivities; "Item CertificateFactBox")
            {
                ApplicationArea = All;
            }
            part(ItemCertificates; "Item Certificate ListPart")
            {
                ApplicationArea = All;
            }
            part("Item Certificate FactBox"; "Item CertificateFactBox")
            {
                ApplicationArea = All;

            }
        }
    }
    actions
    {
        area(Sections)
        {
            group(Certificates)
            {
                action("Certificate List")
                {
                    RunObject = Page "Item Certificate List";
                }
                action("Certificate Authorities")
                {
                    RunObject = Page "Item CA List";
                }
                action("Certificate Actions")
                {
                    RunObject = Page "Actions List";
                }

            }
        }
        area(Creation)
        {
            action("New Item Certificate")
            {
                RunObject = Page "Item Certificate Card";
                RunPageMode = Create;
            }
            action("Validate Certificates")
            {
                RunObject = page "Item Certificate ListPart";
            }
        }
        area(Processing)
        {

        }
        area(Reporting)
        {

        }
        area(Embedding)
        {

        }
    }
}
