.class public final Lcom/lge/config/ThreelmMdmConfig;
.super Ljava/lang/Object;
.source "ThreelmMdmConfig.java"


# static fields
.field public static final THREELM_MDM:Z

.field public static final THREELM_MDM_SDENCRYPTION:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 10
    const-string v0, "ro.3lm.build.lg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM:Z

    .line 11
    const-string v0, "ro.3lm.build.sdencryption"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM_SDENCRYPTION:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
