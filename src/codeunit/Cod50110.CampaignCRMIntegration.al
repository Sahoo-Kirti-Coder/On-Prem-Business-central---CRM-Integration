codeunit 50110 "Campaign CRM Integration"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"CDS Setup Defaults", 'OnAfterResetConfiguration', '', true, true)]
    local procedure OnAfterResetConfiguration(CDSConnectionSetup: Record "CDS Connection Setup")
    var
        IntegrationTableMapping: Record "Integration Table Mapping";
        IntegrationFieldMapping: Record "Integration Field Mapping";
        CDSCampaign: Record "CDS Campaign";
        Campaign: Record Campaign;
    begin
        IntegrationFieldMapping.SetRange(
            "Integration Table Mapping Name",
            'CAMPAIGN');
        IntegrationFieldMapping.DeleteAll();

        IntegrationFieldMapping.CreateRecord(
            'CAMPAIGN',
            Campaign.FieldNo("No."),
            CDSCampaign.FieldNo(CodeName),
            IntegrationFieldMapping.Direction::Bidirectional,
            '',
            true,
            false);

        IntegrationFieldMapping.CreateRecord(
            'CAMPAIGN',
            Campaign.FieldNo(Description),
            CDSCampaign.FieldNo(Name),
            IntegrationFieldMapping.Direction::Bidirectional,
            '',
            true,
            false);

        IntegrationFieldMapping.CreateRecord(
            'CAMPAIGN',
            Campaign.FieldNo("Campaign Category Id"),
            CDSCampaign.FieldNo(agt_agt_campaigncategory),
            IntegrationFieldMapping.Direction::Bidirectional,
            '',
            true,
            false
        );

        IntegrationFieldMapping.CreateRecord(
            'CAMPAIGN',
            Campaign.FieldNo(Description2),
            CDSCampaign.FieldNo(cr02e_Description2),
            IntegrationFieldMapping.Direction::Bidirectional,
            '',
            true,
            false
        );

        IntegrationFieldMapping.CreateRecord(
            'CAMPAIGN',
            Campaign.FieldNo("Option Set Picker"),
            CDSCampaign.FieldNo(agt_OptionSetPicker),
            IntegrationFieldMapping.Direction::ToIntegrationTable,
            '',
            true,
            false
        );

        IntegrationFieldMapping.CreateRecord(
            'CAMPAIGN',
            Campaign.FieldNo("Custom Date Field"),
            CDSCampaign.FieldNo(agt_CustomDateField),
            IntegrationFieldMapping.Direction::Bidirectional,
            '',
            true,
            false
        );

        IntegrationFieldMapping.CreateRecord(
            'CAMPAIGN',
            Campaign.FieldNo("Starting Date"),
            CDSCampaign.FieldNo(ProposedStart),
            IntegrationFieldMapping.Direction::Bidirectional,
            '',
            true,
            false);

        IntegrationFieldMapping.CreateRecord(
            'CAMPAIGN',
            Campaign.FieldNo("Ending Date"),
            CDSCampaign.FieldNo(ProposedEnd),
            IntegrationFieldMapping.Direction::Bidirectional,
            '',
            true,
            false);
    end;
}