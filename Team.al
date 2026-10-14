table 50103 "CDS Team"
{
  ExternalName = 'team';
  TableType = CDS;
  Description = 'Collection of system users that routinely collaborate. Teams can be used to simplify record sharing and provide team members with common access to organization data when team members belong to different Business Units.';

  fields
  {
    field(1; TeamId; GUID)
    {
      ExternalName = 'teamid';
      ExternalType = 'Uniqueidentifier';
      ExternalAccess = Insert;
      Description = 'Unique identifier for the team.';
      Caption = 'Team';
    }
    field(3; OrganizationId; GUID)
    {
      ExternalName = 'organizationid';
      ExternalType = 'Uniqueidentifier';
      ExternalAccess = Read;
      Description = 'Unique identifier of the organization associated with the team.';
      Caption = 'Organization ';
    }
    field(4; BusinessUnitId; GUID)
    {
      ExternalName = 'businessunitid';
      ExternalType = 'Lookup';
      Description = 'Unique identifier of the business unit with which the team is associated.';
      Caption = 'Business Unit';
      TableRelation = "CDS BusinessUnit".BusinessUnitId;
    }
    field(5; Name; Text[160])
    {
      ExternalName = 'name';
      ExternalType = 'String';
      Description = 'Name of the team.';
      Caption = 'Team Name';
    }
    field(6; Description; BLOB)
    {
      ExternalName = 'description';
      ExternalType = 'Memo';
      Description = 'Description of the team.';
      Caption = 'Description';
      Subtype = Memo;
    }
    field(7; EMailAddress; Text[100])
    {
      ExternalName = 'emailaddress';
      ExternalType = 'String';
      Description = 'Email address for the team.';
      Caption = 'Email';
    }
    field(8; CreatedOn; Datetime)
    {
      ExternalName = 'createdon';
      ExternalType = 'DateTime';
      ExternalAccess = Read;
      Description = 'Date and time when the team was created.';
      Caption = 'Created On';
    }
    field(9; ModifiedOn; Datetime)
    {
      ExternalName = 'modifiedon';
      ExternalType = 'DateTime';
      ExternalAccess = Read;
      Description = 'Date and time when the team was last modified.';
      Caption = 'Modified On';
    }
    field(10; CreatedBy; GUID)
    {
      ExternalName = 'createdby';
      ExternalType = 'Lookup';
      ExternalAccess = Read;
      Description = 'Unique identifier of the user who created the team.';
      Caption = 'Created By';
      TableRelation = "CDS SystemUser".SystemUserId;
    }
    field(12; ModifiedBy; GUID)
    {
      ExternalName = 'modifiedby';
      ExternalType = 'Lookup';
      ExternalAccess = Read;
      Description = 'Unique identifier of the user who last modified the team.';
      Caption = 'Modified By';
      TableRelation = "CDS SystemUser".SystemUserId;
    }
    field(14; VersionNumber; BigInteger)
    {
      ExternalName = 'versionnumber';
      ExternalType = 'BigInt';
      ExternalAccess = Read;
      Description = 'Version number of the team.';
      Caption = 'Version number';
    }
    field(15; CreatedByName; Text[100])
    {
      FieldClass = FlowField;
      CalcFormula = lookup("CDS SystemUser".FullName where(SystemUserId=field(CreatedBy)));
      ExternalName = 'createdbyname';
      ExternalType = 'String';
      ExternalAccess = Read;
    }
    field(17; ModifiedByName; Text[100])
    {
      FieldClass = FlowField;
      CalcFormula = lookup("CDS SystemUser".FullName where(SystemUserId=field(ModifiedBy)));
      ExternalName = 'modifiedbyname';
      ExternalType = 'String';
      ExternalAccess = Read;
    }
    field(19; BusinessUnitIdName; Text[100])
    {
      FieldClass = FlowField;
      CalcFormula = lookup("CDS BusinessUnit".Name where(BusinessUnitId=field(BusinessUnitId)));
      ExternalName = 'businessunitidname';
      ExternalType = 'String';
      ExternalAccess = Read;
    }
    field(23; ImportSequenceNumber; Integer)
    {
      ExternalName = 'importsequencenumber';
      ExternalType = 'Integer';
      ExternalAccess = Insert;
      Description = 'Unique identifier of the data import or data migration that created this record.';
      Caption = 'Import Sequence Number';
    }
    field(24; OverriddenCreatedOn; Date)
    {
      ExternalName = 'overriddencreatedon';
      ExternalType = 'DateTime';
      ExternalAccess = Insert;
      Description = 'Date and time that the record was migrated.';
      Caption = 'Record Created On';
    }
    field(27; AdministratorId; GUID)
    {
      ExternalName = 'administratorid';
      ExternalType = 'Lookup';
      Description = 'Unique identifier of the user primary responsible for the team.';
      Caption = 'Administrator';
      TableRelation = "CDS SystemUser".SystemUserId;
    }
    field(28; IsDefault; Boolean)
    {
      ExternalName = 'isdefault';
      ExternalType = 'Boolean';
      ExternalAccess = Read;
      Description = 'Information about whether the team is a default business unit team.';
      Caption = 'Is Default';
    }
    field(31; AdministratorIdName; Text[100])
    {
      FieldClass = FlowField;
      CalcFormula = lookup("CDS SystemUser".FullName where(SystemUserId=field(AdministratorId)));
      ExternalName = 'administratoridname';
      ExternalType = 'String';
      ExternalAccess = Read;
    }
    field(34; YomiName; Text[160])
    {
      ExternalName = 'yominame';
      ExternalType = 'String';
      Description = 'Pronunciation of the full name of the team, written in phonetic hiragana or katakana characters.';
      Caption = 'Yomi Name';
    }
    field(35; CreatedOnBehalfBy; GUID)
    {
      ExternalName = 'createdonbehalfby';
      ExternalType = 'Lookup';
      ExternalAccess = Read;
      Description = 'Unique identifier of the delegate user who created the team.';
      Caption = 'Created By (Delegate)';
      TableRelation = "CDS SystemUser".SystemUserId;
    }
    field(37; CreatedOnBehalfByName; Text[100])
    {
      FieldClass = FlowField;
      CalcFormula = lookup("CDS SystemUser".FullName where(SystemUserId=field(CreatedOnBehalfBy)));
      ExternalName = 'createdonbehalfbyname';
      ExternalType = 'String';
      ExternalAccess = Read;
    }
    field(39; ModifiedOnBehalfBy; GUID)
    {
      ExternalName = 'modifiedonbehalfby';
      ExternalType = 'Lookup';
      ExternalAccess = Read;
      Description = 'Unique identifier of the delegate user who last modified the team.';
      Caption = 'Modified By (Delegate)';
      TableRelation = "CDS SystemUser".SystemUserId;
    }
    field(41; ModifiedOnBehalfByName; Text[100])
    {
      FieldClass = FlowField;
      CalcFormula = lookup("CDS SystemUser".FullName where(SystemUserId=field(ModifiedOnBehalfBy)));
      ExternalName = 'modifiedonbehalfbyname';
      ExternalType = 'String';
      ExternalAccess = Read;
    }
    field(43; TraversedPath; Text[1250])
    {
      ExternalName = 'traversedpath';
      ExternalType = 'String';
      Description = 'For internal use only.';
      Caption = '(Deprecated) Traversed Path';
    }
    field(44; AzureActiveDirectoryObjectId; GUID)
    {
      ExternalName = 'azureactivedirectoryobjectid';
      ExternalType = 'Uniqueidentifier';
      ExternalAccess = Insert;
      Description = 'The object Id for a group.';
      Caption = 'Object Id for a group';
    }
    field(98; TransactionCurrencyId; GUID)
    {
      ExternalName = 'transactioncurrencyid';
      ExternalType = 'Lookup';
      Description = 'Unique identifier of the currency associated with the team.';
      Caption = 'Currency';
      TableRelation = "CDS TransactionCurrency".TransactionCurrencyId;
    }
    field(99; TransactionCurrencyIdName; Text[100])
    {
      FieldClass = FlowField;
      CalcFormula = lookup("CDS TransactionCurrency".CurrencyName where(TransactionCurrencyId=field(TransactionCurrencyId)));
      ExternalName = 'transactioncurrencyidname';
      ExternalType = 'String';
      ExternalAccess = Read;
    }
    field(100; ExchangeRate; Decimal)
    {
      ExternalName = 'exchangerate';
      ExternalType = 'Decimal';
      ExternalAccess = Read;
      Description = 'Exchange rate for the currency associated with the team with respect to the base currency.';
      Caption = 'Exchange Rate';
    }
    field(102; TeamType; Option)
    {
      ExternalName = 'teamtype';
      ExternalType = 'Picklist';
      ExternalAccess = Insert;
      Description = 'Select the team type.';
      Caption = 'Team Type';
      InitValue = Owner;
      OptionMembers = Owner, Access, SecurityGroup, OfficeGroup;
      OptionOrdinalValues = 0, 1, 2, 3;
    }
    field(105; RegardingObjectId; GUID)
    {
      ExternalName = 'regardingobjectid';
      ExternalType = 'Lookup';
      ExternalAccess = Insert;
      Description = 'Choose the record that the team relates to.';
      Caption = 'Regarding Object Id';
    }
    field(106; SystemManaged; Boolean)
    {
      ExternalName = 'systemmanaged';
      ExternalType = 'Boolean';
      ExternalAccess = Read;
      Description = 'Select whether the team will be managed by the system.';
      Caption = 'Is System Managed';
    }
    field(109; StageId; GUID)
    {
      ExternalName = 'stageid';
      ExternalType = 'Uniqueidentifier';
      Description = 'Shows the ID of the stage.';
      Caption = '(Deprecated) Process Stage';
    }
    field(110; ProcessId; GUID)
    {
      ExternalName = 'processid';
      ExternalType = 'Uniqueidentifier';
      Description = 'Shows the ID of the process.';
      Caption = 'Process';
    }
    field(10000; ShareLinkQualifier; Text[1250])
    {
      ExternalName = 'sharelinkqualifier';
      ExternalType = 'String';
      ExternalAccess = Read;
      Description = 'For internal use only.';
      Caption = 'Share Link Qualifier';
    }
    field(10002; IsSasTokenSet; Boolean)
    {
      ExternalName = 'issastokenset';
      ExternalType = 'Boolean';
      ExternalAccess = Read;
    }
    field(10004; MembershipType; Option)
    {
      ExternalName = 'membershiptype';
      ExternalType = 'Picklist';
      ExternalAccess = Insert;
      Caption = 'Membership Type';
      InitValue = MembersAndGuests;
      OptionMembers = MembersAndGuests, Members, Owners, Guests;
      OptionOrdinalValues = 0, 1, 2, 3;
    }
  }
  keys
  {
    key(PK; TeamId)
    {
      Clustered = true;
    }
    key(Name; Name)
    {
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown; Name)
    {
    }
  }
}