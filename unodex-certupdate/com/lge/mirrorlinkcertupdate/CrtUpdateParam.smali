.class public Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;
.super Ljava/lang/Object;
.source "CrtUpdateParam.java"


# static fields
.field public static final DEVICE_CERT_DEV_FILENAME:Ljava/lang/String; = "device_certificate_cts"

.field public static final DEVICE_CERT_ENABLE_FILE:Ljava/lang/String; = "device.cert.enable"

.field public static final DEVICE_CERT_FILENAME:Ljava/lang/String; = "device_certificate"

.field public static final ENABLE_PRIVATEKEY_LEAKAGE_CHECK:Z = false

.field public static final FILE_PATH:Ljava/lang/String; = "/data/misc/mirrorlink/"

.field public static final MANUFACTURER_CERT_DEV_FILENAME:Ljava/lang/String; = "manufacturer_certificate_cts"

.field public static final MANUFACTURER_CERT_FILENAME:Ljava/lang/String; = "manufacturer_certificate"

.field public static final MIRRORLINK_NCM_STOP:Ljava/lang/String; = "com.lge.mirrorlink.server.STOP"

.field public static final MIRRORLINK_VERIFY_KEYS:Ljava/lang/String; = "com.lge.mirrorlink.server.dap.prikey.VALIDATION"

.field public static final RESULT_FAIL:I = -0x1

.field public static final RESULT_SERVICE_FAIL:I = -0x2

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final UPDATE_FILE_EXT:Ljava/lang/String; = ".update"

.field public static final UPDATE_LIST:[Ljava/lang/String;

.field public static final VERSION_INFO:Ljava/lang/String; = ".update.20150317"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "device_certificate"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "manufacturer_certificate"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
