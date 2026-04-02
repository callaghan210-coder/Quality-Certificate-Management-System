page 50112 "Item Certificate API"
{
    APIGroup = 'apiGroup';
    APIPublisher = 'publisherName';
    APIVersion = 'v1.0';
    Caption = 'itemCertificateAPI';
    DelayedInsert = true;
    EntityName = 'entityName';
    EntitySetName = 'entitySetName';
    PageType = API;
    SourceTable = "Item Certificate";

    layout
    {
        area(Content)
        {
            field("No"; Rec."No.")
            {
            }
            field(Description; Rec.Description)
            {
            }
            field(Status; Rec.Status)
            {
            }

        }
    }
}
