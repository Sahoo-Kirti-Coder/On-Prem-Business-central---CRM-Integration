table 50105 "CDS TransactionCurrency"
{
    ExternalName = 'transactioncurrency';
    TableType = CDS;
    Description = 'Currency in which a financial transaction is carried out.';

    fields
    {
        field(1; StatusCode; Option)
        {
            ExternalName = 'statuscode';
            ExternalType = 'Status';
            Description = 'Reason for the status of the transaction currency.';
            Caption = 'Status Reason';
            InitValue = " ";
            OptionMembers = " ",Active,Inactive;
            OptionOrdinalValues = -1, 1, 2;
        }
        field(2; ModifiedOn; Datetime)
        {
            ExternalName = 'modifiedon';
            ExternalType = 'DateTime';
            ExternalAccess = Read;
            Description = 'Date and time when the transaction currency was last modified.';
            Caption = 'Modified On';
        }
        field(3; StateCode; Option)
        {
            ExternalName = 'statecode';
            ExternalType = 'State';
            ExternalAccess = Modify;
            Description = 'Status of the transaction currency.';
            Caption = 'Status';
            InitValue = Active;
            OptionMembers = Active,Inactive;
            OptionOrdinalValues = 0, 1;
        }
        field(4; VersionNumber; BigInteger)
        {
            ExternalName = 'versionnumber';
            ExternalType = 'BigInt';
            ExternalAccess = Read;
            Description = 'Version number of the transaction currency.';
            Caption = 'Version Number';
        }
        field(5; ModifiedBy; GUID)
        {
            ExternalName = 'modifiedby';
            ExternalType = 'Lookup';
            ExternalAccess = Read;
            Description = 'Unique identifier of the user who last modified the transaction currency.';
            Caption = 'Modified By';
            TableRelation = "CDS SystemUser".SystemUserId;
        }
        field(6; ImportSequenceNumber; Integer)
        {
            ExternalName = 'importsequencenumber';
            ExternalType = 'Integer';
            ExternalAccess = Insert;
            Description = 'Unique identifier of the data import or data migration that created this record.';
            Caption = 'Import Sequence Number';
        }
        field(7; OverriddenCreatedOn; Date)
        {
            ExternalName = 'overriddencreatedon';
            ExternalType = 'DateTime';
            ExternalAccess = Insert;
            Description = 'Date and time that the record was migrated.';
            Caption = 'Record Created On';
        }
        field(8; CreatedOn; Datetime)
        {
            ExternalName = 'createdon';
            ExternalType = 'DateTime';
            ExternalAccess = Read;
            Description = 'Date and time when the transaction currency was created.';
            Caption = 'Created On';
        }
        field(9; TransactionCurrencyId; GUID)
        {
            ExternalName = 'transactioncurrencyid';
            ExternalType = 'Uniqueidentifier';
            ExternalAccess = Insert;
            Description = 'Unique identifier of the transaction currency.';
            Caption = 'Transaction Currency';
        }
        field(10; ExchangeRate; Decimal)
        {
            ExternalName = 'exchangerate';
            ExternalType = 'Decimal';
            Description = 'Exchange rate between the transaction currency and the base currency.';
            Caption = 'Exchange Rate';
        }
        field(12; CurrencySymbol; Text[10])
        {
            ExternalName = 'currencysymbol';
            ExternalType = 'String';
            Description = 'Symbol for the transaction currency.';
            Caption = 'Currency Symbol';
        }
        field(14; CurrencyName; Text[100])
        {
            ExternalName = 'currencyname';
            ExternalType = 'String';
            Description = 'Name of the transaction currency.';
            Caption = 'Currency Name';
        }
        field(15; CreatedBy; GUID)
        {
            ExternalName = 'createdby';
            ExternalType = 'Lookup';
            ExternalAccess = Read;
            Description = 'Unique identifier of the user who created the transaction currency.';
            Caption = 'Created By';
            TableRelation = "CDS SystemUser".SystemUserId;
        }
        field(16; ISOCurrencyCode; Text[5])
        {
            ExternalName = 'isocurrencycode';
            ExternalType = 'String';
            ExternalAccess = Insert;
            Description = 'ISO currency code for the transaction currency.';
            Caption = 'Currency Code';
        }
        field(21; ModifiedByName; Text[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("CDS SystemUser".FullName where(SystemUserId = field(ModifiedBy)));
            ExternalName = 'modifiedbyname';
            ExternalType = 'String';
            ExternalAccess = Read;
        }
        field(22; CreatedByName; Text[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("CDS SystemUser".FullName where(SystemUserId = field(CreatedBy)));
            ExternalName = 'createdbyname';
            ExternalType = 'String';
            ExternalAccess = Read;
        }
        field(26; CurrencyPrecision; Integer)
        {
            ExternalName = 'currencyprecision';
            ExternalType = 'Integer';
            Description = 'Number of decimal places that can be used for currency.';
            Caption = 'Currency Precision';
        }
        field(27; CreatedOnBehalfBy; GUID)
        {
            ExternalName = 'createdonbehalfby';
            ExternalType = 'Lookup';
            ExternalAccess = Read;
            Description = 'Unique identifier of the delegate user who created the transactioncurrency.';
            Caption = 'Created By (Delegate)';
            TableRelation = "CDS SystemUser".SystemUserId;
        }
        field(29; CreatedOnBehalfByName; Text[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("CDS SystemUser".FullName where(SystemUserId = field(CreatedOnBehalfBy)));
            ExternalName = 'createdonbehalfbyname';
            ExternalType = 'String';
            ExternalAccess = Read;
        }
        field(31; ModifiedOnBehalfBy; GUID)
        {
            ExternalName = 'modifiedonbehalfby';
            ExternalType = 'Lookup';
            ExternalAccess = Read;
            Description = 'Unique identifier of the delegate user who last modified the transactioncurrency.';
            Caption = 'Modified By (Delegate)';
            TableRelation = "CDS SystemUser".SystemUserId;
        }
        field(33; ModifiedOnBehalfByName; Text[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("CDS SystemUser".FullName where(SystemUserId = field(ModifiedOnBehalfBy)));
            ExternalName = 'modifiedonbehalfbyname';
            ExternalType = 'String';
            ExternalAccess = Read;
        }
        field(35; EntityImageId; GUID)
        {
            ExternalName = 'entityimageid';
            ExternalType = 'Uniqueidentifier';
            ExternalAccess = Read;
            Description = 'For internal use only.';
            Caption = 'Entity Image Id';
        }
        field(10000; CurrencyType; Option)
        {
            ExternalName = 'currencytype';
            ExternalType = 'Picklist';
            Description = 'Currency type that can be used for new currency.';
            Caption = 'Currency Type';
            InitValue = "System";
            OptionMembers = System,Custom;
            OptionOrdinalValues = 0, 1;
        }
    }
    keys
    {
        key(PK; TransactionCurrencyId)
        {
            Clustered = true;
        }
        key(Name; CurrencyName)
        {
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; CurrencyName)
        {
        }
    }
}