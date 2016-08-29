.class public Lcom/lge/mirrorlink/commonapi/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Lcom/mirrorlink/android/commonapi/IConnectionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/commonapi/ConnectionManager$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_cAPI"


# instance fields
.field private final mBinder:Lcom/mirrorlink/android/commonapi/IConnectionManager$Stub;

.field private mListener:Lcom/mirrorlink/android/commonapi/IConnectionListener;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/lge/mirrorlink/commonapi/ConnectionManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/ConnectionManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IConnectionListener;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/mirrorlink/android/commonapi/IConnectionListener;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/lge/mirrorlink/commonapi/ConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/commonapi/ConnectionManager$1;-><init>(Lcom/lge/mirrorlink/commonapi/ConnectionManager;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/ConnectionManager;->mBinder:Lcom/mirrorlink/android/commonapi/IConnectionManager$Stub;

    .line 24
    iput-object p1, p0, Lcom/lge/mirrorlink/commonapi/ConnectionManager;->mPackageName:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/lge/mirrorlink/commonapi/ConnectionManager;->mListener:Lcom/mirrorlink/android/commonapi/IConnectionListener;

    .line 22
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/ConnectionManager;->mBinder:Lcom/mirrorlink/android/commonapi/IConnectionManager$Stub;

    return-object v0
.end method

.method public getAudioConnections()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListener()Lcom/mirrorlink/android/commonapi/IConnectionListener;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/ConnectionManager;->mListener:Lcom/mirrorlink/android/commonapi/IConnectionListener;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/ConnectionManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteDisplayConnections()I
    .registers 2

    .prologue
    .line 104
    const/4 v0, -0x1

    return v0
.end method

.method public isMirrorLinkSessionEstablished()Z
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public unregister()V
    .registers 1

    .prologue
    .line 107
    return-void
.end method
