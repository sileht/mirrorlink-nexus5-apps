.class public Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;
.super Ljava/lang/Object;
.source "MHPCommand.java"


# static fields
.field public static BCMP2P_ALGO_AES:I = 0x0

.field public static BCMP2P_ALGO_OFF:I = 0x0

.field public static BCMP2P_ALGO_TKIP:I = 0x0

.field public static BCMP2P_ALGO_TKIP_AES:I = 0x0

.field public static BCMP2P_ALGO_WEP128:I = 0x0

.field public static BCMP2P_AUTH_DEFAULT:I = 0x0

.field public static BCMP2P_DHCP_AUTO:I = 0x0

.field public static BCMP2P_DHCP_OFF:I = 0x0

.field public static BCMP2P_DHCP_ON:I = 0x0

.field public static BCMP2P_MAC_FILTER_ALLOW:I = 0x0

.field public static BCMP2P_MAC_FILTER_DENY:I = 0x0

.field public static BCMP2P_MAC_FILTER_MAX:I = 0x0

.field public static BCMP2P_MAC_FILTER_OFF:I = 0x0

.field public static BCMP2P_NOTIF_ACCEPT_REJECT:I = 0x0

.field public static BCMP2P_NOTIF_CONNECTING_ON:I = 0x0

.field public static BCMP2P_NOTIF_CONNECT_OFF:I = 0x0

.field public static BCMP2P_NOTIF_CONNECT_ON:I = 0x0

.field public static BCMP2P_NOTIF_DISCOVER_OFF:I = 0x0

.field public static BCMP2P_NOTIF_DISCOVER_ON:I = 0x0

.field public static BCMP2P_NOTIF_GET_PEERLIST:I = 0x0

.field public static BCMP2P_NOTIF_STATUS:I = 0x0

.field public static BCMP2P_SSID_BROADCAST_HIDE:I = 0x0

.field public static BCMP2P_SSID_BROADCAST_SHOW:I = 0x0

.field public static BCMP2P_WPA_AUTH_NONE:I = 0x0

.field public static BCMP2P_WPA_AUTH_SHARED:I = 0x0

.field public static BCMP2P_WPA_AUTH_WPA2PSK:I = 0x0

.field public static BCMP2P_WPA_AUTH_WPAPSK:I = 0x0

.field public static BCMP2P_WPA_AUTH_WPA_WPA2_MIXED:I = 0x0

.field public static final HANDLE_REMOVE_PEERS:I = 0x65

.field public static final HANDLE_START_PROGRESS_CONNECT:I = 0x68

.field public static final HANDLE_START_PROGRESS_DISCOVER:I = 0x66

.field public static final HANDLE_STOP_PROGRESS_CONNECT:I = 0x69

.field public static final HANDLE_STOP_PROGRESS_DISCOVER:I = 0x67

.field public static final HANDLE_UPDATE_CONTROLS:I = 0x64

.field public static final MSGBOX_ACCEPT_REJECT_NOTIFICATION:I = 0x65

.field public static final MSGBOX_EXIT_APP:I = 0x66

.field public static final MSGBOX_NONE:I = 0x64

.field public static final MSGBOX_UPDATE_SETTINGS:I = 0x67

.field public static WLP2P_PROCESS_CMD_AcceptIncomingConnection:I

.field public static WLP2P_PROCESS_CMD_CloseWPSWindow:I

.field public static WLP2P_PROCESS_CMD_CreateGroupOwner:I

.field public static WLP2P_PROCESS_CMD_CreateLink:I

.field public static WLP2P_PROCESS_CMD_CreateSoftAP:I

.field public static WLP2P_PROCESS_CMD_Create_SoftAP_Static_IP:I

.field public static WLP2P_PROCESS_CMD_DeAuth:I

.field public static WLP2P_PROCESS_CMD_DecreaseLogLevel:I

.field public static WLP2P_PROCESS_CMD_DisableDiscovery:I

.field public static WLP2P_PROCESS_CMD_Disconnect:I

.field public static WLP2P_PROCESS_CMD_EnableDiscovery:I

.field public static WLP2P_PROCESS_CMD_ExitWithConnected:I

.field public static WLP2P_PROCESS_CMD_ExitWithDisconnected:I

.field public static WLP2P_PROCESS_CMD_IncreaseLogLevel:I

.field public static WLP2P_PROCESS_CMD_InitLib:I

.field public static WLP2P_PROCESS_CMD_None:I

.field public static WLP2P_PROCESS_CMD_OpenWPSWindow:I

.field public static WLP2P_PROCESS_CMD_RefreshUI:I

.field public static WLP2P_PROCESS_CMD_RejectIncomingConnection:I

.field public static WLP2P_PROCESS_CMD_Sleep:I

.field public static WLP2P_PROCESS_CMD_TearDownSoftAP:I

.field public static WLP2P_UPDATE_Filter:I

.field public static WLP2P_UPDATE_General:I

.field public static WLP2P_UPDATE_Other:I

