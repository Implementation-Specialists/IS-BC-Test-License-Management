namespace IS.TestLicenseManagement;

using Microsoft.Sales.Customer;
using IS.LicenseManagement;

pageextension 66017 "ISZ Customer List" extends "Customer List"
{
    trigger OnOpenPage()
    var
        ExtensionManagement: Codeunit "ISZ Extension Management";
        LicenseManager: Codeunit "ISZ License Manager";
    begin
        ValidLicense := LicenseManager.ValidateLicense(ExtensionManagement.GetCurrentExtensionId());

        CurrPage.Editable(ValidLicense);
    end;

    var
        ValidLicense: Boolean;
}