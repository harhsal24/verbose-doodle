public enum SearchType
{
    All,
    None,
    
    GlobalType,
    SpecifiedType,
    Product,

    ErrorCode,
    ErrorCategory,
    
    State,
    TitlePlant,
    County,
    Municipality,

    ErrorCodeAndErrorCategory,
    GlobalTypeAndErrorCode,
    GlobalTypeAndErrorCategory,
    SpecifiedTypeAndErrorCode,
    SpecifiedTypeAndErrorCategory,
    ProductAndErrorCode,
    ProductAndErrorCategory,

    StateAndErrorCode,
    StateAndErrorCategory,
    TitlePlantAndErrorCode,
    TitlePlantAndErrorCategory,
    CountyAndErrorCode,
    CountyAndErrorCategory,
    MunicipalityAndErrorCode,
    MunicipalityAndErrorCategory,

    GlobalTypeAndState,
    GlobalTypeAndTitlePlant,
    GlobalTypeAndCounty,
    GlobalTypeAndMunicipality,

    SpecifiedTypeAndState,
    SpecifiedTypeAndTitlePlant,
    SpecifiedTypeAndCounty,
    SpecifiedTypeAndMunicipality,

    ProductAndState,
    ProductAndTitlePlant,
    ProductAndCounty,
    ProductAndMunicipality,

    ErrorCodeAndState,
    ErrorCodeAndTitlePlant,
    ErrorCodeAndCounty,
    ErrorCodeAndMunicipality,

    ErrorCategoryAndState,
    ErrorCategoryAndTitlePlant,
    ErrorCategoryAndCounty,
    ErrorCategoryAndMunicipality,

    GlobalTypeAndStateAndErrorCode,
    GlobalTypeAndStateAndErrorCategory,
    GlobalTypeAndTitlePlantAndErrorCode,
    GlobalTypeAndTitlePlantAndErrorCategory,
    GlobalTypeAndCountyAndErrorCode,
    GlobalTypeAndCountyAndErrorCategory,
    GlobalTypeAndMunicipalityAndErrorCode,
    GlobalTypeAndMunicipalityAndErrorCategory,

    SpecifiedTypeAndStateAndErrorCode,
    SpecifiedTypeAndStateAndErrorCategory,
    SpecifiedTypeAndTitlePlantAndErrorCode,
    SpecifiedTypeAndTitlePlantAndErrorCategory,
    SpecifiedTypeAndCountyAndErrorCode,
    SpecifiedTypeAndCountyAndErrorCategory,
    SpecifiedTypeAndMunicipalityAndErrorCode,
    SpecifiedTypeAndMunicipalityAndErrorCategory,

    ProductAndStateAndErrorCode,
    ProductAndStateAndErrorCategory,
    ProductAndTitlePlantAndErrorCode,
    ProductAndTitlePlantAndErrorCategory,
    ProductAndCountyAndErrorCode,
    ProductAndCountyAndErrorCategory,
    ProductAndMunicipalityAndErrorCode,
    ProductAndMunicipalityAndErrorCategory
}


