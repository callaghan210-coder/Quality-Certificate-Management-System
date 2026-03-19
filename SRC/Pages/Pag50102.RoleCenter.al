// page 50102 "Role Center"
// {
//     Caption = 'Role Center';
//     PageType = RoleCenter;
//     UsageCategory = Administration;
//     ApplicationArea = All;

//     layout
//     {
//         area(RoleCenter)
//         {
//             group(Administrator)
//             {
//                 Caption = 'Administrator';

//                 part("Certificate Activities"; "Item CertificateFactBox")
//                 {
//                     ApplicationArea = All;
//                 }
//                 part("Item Certificates"; "Item Certificate ListPart")
//                 {
//                     ApplicationArea = All;
//                 }
//             }
//         }
//     }
//     actions
//     {
//         area(Creation)
//         {
//             action("Certificate Actions")
//             {
//                 RunObject = Page "Actions List";
//             }

//         }
//         area(Sections)
//         {
//             group(Setup)
//             {
//                 Caption = 'Setup';

//                 action("Certificate Authorities")
//                 {
//                     ApplicationArea = All;
//                     Image = PersonInCharge;
//                     RunObject = Page "Item CA List";
//                 }
//             }
//         }
//     }
//     //     area(RoleCenter)
//     //     {
//     //         part("Certificate Activities"; "Item CertificateFactBox")
//     //         {
//     //             ApplicationArea = All;
//     //         }
//     //         part("Item Certificates"; "Item Certificate ListPart")
//     //         {
//     //             ApplicationArea = All;
//     //         }

//     //     }
//     // }
//     // actions
//     // {
//     //     area(Processing)
//     //     {
//     //         action("Open Item Certificates")
//     //         {
//     //             ApplicationArea = All;
//     //             Image = View;
//     //             RunObject = Page "Item Certificate List";
//     //         }
//     //         action("New Item Certificate")
//     //         {
//     //             ApplicationArea = All;
//     //             Image = New;
//     //             RunObject = Page "Item Certificate Card";
//     //         }
//     //         action("Certificate Authorities")
//     //         {
//     //             ApplicationArea = All;
//     //             Image = PersonInCharge;
//     //             RunObject = Page "Item CA List";
//     //         }
//     //         action("Certificate Actions")
//     //         {
//     //             ApplicationArea = All;
//     //             Image = List;
//     //             RunObject = Page "Actions List";
//     //         }
//     //     }

// }
