namespace IS.TestLicenseManagement;

using IS.LicenseManagement;

codeunit 66016 "ISZ Test License Mgt. Install"
{
    Access = Internal;
    Subtype = Install;

    trigger OnInstallAppPerDatabase()
    var
        ExtensionManagement: Codeunit "ISZ Extension Management";
        LicenseManager: Codeunit "ISZ License Manager";
    begin

        LicenseManager.RegisterInstalledProduct(ExtensionManagement.GetCurrentExtensionId(), ExtensionManagement.GetCurrentExtensionName());
    end;
}