Dictionary<bool[], SearchType> SearchTypeMap()
    => new(new BooleanArrayEqualityComparer())
    {
        { new[] { true, false, false, false, false, false, false, false, false }, SearchType.GlobalType },
        { new[] { false, true, false, false, false, false, false, false, false }, SearchType.SpecifiedType },
        { new[] { false, false, true, false, false, false, false, false, false }, SearchType.Product },
        { new[] { false, false, false, true, false, false, false, false, false }, SearchType.ErrorCode },
        { new[] { false, false, false, false, true, false, false, false, false }, SearchType.ErrorCategory },
        { new[] { false, false, false, false, false, true, false, false, false }, SearchType.State },
        { new[] { false, false, false, false, false, false, true, false, false }, SearchType.TitlePlant },
        { new[] { false, false, false, false, false, false, false, true, false }, SearchType.County },
        { new[] { false, false, false, false, false, false, false, false, true }, SearchType.Municipality },
        
        { new[] { false, false, false, true, true, false, false, false, false }, SearchType.ErrorCodeAndErrorCategory },
        { new[] { true, false, false, true, false, false, false, false, false }, SearchType.GlobalTypeAndErrorCode },
        { new[] { true, false, false, false, true, false, false, false, false }, SearchType.GlobalTypeAndErrorCategory },
        { new[] { false, true, false, true, false, false, false, false, false }, SearchType.SpecifiedTypeAndErrorCode },
        { new[] { false, true, false, false, true, false, false, false, false }, SearchType.SpecifiedTypeAndErrorCategory },
        { new[] { false, false, true, true, false, false, false, false, false }, SearchType.ProductAndErrorCode },
        { new[] { false, false, true, false, true, false, false, false, false }, SearchType.ProductAndErrorCategory },
        
        { new[] { false, false, false, true, false, true, false, false, false }, SearchType.StateAndErrorCode },
        { new[] { false, false, false, false, true, true, false, false, false }, SearchType.StateAndErrorCategory },
        { new[] { false, false, false, true, false, false, true, false, false }, SearchType.TitlePlantAndErrorCode },
        { new[] { false, false, false, false, true, false, true, false, false }, SearchType.TitlePlantAndErrorCategory },
        { new[] { false, false, false, true, false, false, false, true, false }, SearchType.CountyAndErrorCode },
        { new[] { false, false, false, false, true, false, false, true, false }, SearchType.CountyAndErrorCategory },
        { new[] { false, false, false, true, false, false, false, false, true }, SearchType.MunicipalityAndErrorCode },
        { new[] { false, false, false, false, true, false, false, false, true }, SearchType.MunicipalityAndErrorCategory },
        
        { new[] { true, false, false, false, false, true, false, false, false }, SearchType.GlobalTypeAndState },
        { new[] { true, false, false, false, false, false, true, false, false }, SearchType.GlobalTypeAndTitlePlant },
        { new[] { true, false, false, false, false, false, false, true, false }, SearchType.GlobalTypeAndCounty },
        { new[] { true, false, false, false, false, false, false, false, true }, SearchType.GlobalTypeAndMunicipality },
        
        { new[] { false, true, false, false, false, true, false, false, false }, SearchType.SpecifiedTypeAndState },
        { new[] { false, true, false, false, false, false, true, false, false }, SearchType.SpecifiedTypeAndTitlePlant },
        { new[] { false, true, false, false, false, false, false, true, false }, SearchType.SpecifiedTypeAndCounty },
        { new[] { false, true, false, false, false, false, false, false, true }, SearchType.SpecifiedTypeAndMunicipality },
        
        { new[] { false, false, true, false, false, true, false, false, false }, SearchType.ProductAndState },
        { new[] { false, false, true, false, false, false, true, false, false }, SearchType.ProductAndTitlePlant },
        { new[] { false, false, true, false, false, false, false, true, false }, SearchType.ProductAndCounty },
        { new[] { false, false, true, false, false, false, false, false, true }, SearchType.ProductAndMunicipality },
        
        { new[] { false, false, false, true, false, true, false, false, false }, SearchType.ErrorCodeAndState },
        { new[] { false, false, false, true, false, false, true, false, false }, SearchType.ErrorCodeAndTitlePlant },
        { new[] { false, false, false, true, false, false, false, true, false }, SearchType.ErrorCodeAndCounty },
        { new[] { false, false, false, true, false, false, false, false, true }, SearchType.ErrorCodeAndMunicipality },
        
        { new[] { false, false, false, false, true, true, false, false, false }, SearchType.ErrorCategoryAndState },
        { new[] { false, false, false, false, true, false, true, false, false }, SearchType.ErrorCategoryAndTitlePlant },
        { new[] { false, false, false, false, true, false, false, true, false }, SearchType.ErrorCategoryAndCounty },
        { new[] { false, false, false, false, true, false, false, false, true }, SearchType.ErrorCategoryAndMunicipality },
        
        { new[] { true, false, false, true, false, true, false, false, false }, SearchType.GlobalTypeAndStateAndErrorCode },
        { new[] { true, false, false, false, true, true, false, false, false }, SearchType.GlobalTypeAndStateAndErrorCategory },
        { new[] { true, false, false, true, false, false, true, false, false }, SearchType.GlobalTypeAndTitlePlantAndErrorCode },
        { new[] { true, false, false, false, true, false, true, false, false }, SearchType.GlobalTypeAndTitlePlantAndErrorCategory },
        { new[] { true, false, false, true, false, false, false, true, false }, SearchType.GlobalTypeAndCountyAndErrorCode },
        { new[] { true, false, false, false, true, false, false, true, false }, SearchType.GlobalTypeAndCountyAndErrorCategory },
        { new[] { true, false, false, true, false, false, false, false, true }, SearchType.GlobalTypeAndMunicipalityAndErrorCode },
        { new[] { true, false, false, false, true, false, false, false, true }, SearchType.GlobalTypeAndMunicipalityAndErrorCategory },
        
        { new[] { false, true, false, true, false, true, false, false, false }, SearchType.SpecifiedTypeAndStateAndErrorCode },
        { new[] { false, true, false, false, true, true, false, false, false }, SearchType.SpecifiedTypeAndStateAndErrorCategory },
        { new[] { false, true, false, true, false, false, true, false, false }, SearchType.SpecifiedTypeAndTitlePlantAndErrorCode },
        { new[] { false, true, false, false, true, false, true, false, false }, SearchType.SpecifiedTypeAndTitlePlantAndErrorCategory },
        { new[] { false, true, false, true, false, false, false, true, false }, SearchType.SpecifiedTypeAndCountyAndErrorCode },
        { new[] { false, true, false, false, true, false, false, true, false }, SearchType.SpecifiedTypeAndCountyAndErrorCategory },
        { new[] { false, true, false, true, false, false, false, false, true }, SearchType.SpecifiedTypeAndMunicipalityAndErrorCode },
        { new[] { false, true, false, false, true, false, false, false, true }, SearchType.SpecifiedTypeAndMunicipalityAndErrorCategory },
        
        { new[] { false, false, true, true, false, true, false, false, false }, SearchType.ProductAndStateAndErrorCode },
        { new[] { false, false, true, false, true, true, false, false, false }, SearchType.ProductAndStateAndErrorCategory },
        { new[] { false, false, true, true, false, false, true, false, false }, SearchType.ProductAndTitlePlantAndErrorCode },
        { new[] { false, false, true, false, true, false, true, false, false }, SearchType.ProductAndTitlePlantAndErrorCategory },
        { new[] { false, false, true, true, false, false, false, true, false }, SearchType.ProductAndCountyAndErrorCode },
        { new[] { false, false, true, false, true, false, false, true, false }, SearchType.ProductAndCountyAndErrorCategory },
        { new[] { false, false, true, true, false, false, false, false, true }, SearchType.ProductAndMunicipalityAndErrorCode },
        { new[] { false, false, true, false, true, false, false, false, true }, SearchType.ProductAndMunicipalityAndErrorCategory },
        
        { new[] { false, false, false, false, false, false, false, false, false }, SearchType.None },
        { new[] { true, true, true, true, true, true, true, true, true }, SearchType.All }
    };
