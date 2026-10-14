tableextension 50100 CampaignEXT extends Campaign
{
    fields
    {
        field(10000; Description2; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(10001; "Option Set Picker"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ",TEST1,TEST2,TEST3,TEST4;
        }
        field(10002; "Custom Date Field"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(10003; "Campaign Category Code"; Code[20])
        {
            Caption = 'Campaign Category';
            TableRelation = "Campaign Category".Code;

            trigger OnValidate()
            var
                CDSCampaignCategory: Record "CDS agt_CampaignCategory";
            begin
                Clear("Campaign Category Id");

                if "Campaign Category Code" = '' then
                    exit;

                CDSCampaignCategory.SetRange(
                    agt_Code,
                    "Campaign Category Code");

                if CDSCampaignCategory.FindFirst() then
                    "Campaign Category Id" :=
                        CDSCampaignCategory.agt_CampaignCategoryId;
            end;
        }

        field(10004; "Campaign Category Id"; Guid)
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            var
                CDSCampaignCategory: Record "CDS agt_CampaignCategory";
            begin
                if IsNullGuid("Campaign Category Id") then begin
                    "Campaign Category Code" := '';
                    exit;
                end;

                if CDSCampaignCategory.Get("Campaign Category Id") then
                    Validate(
                        "Campaign Category Code",
                        CopyStr(
                            CDSCampaignCategory.agt_Code,
                            1,
                            MaxStrLen("Campaign Category Code")));
            end;
        }
    }
}