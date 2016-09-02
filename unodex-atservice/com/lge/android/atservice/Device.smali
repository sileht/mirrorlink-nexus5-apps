.class public Lcom/lge/android/atservice/Device;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDeviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/lge/android/atservice/Device;->mContext:Landroid/content/Context;

    .line 17
    iput-object v0, p0, Lcom/lge/android/atservice/Device;->mDeviceName:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/lge/android/atservice/Device;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/lge/android/atservice/Device;->mDeviceName:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public PowerOff()I
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public PowerOn()I
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/android/atservice/Device;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method
