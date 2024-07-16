public enum OrderErrosSearchType
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


Dictionary<bool[], OrderErrosSearchType> OrderErrosSearchTypeMap()
    => new(new BooleanArrayEqualityComparer())
    {
        { new[] { true, false, false, false, false, false, false, false, false }, OrderErrosSearchType.GlobalType },
        { new[] { false, true, false, false, false, false, false, false, false }, OrderErrosSearchType.SpecifiedType },
        { new[] { false, false, true, false, false, false, false, false, false }, OrderErrosSearchType.Product },
        { new[] { false, false, false, true, false, false, false, false, false }, OrderErrosSearchType.ErrorCode },
        { new[] { false, false, false, false, true, false, false, false, false }, OrderErrosSearchType.ErrorCategory },
        { new[] { false, false, false, false, false, true, false, false, false }, OrderErrosSearchType.State },
        { new[] { false, false, false, false, false, false, true, false, false }, OrderErrosSearchType.TitlePlant },
        { new[] { false, false, false, false, false, false, false, true, false }, OrderErrosSearchType.County },
        { new[] { false, false, false, false, false, false, false, false, true }, OrderErrosSearchType.Municipality },
        
        { new[] { false, false, false, true, true, false, false, false, false }, OrderErrosSearchType.ErrorCodeAndErrorCategory },
        { new[] { true, false, false, true, false, false, false, false, false }, OrderErrosSearchType.GlobalTypeAndErrorCode },
        { new[] { true, false, false, false, true, false, false, false, false }, OrderErrosSearchType.GlobalTypeAndErrorCategory },
        { new[] { false, true, false, true, false, false, false, false, false }, OrderErrosSearchType.SpecifiedTypeAndErrorCode },
        { new[] { false, true, false, false, true, false, false, false, false }, OrderErrosSearchType.SpecifiedTypeAndErrorCategory },
        { new[] { false, false, true, true, false, false, false, false, false }, OrderErrosSearchType.ProductAndErrorCode },
        { new[] { false, false, true, false, true, false, false, false, false }, OrderErrosSearchType.ProductAndErrorCategory },
        
        { new[] { false, false, false, true, false, true, false, false, false }, OrderErrosSearchType.StateAndErrorCode },
        { new[] { false, false, false, false, true, true, false, false, false }, OrderErrosSearchType.StateAndErrorCategory },
        { new[] { false, false, false, true, false, false, true, false, false }, OrderErrosSearchType.TitlePlantAndErrorCode },
        { new[] { false, false, false, false, true, false, true, false, false }, OrderErrosSearchType.TitlePlantAndErrorCategory },
        { new[] { false, false, false, true, false, false, false, true, false }, OrderErrosSearchType.CountyAndErrorCode },
        { new[] { false, false, false, false, true, false, false, true, false }, OrderErrosSearchType.CountyAndErrorCategory },
        { new[] { false, false, false, true, false, false, false, false, true }, OrderErrosSearchType.MunicipalityAndErrorCode },
        { new[] { false, false, false, false, true, false, false, false, true }, OrderErrosSearchType.MunicipalityAndErrorCategory },
        
        { new[] { true, false, false, false, false, true, false, false, false }, OrderErrosSearchType.GlobalTypeAndState },
        { new[] { true, false, false, false, false, false, true, false, false }, OrderErrosSearchType.GlobalTypeAndTitlePlant },
        { new[] { true, false, false, false, false, false, false, true, false }, OrderErrosSearchType.GlobalTypeAndCounty },
        { new[] { true, false, false, false, false, false, false, false, true }, OrderErrosSearchType.GlobalTypeAndMunicipality },
        
        { new[] { false, true, false, false, false, true, false, false, false }, OrderErrosSearchType.SpecifiedTypeAndState },
        { new[] { false, true, false, false, false, false, true, false, false }, OrderErrosSearchType.SpecifiedTypeAndTitlePlant },
        { new[] { false, true, false, false, false, false, false, true, false }, OrderErrosSearchType.SpecifiedTypeAndCounty },
        { new[] { false, true, false, false, false, false, false, false, true }, OrderErrosSearchType.SpecifiedTypeAndMunicipality },
        
        { new[] { false, false, true, false, false, true, false, false, false }, OrderErrosSearchType.ProductAndState },
        { new[] { false, false, true, false, false, false, true, false, false }, OrderErrosSearchType.ProductAndTitlePlant },
        { new[] { false, false, true, false, false, false, false, true, false }, OrderErrosSearchType.ProductAndCounty },
        { new[] { false, false, true, false, false, false, false, false, true }, OrderErrosSearchType.ProductAndMunicipality },
        
        { new[] { false, false, false, true, false, true, false, false, false }, OrderErrosSearchType.ErrorCodeAndState },
        { new[] { false, false, false, true, false, false, true, false, false }, OrderErrosSearchType.ErrorCodeAndTitlePlant },
        { new[] { false, false, false, true, false, false, false, true, false }, OrderErrosSearchType.ErrorCodeAndCounty },
        { new[] { false, false, false, true, false, false, false, false, true }, OrderErrosSearchType.ErrorCodeAndMunicipality },
        
        { new[] { false, false, false, false, true, true, false, false, false }, OrderErrosSearchType.ErrorCategoryAndState },
        { new[] { false, false, false, false, true, false, true, false, false }, OrderErrosSearchType.ErrorCategoryAndTitlePlant },
        { new[] { false, false, false, false, true, false, false, true, false }, OrderErrosSearchType.ErrorCategoryAndCounty },
        { new[] { false, false, false, false, true, false, false, false, true }, OrderErrosSearchType.ErrorCategoryAndMunicipality },
        
        { new[] { true, false, false, true, false, true, false, false, false }, OrderErrosSearchType.GlobalTypeAndStateAndErrorCode },
        { new[] { true, false, false, false, true, true, false, false, false }, OrderErrosSearchType.GlobalTypeAndStateAndErrorCategory },
        { new[] { true, false, false, true, false, false, true, false, false }, OrderErrosSearchType.GlobalTypeAndTitlePlantAndErrorCode },
        { new[] { true, false, false, false, true, false, true, false, false }, OrderErrosSearchType.GlobalTypeAndTitlePlantAndErrorCategory },
        { new[] { true, false, false, true, false, false, false, true, false }, OrderErrosSearchType.GlobalTypeAndCountyAndErrorCode },
        { new[] { true, false, false, false, true, false, false, true, false }, OrderErrosSearchType.GlobalTypeAndCountyAndErrorCategory },
        { new[] { true, false, false, true, false, false, false, false, true }, OrderErrosSearchType.GlobalTypeAndMunicipalityAndErrorCode },
        { new[] { true, false, false, false, true, false, false, false, true }, OrderErrosSearchType.GlobalTypeAndMunicipalityAndErrorCategory },
        
        { new[] { false, true, false, true, false, true, false, false, false }, OrderErrosSearchType.SpecifiedTypeAndStateAndErrorCode },
        { new[] { false, true, false, false, true, true, false, false, false }, OrderErrosSearchType.SpecifiedTypeAndStateAndErrorCategory },
        { new[] { false, true, false, true, false, false, true, false, false }, OrderErrosSearchType.SpecifiedTypeAndTitlePlantAndErrorCode },
        { new[] { false, true, false, false, true, false, true, false, false }, OrderErrosSearchType.SpecifiedTypeAndTitlePlantAndErrorCategory },
        { new[] { false, true, false, true, false, false, false, true, false }, OrderErrosSearchType.SpecifiedTypeAndCountyAndErrorCode },
        { new[] { false, true, false, false, true, false, false, true, false }, OrderErrosSearchType.SpecifiedTypeAndCountyAndErrorCategory },
        { new[] { false, true, false, true, false, false, false, false, true }, OrderErrosSearchType.SpecifiedTypeAndMunicipalityAndErrorCode },
        { new[] { false, true, false, false, true, false, false, false, true }, OrderErrosSearchType.SpecifiedTypeAndMunicipalityAndErrorCategory },
        
        { new[] { false, false, true, true, false, true, false, false, false }, OrderErrosSearchType.ProductAndStateAndErrorCode },
        { new[] { false, false, true, false, true, true, false, false, false }, OrderErrosSearchType.ProductAndStateAndErrorCategory },
        { new[] { false, false, true, true, false, false, true, false, false }, OrderErrosSearchType.ProductAndTitlePlantAndErrorCode },
        { new[] { false, false, true, false, true, false, true, false, false }, OrderErrosSearchType.ProductAndTitlePlantAndErrorCategory },
        { new[] { false, false, true, true, false, false, false, true, false }, OrderErrosSearchType.ProductAndCountyAndErrorCode },
        { new[] { false, false, true, false, true, false, false, true, false }, OrderErrosSearchType.ProductAndCountyAndErrorCategory },
        { new[] { false, false, true, true, false, false, false, false, true }, OrderErrosSearchType.ProductAndMunicipalityAndErrorCode },
        { new[] { false, false, true, false, true, false, false, false, true }, OrderErrosSearchType.ProductAndMunicipalityAndErrorCategory },
        
        { new[] { false, false, false, false, false, false, false, false, false }, OrderErrosSearchType.None },
        { new[] { true, true, true, true, true, true, true, true, true }, OrderErrosSearchType.All }
    };
