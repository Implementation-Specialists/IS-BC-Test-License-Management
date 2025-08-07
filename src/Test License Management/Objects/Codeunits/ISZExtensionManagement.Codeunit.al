namespace IS.TestLicenseManagement;

codeunit 66017 "ISZ Extension Management"
{
    /// <summary>
    /// Gets the current extension id.
    /// </summary>
    /// <returns>The current extension id.</returns>
    procedure GetCurrentExtensionId() ExtensionId: Guid
    var
        CurrentModuleInfo: ModuleInfo;
    begin
        NavApp.GetCurrentModuleInfo(CurrentModuleInfo);
        ExtensionId := CurrentModuleInfo.Id();
    end;

    /// <summary>
    /// Gets the current extension name.
    /// </summary>
    /// <returns>The current extension name.</returns>
    procedure GetCurrentExtensionName() ExtensionName: Text
    var
        CurrentModuleInfo: ModuleInfo;
    begin
        NavApp.GetCurrentModuleInfo(CurrentModuleInfo);
        ExtensionName := CurrentModuleInfo.Name();
    end;
}