page 70359948 "ALV Messages List"
{
    PageType = List;
    SourceTable = "ALV Messages";
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Messages List';

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Code; Code)
                {
                    ApplicationArea = All;
                    Caption = 'Code';
                }
                field(Text; Text)
                {
                    ApplicationArea = All;
                    Caption = 'Text';
                }
                field("Status"; Status)
                {
                    ApplicationArea = All;
                    Caption = 'Status';
                }



            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action("Send a push notification")
            {
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Message('Hello World');
                end;
            }

        }

        area(Creation)
        {
            action("New Message")
            {
                ApplicationArea = All;
                RunObject = page "ALV Messages Page";
                Image = "1099Form";
            }
        }


        area(Navigation)
        {
            action("Edit Message")
            {
                ApplicationArea = All;
                RunObject = page "ALV Messages Page";
            }
        }


    }


}