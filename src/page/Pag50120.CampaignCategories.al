page 50120 "Campaign Categories"
{
    PageType = List;
    SourceTable = "Campaign Category";
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Campaign Categories';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}