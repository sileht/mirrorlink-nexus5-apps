.class Lcom/lge/bnr/framework/LGBackupAgent$2;
.super Ljava/lang/Object;
.source "LGBackupAgent.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bnr/framework/LGBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public iBinder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/lge/bnr/framework/LGBackupAgent;


# direct methods
.method constructor <init>(Lcom/lge/bnr/framework/LGBackupAgent;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getiBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->iBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x1

    .line 133
    iput-object p2, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->iBinder:Landroid/os/IBinder;

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "isSuccess":Z
    const-string v1, "LGBackupAgent"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v1, "TT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "binder   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    invoke-static {p2}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/bnr/framework/LGBackupAgent;->access$2(Lcom/lge/bnr/framework/LGBackupAgent;Lcom/lge/bnr/remote/IRemoteBackup;)V

    .line 141
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$3(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    if-nez v1, :cond_31

    .line 174
    :goto_30
    return-void

    .line 146
    :cond_31
    :try_start_31
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$3(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mCallback:Lcom/lge/bnr/remote/IRemoteBackupCallback;
    invoke-static {v2}, Lcom/lge/bnr/framework/LGBackupAgent;->access$5(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackupCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lge/bnr/remote/IRemoteBackup;->registerCallback(Lcom/lge/bnr/remote/IRemoteBackupCallback;)Z
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_40} :catch_aa
    .catchall {:try_start_31 .. :try_end_40} :catchall_137

    move-result v0

    .line 151
    if-eqz v0, :cond_1cb

    .line 152
    const-string v1, "LGBackupAgent"

    const-string v2, "finally isSuccess"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v1, "LGBackupAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mBackupThread.isAlive() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v3}, Lcom/lge/bnr/framework/LGBackupAgent;->access$4(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$4(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1c2

    .line 155
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$4(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v1, v2, :cond_90

    .line 156
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$4(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_1b9

    .line 158
    :cond_90
    const-string v1, "LGBackupAgent"

    const-string v2, "Thread.State.NEW"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$4(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 160
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$4(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_30

    .line 148
    :catch_aa
    move-exception v1

    :try_start_ab
    const-string v1, "LGBackupAgent"

    const-string v2, "onServiceConnected RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_ab .. :try_end_b2} :catchall_137

    .line 151
    if-eqz v0, :cond_12e

    .line 152
    const-string v1, "LGBackupAgent"

    const-string v2, "finally isSuccess"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v1, "LGBackupAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mBackupThread.isAlive() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v3}, Lcom/lge/bnr/framework/LGBackupAgent;->access$4(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$4(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_125

    .line 155
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$4(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v1, v2, :cond_101

    .line 156
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$4(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_11c

    .line 158
    :cond_101
    const-string v1, "LGBackupAgent"

    const-string v2, "Thread.State.NEW"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$4(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 160
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$4(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_30

    .line 163
    :cond_11c
    const-string v1, "LGBackupAgent"

    const-string v2, "Thread cant not be runed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 167
    :cond_125
    const-string v1, "LGBackupAgent"

    const-string v2, "Thread already started, so it can not be runed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 171
    :cond_12e
    const-string v1, "LGBackupAgent"

    const-string v2, "remote connection failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 150
    :catchall_137
    move-exception v1

    .line 151
    if-eqz v0, :cond_1b1

    .line 152
    const-string v2, "LGBackupAgent"

    const-string v3, "finally isSuccess"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v2, "LGBackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mBackupThread.isAlive() = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v4}, Lcom/lge/bnr/framework/LGBackupAgent;->access$4(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v2, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/lge/bnr/framework/LGBackupAgent;->access$4(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1a9

    .line 155
    iget-object v2, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/lge/bnr/framework/LGBackupAgent;->access$4(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    sget-object v3, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v2, v3, :cond_187

    .line 156
    iget-object v2, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/lge/bnr/framework/LGBackupAgent;->access$4(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    sget-object v3, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-ne v2, v3, :cond_1a1

    .line 158
    :cond_187
    const-string v2, "LGBackupAgent"

    const-string v3, "Thread.State.NEW"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v2, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/lge/bnr/framework/LGBackupAgent;->access$4(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 160
    iget-object v2, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/lge/bnr/framework/LGBackupAgent;->access$4(Lcom/lge/bnr/framework/LGBackupAgent;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 173
    :goto_1a0
    throw v1

    .line 163
    :cond_1a1
    const-string v2, "LGBackupAgent"

    const-string v3, "Thread cant not be runed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a0

    .line 167
    :cond_1a9
    const-string v2, "LGBackupAgent"

    const-string v3, "Thread already started, so it can not be runed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a0

    .line 171
    :cond_1b1
    const-string v2, "LGBackupAgent"

    const-string v3, "remote connection failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a0

    .line 163
    :cond_1b9
    const-string v1, "LGBackupAgent"

    const-string v2, "Thread cant not be runed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 167
    :cond_1c2
    const-string v1, "LGBackupAgent"

    const-string v2, "Thread already started, so it can not be runed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 171
    :cond_1cb
    const-string v1, "LGBackupAgent"

    const-string v2, "remote connection failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 185
    monitor-enter p0

    .line 186
    :try_start_1
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupAgent$2;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$2(Lcom/lge/bnr/framework/LGBackupAgent;Lcom/lge/bnr/remote/IRemoteBackup;)V

    .line 185
    monitor-exit p0

    .line 189
    return-void

    .line 185
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method
