.class public interface abstract Lcom/lge/bnr/remote/IRemoteBackupCallback;
.super Ljava/lang/Object;
.source "IRemoteBackupCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bnr/remote/IRemoteBackupCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract BackupCancle()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract StartBackup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
