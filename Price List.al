table 50106 "CDS PriceLevel"
{
  ExternalName = 'pricelevel';
  TableType = CDS;
  Description = 'Entity that defines pricing levels.';

  fields
  {
    field(10000; PriceLevelId; GUID)
    {
      ExternalName = 'pricelevelid';
      ExternalType = 'Uniqueidentifier';
      ExternalAccess = Insert;
      Description = 'Unique identifier of the price list.';
      Caption = 'Price List';
    }
    field(10001; CreatedOn; Datetime)
    {
      ExternalName = 'createdon';
      ExternalType = 'DateTime';
      ExternalAccess = Read;
      Description = 'Date and time when the record was created.';
      Caption = 'Created On';
    }
    field(10002; CreatedBy; GUID)
    {
      ExternalName = 'createdby';
      ExternalType = 'Lookup';
      ExternalAccess = Read;
      Description = 'Unique identifier of the user who created the price list.';
      Caption = 'Created By';
      TableRelation = "CDS SystemUser".SystemUserId;
    }
    field(10003; ModifiedOn; Datetime)
    {
      ExternalName = 'modifiedon';
      ExternalType = 'DateTime';
      ExternalAccess = Read;
      Description = 'Date and time when the record was modified.';
      Caption = 'Modified On';
    }
    field(10004; ModifiedBy; GUID)
    {
      ExternalName = 'modifiedby';
      ExternalType = 'Lookup';
      ExternalAccess = Read;
      Description = 'Unique identifier of the user who last modified the price list.';
      Caption = 'Modified By';
      TableRelation = "CDS SystemUser".SystemUserId;
    }
    field(10005; CreatedOnBehalfBy; GUID)
    {
      ExternalName = 'createdonbehalfby';
      ExternalType = 'Lookup';
      ExternalAccess = Read;
      Description = 'Unique identifier of the delegate user who created the pricelevel.';
      Caption = 'Created By (Delegate)';
      TableRelation = "CDS SystemUser".SystemUserId;
    }
    field(10006; ModifiedOnBehalfBy; GUID)
    {
      ExternalName = 'modifiedonbehalfby';
      ExternalType = 'Lookup';
      ExternalAccess = Read;
      Description = 'Unique identifier of the delegate user who last modified the pricelevel.';
      Caption = 'Modified By (Delegate)';
      TableRelation = "CDS SystemUser".SystemUserId;
    }
    field(10007; CreatedByName; Text[100])
    {
      FieldClass = FlowField;
      CalcFormula = lookup("CDS SystemUser".FullName where(SystemUserId=field(CreatedBy)));
      ExternalName = 'createdbyname';
      ExternalType = 'String';
      ExternalAccess = Read;
    }
    field(10009; CreatedOnBehalfByName; Text[100])
    {
      FieldClass = FlowField;
      CalcFormula = lookup("CDS SystemUser".FullName where(SystemUserId=field(CreatedOnBehalfBy)));
      ExternalName = 'createdonbehalfbyname';
      ExternalType = 'String';
      ExternalAccess = Read;
    }
    field(10011; ModifiedByName; Text[100])
    {
      FieldClass = FlowField;
      CalcFormula = lookup("CDS SystemUser".FullName where(SystemUserId=field(ModifiedBy)));
      ExternalName = 'modifiedbyname';
      ExternalType = 'String';
      ExternalAccess = Read;
    }
    field(10013; ModifiedOnBehalfByName; Text[100])
    {
      FieldClass = FlowField;
      CalcFormula = lookup("CDS SystemUser".FullName where(SystemUserId=field(ModifiedOnBehalfBy)));
      ExternalName = 'modifiedonbehalfbyname';
      ExternalType = 'String';
      ExternalAccess = Read;
    }
    field(10017; VersionNumber; BigInteger)
    {
      ExternalName = 'versionnumber';
      ExternalType = 'BigInt';
      ExternalAccess = Read;
      Description = 'Version Number';
      Caption = 'Version Number';
    }
    field(10018; ImportSequenceNumber; Integer)
    {
      ExternalName = 'importsequencenumber';
      ExternalType = 'Integer';
      ExternalAccess = Insert;
      Description = 'Sequence number of the import that created this record.';
      Caption = 'Import Sequence Number';
    }
    field(10019; OverriddenCreatedOn; Date)
    {
      ExternalName = 'overriddencreatedon';
      ExternalType = 'DateTime';
      ExternalAccess = Insert;
      Description = 'Date and time that the record was migrated.';
      Caption = 'Record Created On';
    }
    field(10020; TimeZoneRuleVersionNumber; Integer)
    {
      ExternalName = 'timezoneruleversionnumber';
      ExternalType = 'Integer';
      Description = 'For internal use only.';
      Caption = 'Time Zone Rule Version Number';
    }
    field(10021; UTCConversionTimeZoneCode; Integer)
    {
      ExternalName = 'utcconversiontimezonecode';
      ExternalType = 'Integer';
      Description = 'Time zone code that was in use when the record was created.';
      Caption = 'UTC Conversion Time Zone Code';
    }
    field(10022; Name; Text[100])
    {
      ExternalName = 'name';
      ExternalType = 'String';
      Description = 'Name of the price list.';
      Caption = 'Name';
    }
    field(10023; BeginDate; Date)
    {
      ExternalName = 'begindate';
      ExternalType = 'DateTime';
      Description = 'Date on which the price list becomes effective.';
      Caption = 'Start Date';
    }
    field(10024; Description; BLOB)
    {
      ExternalName = 'description';
      ExternalType = 'Memo';
      Description = 'Description of the price list.';
      Caption = 'Description';
      Subtype = Memo;
    }
    field(10025; EndDate; Date)
    {
      ExternalName = 'enddate';
      ExternalType = 'DateTime';
      Description = 'Date that is the last day the price list is valid.';
      Caption = 'End Date';
    }
    field(10026; FreightTermsCode; Option)
    {
      ExternalName = 'freighttermscode';
      ExternalType = 'Picklist';
      Description = 'Freight terms for the price list.';
      Caption = 'Freight Terms';
      InitValue = DefaultValue;
      OptionMembers = DefaultValue;
      OptionOrdinalValues = 1;
    }
    field(10028; PaymentMethodCode; Option)
    {
      ExternalName = 'paymentmethodcode';
      ExternalType = 'Picklist';
      Description = 'Payment terms to use with the price list.';
      Caption = 'Payment Method ';
      InitValue = DefaultValue;
      OptionMembers = DefaultValue;
      OptionOrdinalValues = 1;
    }
    field(10030; ShippingMethodCode; Option)
    {
      ExternalName = 'shippingmethodcode';
      ExternalType = 'Picklist';
      Description = 'Method of shipment for products in the price list.';
      Caption = 'Shipping Method';
      InitValue = DefaultValue;
      OptionMembers = DefaultValue;
      OptionOrdinalValues = 1;
    }
    field(10032; StateCode; Option)
    {
      ExternalName = 'statecode';
      ExternalType = 'State';
      ExternalAccess = Modify;
      Description = 'Status of the price list.';
      Caption = 'Status ';
      InitValue = Active;
      OptionMembers = Active, Inactive;
      OptionOrdinalValues = 0, 1;
    }
    field(10034; StatusCode; Option)
    {
      ExternalName = 'statuscode';
      ExternalType = 'Status';
      Description = 'Reason for the status of the price list.';
      Caption = 'Status Reason';
      InitValue = " ";
      OptionMembers = " ", Active, Inactive;
      OptionOrdinalValues = -1, 100001, 100002;
    }
    field(10036; ExchangeRate; Decimal)
    {
      ExternalName = 'exchangerate';
      ExternalType = 'Decimal';
      ExternalAccess = Read;
      Description = 'Shows the conversion rate of the record''s currency. The exchange rate is used to convert all money fields in the record from the local currency to the system''s default currency.';
      Caption = 'Exchange Rate';
    }
    field(10037; TransactionCurrencyId; GUID)
    {
      ExternalName = 'transactioncurrencyid';
      ExternalType = 'Lookup';
      ExternalAccess = Insert;
      Description = 'Unique identifier of the currency associated with the price level.';
      Caption = 'Currency';
      TableRelation = "CDS TransactionCurrency".TransactionCurrencyId;
    }
    field(10038; TransactionCurrencyIdName; Text[100])
    {
      FieldClass = FlowField;
      CalcFormula = lookup("CDS TransactionCurrency".CurrencyName where(TransactionCurrencyId=field(TransactionCurrencyId)));
      ExternalName = 'transactioncurrencyidname';
      ExternalType = 'String';
      ExternalAccess = Read;
    }
  }
  keys
  {
    key(PK; PriceLevelId)
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