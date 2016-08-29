.class public interface abstract Lcom/lge/mirrorlink/MirrorLinkConfig;
.super Ljava/lang/Object;
.source "MirrorLinkConfig.java"


# static fields
.field public static final APP_CERT_USE_CTS_TEST_KEY:Z = true

.field public static final DAP_USE_CTS_TEST_KEY:Z = false

.field public static final DAP_USE_TRUST_ZONE:Z = true

.field public static final HOME_CLASS_NAME:Ljava/lang/String; = "com.lge.mirrorlink.MirrorLinkSettings"

.field public static final HOME_PACKAGE_NAME:Ljava/lang/String; = "com.lge.mirrorlink"

.field public static final MIRRORLINK_VERSION:I = 0x11

.field public static final RTP_PAYLOAD_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORT_DAP:Z = true

.field public static final SUPPORT_WIFI:Z = false

.field public static final VNC_AUTO_KEY_UP:Z = true

.field public static final VNC_IGNORE_SMALL_WINDOW_CONTEXT_INFO:Z = true

.field public static final VNC_LANDSCAPE_FB:Z = true

.field public static final VNC_MAX_NUMBER_OF_TOUCH:B = 0x2t

.field public static final VNC_PORTRAIT_FB:Z = true

.field public static final VNC_SUPPORT_DEVICE_LOCK:Z = true

.field public static final VNC_SUPPORT_FRAMEBUFFER_ASPECT_RATIO:Z = true

.field public static final VNC_SUPPORT_INCREMENTAL_UPDATE:Z = true

.field public static final VNC_SUPPORT_KEY_LOCK:Z = false

.field public static final VNC_SUPPORT_KNOB_KEY:Z = true

.field public static final VNC_SUPPORT_MICINPUT:Z = false

.field public static final VNC_SUPPORT_NIGHT_MODE:Z = true

.field public static final VNC_SUPPORT_ORIENTATION_SWITCH:Z = false

.field public static final VNC_SUPPORT_RLE:Z = true

.field public static final VNC_SUPPORT_ROTATION_CHANGE:Z = false

.field public static final VNC_SUPPORT_TOUCH_EVENT:Z = true

.field public static final VNC_SUPPORT_VOICEINPUT:Z = false

.field public static final VNC_TOUCH_EVENT_PRESSURE_MASK:B = 0x1t


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    sget-object v1, Lcom/lge/mirrorlink/common/MirrorLinkDataDef;->payloadtype_99:Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/lge/mirrorlink/MirrorLinkConfig;->RTP_PAYLOAD_TYPES:Ljava/util/List;

    .line 12
    return-void
.end method
