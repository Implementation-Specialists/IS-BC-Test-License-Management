namespace IS.TestLicenseManagement;

permissionset 66016 "ISZ Test LME"
{
    Assignable = true;
    Caption = 'Test License Management', Locked = true;
    Permissions = codeunit "ISZ Test License Mgt. Install" = X,
                codeunit "ISZ Extension Management" = X;
}