.class public interface abstract Lcom/lge/mirrorlink/common/ComponentID;
.super Ljava/lang/Object;
.source "ComponentID.java"


# static fields
.field public static final COMPID_ALL:Ljava/lang/String; = "*"

.field public static final COMPID_TM_CDB_ENDPOINT:Ljava/lang/String; = "MirrorLink:CDB-Endpoint"

.field public static final COMPID_TM_DEVICE:Ljava/lang/String; = "MirrorLink:Device"

.field public static final COMPID_TM_RTP_CLIENT:Ljava/lang/String; = "TerminalMode:RTP-Client"

.field public static final COMPID_TM_RTP_SERVER:Ljava/lang/String; = "TerminalMode:RTP-Server"

.field public static final COMPID_TM_UPNP_CONTROLPOINT:Ljava/lang/String; = "TerminalMode:UPnP-ControlPoint"

.field public static final COMPID_TM_UPNP_SERVER:Ljava/lang/String; = "TerminalMode:UPnP-Server"

.field public static final COMPID_TM_VNC_SERVER:Ljava/lang/String; = "TerminalMode:VNC-Server"

.field public static final ImplementedComponentIDs1_0:[Ljava/lang/String;

.field public static final ImplementedComponentIDs1_1:[Ljava/lang/String;

.field public static final MirrorLinkComponentIDs:[Ljava/lang/String;

.field public static final PROTOCOLID_CDB:Ljava/lang/String; = "CDB"

.field public static final PROTOCOLID_HTTP:Ljava/lang/String; = "HTTP"

.field public static final PROTOCOLID_RTP:Ljava/lang/String; = "RTP"

.field public static final PROTOCOLID_UDP:Ljava/lang/String; = "UDP"

.field public static final PROTOCOLID_VNC:Ljava/lang/String; = "VNC"


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "TerminalMode:VNC-Server"

    aput-object v1, v0, v3

    const-string/jumbo v1, "TerminalMode:UPnP-Server"

    aput-object v1, v0, v4

    const-string/jumbo v1, "TerminalMode:UPnP-ControlPoint"

    aput-object v1, v0, v5

    const-string/jumbo v1, "TerminalMode:RTP-Server"

    aput-object v1, v0, v6

    const-string/jumbo v1, "TerminalMode:RTP-Client"

    aput-object v1, v0, v7

    const-string/jumbo v1, "MirrorLink:CDB-Endpoint"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "MirrorLink:Device"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/mirrorlink/common/ComponentID;->MirrorLinkComponentIDs:[Ljava/lang/String;

    .line 22
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "TerminalMode:VNC-Server"

    aput-object v1, v0, v3

    const-string/jumbo v1, "TerminalMode:UPnP-Server"

    aput-object v1, v0, v4

    const-string/jumbo v1, "TerminalMode:RTP-Server"

    aput-object v1, v0, v5

    const-string/jumbo v1, "MirrorLink:Device"

    aput-object v1, v0, v6

    sput-object v0, Lcom/lge/mirrorlink/common/ComponentID;->ImplementedComponentIDs1_1:[Ljava/lang/String;

    .line 23
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "TerminalMode:VNC-Server"

    aput-object v1, v0, v3

    const-string/jumbo v1, "TerminalMode:UPnP-Server"

    aput-object v1, v0, v4

    const-string/jumbo v1, "TerminalMode:RTP-Server"

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/mirrorlink/common/ComponentID;->ImplementedComponentIDs1_0:[Ljava/lang/String;

    .line 4
    return-void
.end method
