page 50109 "Role Center Page"
{
    Caption = 'Role Center Page';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            part(Headline; "RCHeadLine")
            {
                ApplicationArea = All;
            }
            part(CertificateCue; "Certificate Cue Page")
            {
                ApplicationArea = All;
            }
            part(ItemCertificates; "Item Certificate ListPart")
            {
                ApplicationArea = All;
            }
            part(CertificateActivities; "Item CertificateFactBox")
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
                    ApplicationArea = All;
                }
                action("Certificate Authorities")
                {
                    RunObject = Page "Item CA List";
                    ApplicationArea = All;
                }
                action("Certificate Actions")
                {
                    RunObject = Page "Actions List";
                    ApplicationArea = All;
                }
                action("Certificate Change Log")
                {
                    RunObject = Page "CertificateChangeLog";
                    ApplicationArea = All;
                }

            }
        }
        area(Creation)
        {
            action("New Item Certificate")
            {
                ApplicationArea = All;
                RunObject = Page "Item Certificate Card";
                //RunPageMode = Create;
            }
            // action("Validate Certificates")
            // {
            //     RunObject = page "Item Certificate ListPart";
            //     ApplicationArea = All;
            // }
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
