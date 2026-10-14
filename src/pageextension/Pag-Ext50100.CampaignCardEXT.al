pageextension 50100 CampaignCardEXT extends "Campaign Card"
{
    layout
    {
        addlast(General)
        {
            field(Description2; Rec.Description2)
            {
                ApplicationArea = All;
            }
            field("Option Set Picker"; Rec."Option Set Picker")
            {
                ApplicationArea = All;
            }
            field("Custom Date Field"; Rec."Custom Date Field")
            {
                ApplicationArea = All;
            }
            field("Campaign Category Code"; Rec."Campaign Category Code")
            {
                ApplicationArea = All;
                Caption = 'Campaign Category';
            }
        }
    }
}