# PlatformDataTypes
```powershell
PlatformDataTypes{

    enum Exchange
    {
        UserMailbox = 1001,
        ArchiveMailbox = 1002,
        GroupMailbox = 1003,
        ResourceMailbox = 1004,
        SharedMailbox = 1005,

        Office365Group = 1006,
        DistributionGroup = 1007,
        SecurityGroup = 1008,
    }

    enum Teams
    {
        Team = 1001,

        StandardChannel = 2001,
        PrivateChannel = 2002,
        SharedChannel = 2003
    }

    enum SharePoint
    {
        SiteCollection = 600,
        Site = 400,
        List = 200,
        Folder = 100
    }

    enum OneDrive
    {
        OneDrive = 650
    }

    enum M365Group
    {
        M365Group = 10650
    }

    enum TeamChat
    {
        TeamChat = 800
    }

    enum PowerPlatform
    {
        PowerFlow = 71000,
        PowerApp = 72000,
        Environment = 73000,
    }

    enum Gmail
    {
        UserMailbox = 1001,
        GoogleGroup = 1003,
        ResourceMailbox = 1004,
    }
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)