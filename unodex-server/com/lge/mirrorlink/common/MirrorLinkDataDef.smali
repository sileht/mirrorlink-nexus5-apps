.class public interface abstract Lcom/lge/mirrorlink/common/MirrorLinkDataDef;
.super Ljava/lang/Object;
.source "MirrorLinkDataDef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;,
        Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;,
        Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;,
        Lcom/lge/mirrorlink/common/MirrorLinkDataDef$ResourceStatus;
    }
.end annotation


# static fields
.field public static final APP_CATEGORY_APPLICATION_LISTING:J = 0x10004L

.field public static final APP_CATEGORY_CLIENT_FUNCTIONALITY:J = 0xf0000002L

.field public static final APP_CATEGORY_GENERAL_UI_FRAMEWORK:J = 0x10000L

.field public static final APP_CATEGORY_GENERAL_UI_LESS_APP:J = 0xf0000000L

.field public static final APP_CATEGORY_HOME_SCREEN:J = 0x10001L

.field public static final APP_CATEGORY_MENU:J = 0x10002L

.field public static final APP_CATEGORY_NOTIFICATION:J = 0x10003L

.field public static final APP_CATEGORY_SERVER_FUNCTIONALITY:J = 0xf0000001L

.field public static final APP_CATEGORY_SETTINGS:J = 0x10005L

.field public static final APP_CATEGORY_SWITCH_TO_MIRRORLINK_CLIENT_NATIVE_UI:J = 0xf000ffffL

.field public static final APP_CATEGORY_UNKNOWN:J = 0x0L

.field public static final AUDIO_CONTENT_CATEGORY_COMMAND_IN:J = 0x10L

.field public static final AUDIO_CONTENT_CATEGORY_COMMAND_OUT:J = 0x8L

.field public static final AUDIO_CONTENT_CATEGORY_MEDIA_IN:J = 0x4L

.field public static final AUDIO_CONTENT_CATEGORY_MEDIA_OUT:J = 0x2L

.field public static final AUDIO_CONTENT_CATEGORY_MISC:J = -0x80000000L

.field public static final AUDIO_CONTENT_CATEGORY_PHONE:J = 0x1L

.field public static final AUDIO_CONTENT_CATEGORY_UNKNOWN:J = 0x0L

.field public static final COMPONENT_ID_DAP_SERVER:Ljava/lang/String; = "TerminalMode:DAP-Server"

.field public static final COMPONENT_ID_RTP_CLIENT:Ljava/lang/String; = "TerminalMode:RTP-Client"

.field public static final COMPONENT_ID_RTP_SERVER:Ljava/lang/String; = "TerminalMode:RTP-Server"

.field public static final COMPONENT_ID_UPNP_CONTROL_POINT:Ljava/lang/String; = "TerminalMode:UPnP-ControlPoint"

.field public static final COMPONENT_ID_UPNP_SERVER:Ljava/lang/String; = "TerminalMode:UPnP-Server"

.field public static final COMPONENT_ID_VNC_SERVER:Ljava/lang/String; = "TerminalMode:VNC-Server"

.field public static final MAX_CONTENTRULE_ID:I = 0x1f

.field public static final MAX_NUMPROFILES:I = 0x1

.field public static final MIN_CONTENTRULE_ID:I = 0x0

.field public static final PROTOCOL_ID_BTA2DP:Ljava/lang/String; = "BTA2DP"

.field public static final PROTOCOL_ID_BTHFP:Ljava/lang/String; = "BTHFP"

.field public static final PROTOCOL_ID_CDB:Ljava/lang/String; = "CDB"

.field public static final PROTOCOL_ID_DAP:Ljava/lang/String; = "DAP"

.field public static final PROTOCOL_ID_NONE:Ljava/lang/String; = "NONE"

.field public static final PROTOCOL_ID_RTP:Ljava/lang/String; = "RTP"

.field public static final PROTOCOL_ID_VNC:Ljava/lang/String; = "VNC"

.field public static final TRUST_LEVEL_CERTIFICATE:I = 0xa0

.field public static final TRUST_LEVEL_REGISTERED:I = 0x80

.field public static final TRUST_LEVEL_SELF_REGISTERED:I = 0x60

.field public static final TRUST_LEVEL_UNKNOWN:I = 0x0

.field public static final TRUST_LEVEL_USER_CONFIGURATION:I = 0x40

.field public static final VISUAL_CONTENT_CATEGORY_CARMODE:J = 0x10000L

.field public static final VISUAL_CONTENT_CATEGORY_GRAPHICS:J = 0x10L

.field public static final VISUAL_CONTENT_CATEGORY_IMAGE:J = 0x4L

.field public static final VISUAL_CONTENT_CATEGORY_MISC:J = -0x80000000L

.field public static final VISUAL_CONTENT_CATEGORY_TEXT:J = 0x1L

.field public static final VISUAL_CONTENT_CATEGORY_UI:J = 0x20L

.field public static final VISUAL_CONTENT_CATEGORY_UNKNOWN:J = 0x0L

.field public static final VISUAL_CONTENT_CATEGORY_VECTOR:J = 0x8L

.field public static final VISUAL_CONTENT_CATEGORY_VIDEO:J = 0x2L

.field public static final payloadtype_0:Ljava/lang/Integer;

.field public static final payloadtype_99:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef;->payloadtype_0:Ljava/lang/Integer;

    .line 37
    const/16 v0, 0x63

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef;->payloadtype_99:Ljava/lang/Integer;

    .line 5
    return-void
.end method