.field public static WLP2P_UPDATE_Security:I

.field public static WLP2P_UPDATE_TcpIp:I

.field public static WLP2P_UPDATE_Wps:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 8
    sput v1, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_PROCESS_CMD_None:I

    .line 9
    sput v2, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_PROCESS_CMD_Sleep:I

    .line 10
    sput v3, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_PROCESS_CMD_InitLib:I

    .line 11
    sput v4, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_PROCESS_CMD_EnableDiscovery:I

    .line 12
    sput v5, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_PROCESS_CMD_DisableDiscovery:I

    .line 13
    const/4 v0, 0x5

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_PROCESS_CMD_CreateGroupOwner:I

    .line 14
    const/4 v0, 0x6

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_PROCESS_CMD_CreateSoftAP:I

    .line 15
    const/4 v0, 0x7

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_PROCESS_CMD_TearDownSoftAP:I

    .line 16
    const/16 v0, 0x8

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_PROCESS_CMD_OpenWPSWindow:I

    .line 17
    const/16 v0, 0x9

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_PROCESS_CMD_CloseWPSWindow:I

    .line 18
    const/16 v0, 0xa

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_PROCESS_CMD_CreateLink:I

    .line 19
    const/16 v0, 0xb

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_PROCESS_CMD_AcceptIncomingConnection:I

    .line 20
    const/16 v0, 0xc

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_PROCESS_CMD_RejectIncomingConnection:I

    .line 21
    const/16 v0, 0xd

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_PROCESS_CMD_Disconnect:I

    .line 22
    const/16 v0, 0xe

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_PROCESS_CMD_ExitWithConnected:I

    .line 23
    const/16 v0, 0xf

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_PROCESS_CMD_ExitWithDisconnected:I

    .line 24
    const/16 v0, 0x10

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_PROCESS_CMD_RefreshUI:I

    .line 25
    const/16 v0, 0x11

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_PROCESS_CMD_IncreaseLogLevel:I

    .line 26
    const/16 v0, 0x12

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_PROCESS_CMD_DecreaseLogLevel:I

    .line 27
    const/16 v0, 0x13

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_PROCESS_CMD_DeAuth:I

    .line 28
    const/16 v0, 0x14

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_PROCESS_CMD_Create_SoftAP_Static_IP:I

    .line 38
    sput v1, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_UPDATE_General:I

    .line 39
    sput v2, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_UPDATE_Security:I

    .line 40
    sput v3, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_UPDATE_TcpIp:I

    .line 41
    sput v4, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_UPDATE_Wps:I

    .line 42
    sput v5, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_UPDATE_Other:I

    .line 43
    const/4 v0, 0x5

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->WLP2P_UPDATE_Filter:I

    .line 52
    const/16 v0, 0x101

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_NOTIF_STATUS:I

    .line 53
    const/16 v0, 0x102

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_NOTIF_ACCEPT_REJECT:I

    .line 54
    const/16 v0, 0x103

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_NOTIF_GET_PEERLIST:I

    .line 55
    const/16 v0, 0x104

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_NOTIF_DISCOVER_ON:I

    .line 56
    const/16 v0, 0x105

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_NOTIF_DISCOVER_OFF:I

    .line 57
    const/16 v0, 0x106

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_NOTIF_CONNECT_ON:I

    .line 58
    const/16 v0, 0x107

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_NOTIF_CONNECT_OFF:I

    .line 59
    const/16 v0, 0x108

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_NOTIF_CONNECTING_ON:I

    .line 62
    sput v1, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_ALGO_OFF:I

    .line 63
    sput v3, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_ALGO_TKIP:I

    .line 64
    sput v4, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_ALGO_WEP128:I

    .line 65
    sput v5, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_ALGO_AES:I

    .line 66
    const/4 v0, 0x5

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_ALGO_TKIP_AES:I

    .line 69
    sput v2, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_WPA_AUTH_NONE:I

    .line 70
    sput v3, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_WPA_AUTH_SHARED:I

    .line 71
    sput v5, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_WPA_AUTH_WPAPSK:I

    .line 72
    const/16 v0, 0x80

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_WPA_AUTH_WPA2PSK:I

    .line 73
    sput v4, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_WPA_AUTH_WPA_WPA2_MIXED:I

    .line 75
    sget v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_WPA_AUTH_WPA2PSK:I

    sput v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_AUTH_DEFAULT:I

    .line 78
    sput v1, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_DHCP_ON:I

    .line 79
    sput v2, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_DHCP_OFF:I

    .line 80
    sput v3, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_DHCP_AUTO:I

    .line 83
    sput v2, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_SSID_BROADCAST_HIDE:I

    .line 84
    sput v1, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_SSID_BROADCAST_SHOW:I

    .line 87
    sput v1, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_MAC_FILTER_OFF:I

    .line 88
    sput v2, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_MAC_FILTER_DENY:I

    .line 89
    sput v3, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_MAC_FILTER_ALLOW:I

    .line 90
    sput v4, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_MAC_FILTER_MAX:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
