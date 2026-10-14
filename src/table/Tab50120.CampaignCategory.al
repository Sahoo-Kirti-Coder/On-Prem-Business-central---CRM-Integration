table 50120 "Campaign Category"
{
    Caption = 'Campaign Category';
    LookupPageId = "Campaign Categories";

    fields
    {
        field(1; Code; Code[20])
        {
        }

        field(2; Description; Text[100])
        {
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }
}