.class public Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;
.super Ljava/lang/Object;
.source "MHPBlockDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "proxy"    # Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "MHPBlockDeviceManager"

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->TAG:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    return-object v0
.end method

.method private startJobThread(Ljava/lang/String;)V
    .registers 3
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;

    invoke-direct {v0, p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;-><init>(Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;Ljava/lang/String;)V

    .line 33
    .local v0, "newJobThread":Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;
    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->start()V

    .line 34
    return-void
.end method


# virtual methods
.method public insertBlockDevice(Ljava/lang/String;)V
    .registers 2
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->startJobThread(Ljava/lang/String;)V

    .line 28
    return-void
.end method
