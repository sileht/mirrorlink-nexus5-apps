.class public Lcom/lge/mirrorlink/commonapi/EventMappingManager;
.super Ljava/lang/Object;
.source "EventMappingManager.java"

# interfaces
.implements Lcom/mirrorlink/android/commonapi/IEventMappingManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/commonapi/EventMappingManager$1;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MirrorLink_cAPI"


# instance fields
.field private final mBinder:Lcom/mirrorlink/android/commonapi/IEventMappingManager$Stub;

.field private mListener:Lcom/mirrorlink/android/commonapi/IEventMappingListener;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/lge/mirrorlink/commonapi/EventMappingManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/EventMappingManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IEventMappingListener;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/mirrorlink/android/commonapi/IEventMappingListener;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/lge/mirrorlink/commonapi/EventMappingManager$1;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/commonapi/EventMappingManager$1;-><init>(Lcom/lge/mirrorlink/commonapi/EventMappingManager;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/EventMappingManager;->mBinder:Lcom/mirrorlink/android/commonapi/IEventMappingManager$Stub;

    .line 31
    iput-object p1, p0, Lcom/lge/mirrorlink/commonapi/EventMappingManager;->mPackageName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/lge/mirrorlink/commonapi/EventMappingManager;->mListener:Lcom/mirrorlink/android/commonapi/IEventMappingListener;

    .line 29
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/EventMappingManager;->mBinder:Lcom/mirrorlink/android/commonapi/IEventMappingManager$Stub;

    return-object v0
.end method

.method public getEventConfiguration()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEventMappings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListener()Lcom/mirrorlink/android/commonapi/IEventMappingListener;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/EventMappingManager;->mListener:Lcom/mirrorlink/android/commonapi/IEventMappingListener;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/EventMappingManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public unregister()V
    .registers 1

    .prologue
    .line 129
    return-void
.end method
