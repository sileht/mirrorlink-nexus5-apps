.class public interface abstract Lcom/lge/bnr/framework/IBNRFrameworkAPI;
.super Ljava/lang/Object;
.source "IBNRFrameworkAPI.java"


# virtual methods
.method public abstract copyBackupFile(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
.end method

.method public abstract getRemoteFd(Ljava/lang/String;J)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract setBackupComplete(Ljava/lang/String;Lcom/lge/bnr/model/BNRFailItem;)V
.end method

.method public abstract setBackupProgress(Ljava/lang/String;I)V
.end method

.method public abstract setEnableBackup(Ljava/lang/String;I)V
.end method

.method public abstract setEnableRestore(Ljava/lang/String;)V
.end method

.method public abstract setFailItem(Ljava/lang/String;Lcom/lge/bnr/model/BNRFailItem;)Lcom/lge/bnr/model/BNRFailItem;
.end method

.method public abstract setRestoreComplete(Ljava/lang/String;Lcom/lge/bnr/model/BNRFailItem;)V
.end method

.method public abstract setRestoreProgress(Ljava/lang/String;I)V
.end method

.method public abstract transferBackupFile(Ljava/lang/String;Ljava/io/File;)V
.end method

.method public abstract transferByteArray(Ljava/lang/String;Ljava/lang/String;[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
