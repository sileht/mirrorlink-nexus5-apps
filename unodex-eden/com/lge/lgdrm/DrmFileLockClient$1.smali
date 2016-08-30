.class Lcom/lge/lgdrm/DrmFileLockClient$1;
.super Landroid/os/FileObserver;
.source "DrmFileLockClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/lgdrm/DrmFileLockClient;->fileLock(J)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/lgdrm/DrmFileLockClient;


# direct methods
.method constructor <init>(Lcom/lge/lgdrm/DrmFileLockClient;Ljava/lang/String;)V
    .registers 3
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/lgdrm/DrmFileLockClient$1;->this$0:Lcom/lge/lgdrm/DrmFileLockClient;

    .line 399
    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 7
    .param p1, "event"    # I
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 402
    sparse-switch p1, :sswitch_data_62

    .line 415
    :goto_3
    return-void

    .line 407
    :sswitch_4
    const-string v0, "DrmFileLockClient"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lge/lgdrm/DrmFileLockClient$1;->this$0:Lcom/lge/lgdrm/DrmFileLockClient;

    # getter for: Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/lgdrm/DrmFileLockClient;->access$0(Lcom/lge/lgdrm/DrmFileLockClient;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is modified during locking. Force stop the locking job. event code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/lge/lgdrm/DrmFileLockClient$1;->this$0:Lcom/lge/lgdrm/DrmFileLockClient;

    const/16 v1, -0x1e

    # invokes: Lcom/lge/lgdrm/DrmFileLockClient;->sendEventToListener(I)V
    invoke-static {v0, v1}, Lcom/lge/lgdrm/DrmFileLockClient;->access$1(Lcom/lge/lgdrm/DrmFileLockClient;I)V

    .line 409
    iget-object v0, p0, Lcom/lge/lgdrm/DrmFileLockClient$1;->this$0:Lcom/lge/lgdrm/DrmFileLockClient;

    iget-object v1, p0, Lcom/lge/lgdrm/DrmFileLockClient$1;->this$0:Lcom/lge/lgdrm/DrmFileLockClient;

    # getter for: Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:J
    invoke-static {v1}, Lcom/lge/lgdrm/DrmFileLockClient;->access$2(Lcom/lge/lgdrm/DrmFileLockClient;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/lge/lgdrm/DrmFileLockClient;->abortFileLockSession(J)I

    .line 410
    iget-object v0, p0, Lcom/lge/lgdrm/DrmFileLockClient$1;->this$0:Lcom/lge/lgdrm/DrmFileLockClient;

    # getter for: Lcom/lge/lgdrm/DrmFileLockClient;->mObserver:Landroid/os/FileObserver;
    invoke-static {v0}, Lcom/lge/lgdrm/DrmFileLockClient;->access$3(Lcom/lge/lgdrm/DrmFileLockClient;)Landroid/os/FileObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 411
    const-string v0, "DrmFileLockClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stop observation : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/lgdrm/DrmFileLockClient$1;->this$0:Lcom/lge/lgdrm/DrmFileLockClient;

    # getter for: Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/lgdrm/DrmFileLockClient;->access$0(Lcom/lge/lgdrm/DrmFileLockClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/lge/lgdrm/DrmFileLockClient$1;->this$0:Lcom/lge/lgdrm/DrmFileLockClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/lgdrm/DrmFileLockClient;->access$4(Lcom/lge/lgdrm/DrmFileLockClient;Landroid/os/FileObserver;)V

    goto :goto_3

    .line 402
    :sswitch_data_62
    .sparse-switch
        0x2 -> :sswitch_4
        0x4 -> :sswitch_4
        0x400 -> :sswitch_4
        0x800 -> :sswitch_4
    .end sparse-switch
.end method
