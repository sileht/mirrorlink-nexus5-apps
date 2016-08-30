.class public Lcom/lge/internal/hardware/fmradio/DeviceVariation$FmReceiverCustom;
.super Ljava/lang/Object;
.source "DeviceVariation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/hardware/fmradio/DeviceVariation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FmReceiverCustom"
.end annotation


# static fields
.field private static frClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    :try_start_0
    const-string v0, "qcom.fmradio.FmReceiver"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/hardware/fmradio/DeviceVariation$FmReceiverCustom;->frClass:Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    .line 33
    :goto_8
    return-void

    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAnalogMode(Ljava/lang/Object;Z)Z
    .registers 8
    .param p0, "fr"    # Ljava/lang/Object;
    .param p1, "value"    # Z

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, "result":Z
    :try_start_1
    sget-object v1, Lcom/lge/internal/hardware/fmradio/DeviceVariation$FmReceiverCustom;->frClass:Ljava/lang/Class;

    if-eqz v1, :cond_32

    .line 39
    const-string v1, "ro.fm.analogpath.supported"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 40
    sget-object v1, Lcom/lge/internal/hardware/fmradio/DeviceVariation$FmReceiverCustom;->frClass:Ljava/lang/Class;

    const-string v2, "setAnalogMode"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 41
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 40
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 41
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_31
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_31} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_31} :catch_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_31} :catch_33

    move-result v0

    .line 50
    :cond_32
    :goto_32
    return v0

    :catch_33
    move-exception v1

    goto :goto_32

    .line 45
    :catch_35
    move-exception v1

    goto :goto_32

    .line 43
    :catch_37
    move-exception v1

    goto :goto_32
.end method
