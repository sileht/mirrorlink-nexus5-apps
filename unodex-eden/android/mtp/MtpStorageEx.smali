.class public Landroid/mtp/MtpStorageEx;
.super Landroid/mtp/MtpStorage;
.source "MtpStorageEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtpStorageEx"


# instance fields
.field private mReadOnly:Z


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageVolume;Landroid/content/Context;)V
    .registers 3
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpStorage;-><init>(Landroid/os/storage/StorageVolume;Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method public setAccessCapability(Z)V
    .registers 5
    .param p1, "readOnly"    # Z

    .prologue
    .line 43
    const-string v0, "MtpStorageEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAccessCapability "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iput-boolean p1, p0, Landroid/mtp/MtpStorageEx;->mReadOnly:Z

    .line 45
    return-void
.end method
