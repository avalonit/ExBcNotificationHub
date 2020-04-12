table 70359962 "ALV Messages"
{
    caption = 'Messages';
    DataPerCompany = true;
    DataClassification = CustomerContent;
    LookupPageId = "ALV Messages List";
    DrillDownPageId = "ALV Messages Page";

    fields
    {
        field(1; Code; Code[50])
        {
            Description = 'Code';
            DataClassification = CustomerContent;
        }

        field(2; Status; enum "ALV Message Status")
        {
            Description = 'Message Status';
            DataClassification = CustomerContent;
        }

        field(3; "Text"; Text[30])
        {
            Description = 'Text';
            DataClassification = CustomerContent;
        }



    }
    keys
    {
        key(PrimaryKey; Code)
        {
            Clustered = TRUE;
        }
    }



}