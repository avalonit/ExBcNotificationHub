page 70359947 "ALV Messages Page"
{
    PageType = Card;
    SourceTable = "ALV Messages";
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Messages Page';

    layout
    {

        area(content)
        {
            group(General)
            {
                field("Code"; "Code")
                {
                    ApplicationArea = All;
                    Caption = 'Code';
                    NotBlank = true;
                    ShowMandatory = true;
                }

                field(Text; Text)
                {
                    ApplicationArea = All;
                    Caption = 'Text';
                    NotBlank = true;
                    ShowMandatory = true;
                }
                field("Status"; Status)
                {
                    ApplicationArea = All;
                    Caption = 'Status';
                    ShowMandatory = true;
                }


            }
        }


    }
    actions
    {

        area(Processing)
        {


            action("SendPush")
            {
                Caption = 'Send Push Notification';
                Promoted = true;
                PromotedCategory = Process;
                Image = RefreshLines;
                ApplicationArea = All;

                trigger OnAction();
                begin
                    SendPushNotification(Text);
                end;
            }



        }
    }

    procedure SendPushNotification(Text: Text);
    var
    //VRPAPP365FleetTrackerAzBlobMgt: Codeunit VRPAPP365FleetTrackerAzBlobMgt;
    begin
        //VRPAPP365FleetTrackerAzBlobMgt.SyncWithStorage(EquipmentID);
    end;


}