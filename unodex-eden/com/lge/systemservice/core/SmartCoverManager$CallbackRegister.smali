.class Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;
.super Landroid/os/Handler;
.source "SmartCoverManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/SmartCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackRegister"
.end annotation


# static fields
.field private static final MSG_REGISTER:I


# instance fields
.field private final MAX_REGISTER_COUNT:I

.field private final WAIT_SERVICE_MILLIS:I

.field private awaiter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/systemservice/core/ISmartCoverCallback;",
            ">;"
        }
    .end annotation
.end field

.field private registrant:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/systemservice/core/ISmartCoverCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lge/systemservice/core/SmartCoverManager;

.field private tryCount:I


# direct methods
.method public constructor <init>(Lcom/lge/systemservice/core/SmartCoverManager;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->this$0:Lcom/lge/systemservice/core/SmartCoverManager;

    .line 160
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 149
    const/16 v0, 0x14

    iput v0, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->MAX_REGISTER_COUNT:I

    .line 150
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->WAIT_SERVICE_MILLIS:I

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registrant:Ljava/util/List;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->awaiter:Ljava/util/List;

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->tryCount:I

    .line 161
    return-void
.end method

.method static synthetic access$0(Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;Lcom/lge/systemservice/core/ISmartCoverCallback;)Z
    .registers 3

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->register(Lcom/lge/systemservice/core/ISmartCoverCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;Lcom/lge/systemservice/core/ISmartCoverCallback;)V
    .registers 2

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->unRegister(Lcom/lge/systemservice/core/ISmartCoverCallback;)V

    return-void
.end method

.method private onCompletedRegistrationLocked()V
    .registers 4

    .prologue
    .line 264
    iget-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->awaiter:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_15

    .line 269
    iget-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->awaiter:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 270
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->tryCount:I

    .line 271
    return-void

    .line 264
    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/ISmartCoverCallback;

    .line 265
    .local v0, "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    iget-object v2, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registrant:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 266
    iget-object v2, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registrant:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method private declared-synchronized register(Lcom/lge/systemservice/core/ISmartCoverCallback;)Z
    .registers 7
    .param p1, "clbk"    # Lcom/lge/systemservice/core/ISmartCoverCallback;

    .prologue
    const/4 v1, 0x0

    .line 217
    monitor-enter p0

    if-nez p1, :cond_14

    .line 218
    :try_start_4
    # getter for: Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/core/SmartCoverManager;->access$1()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Callback must be not null"

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_35

    .line 248
    :goto_12
    monitor-exit p0

    return v1

    .line 222
    :cond_14
    :try_start_14
    # getter for: Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/core/SmartCoverManager;->access$1()Ljava/lang/String;

    move-result-object v2

    const-string v3, "calling registerCallback()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v2, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->this$0:Lcom/lge/systemservice/core/SmartCoverManager;

    # invokes: Lcom/lge/systemservice/core/SmartCoverManager;->getService()Lcom/lge/systemservice/core/ISmartCoverManager;
    invoke-static {v2}, Lcom/lge/systemservice/core/SmartCoverManager;->access$0(Lcom/lge/systemservice/core/SmartCoverManager;)Lcom/lge/systemservice/core/ISmartCoverManager;

    move-result-object v0

    .line 225
    .local v0, "service":Lcom/lge/systemservice/core/ISmartCoverManager;
    if-eqz v0, :cond_53

    .line 226
    invoke-direct {p0, v0, p1}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registerCallback(Lcom/lge/systemservice/core/ISmartCoverManager;Lcom/lge/systemservice/core/ISmartCoverCallback;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 227
    # getter for: Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/core/SmartCoverManager;->access$1()Ljava/lang/String;

    move-result-object v2

    const-string v3, "register(), Can\'t register callback"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_35

    goto :goto_12

    .line 217
    .end local v0    # "service":Lcom/lge/systemservice/core/ISmartCoverManager;
    :catchall_35
    move-exception v1

    monitor-exit p0

    throw v1

    .line 230
    .restart local v0    # "service":Lcom/lge/systemservice/core/ISmartCoverManager;
    :cond_38
    :try_start_38
    iget-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registrant:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 231
    iget-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registrant:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_45
    # getter for: Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/core/SmartCoverManager;->access$1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "register callback successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registerAwaiter()V

    .line 248
    :goto_51
    const/4 v1, 0x1

    goto :goto_12

    .line 239
    :cond_53
    iget-object v2, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->awaiter:Ljava/util/List;

    monitor-enter v2
    :try_end_56
    .catchall {:try_start_38 .. :try_end_56} :catchall_35

    .line 240
    :try_start_56
    iget-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->awaiter:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget v1, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->tryCount:I

    const/16 v3, 0x14

    if-lt v1, v3, :cond_64

    .line 243
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->tryCount:I

    .line 245
    :cond_64
    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registerDelayedLocked()V

    .line 239
    monitor-exit v2

    goto :goto_51

    :catchall_69
    move-exception v1

    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_56 .. :try_end_6b} :catchall_69

    :try_start_6b
    throw v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_35
.end method

.method private registerAwaiter()V
    .registers 7

    .prologue
    .line 171
    iget-object v2, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->this$0:Lcom/lge/systemservice/core/SmartCoverManager;

    # invokes: Lcom/lge/systemservice/core/SmartCoverManager;->getService()Lcom/lge/systemservice/core/ISmartCoverManager;
    invoke-static {v2}, Lcom/lge/systemservice/core/SmartCoverManager;->access$0(Lcom/lge/systemservice/core/SmartCoverManager;)Lcom/lge/systemservice/core/ISmartCoverManager;

    move-result-object v1

    .line 172
    .local v1, "service":Lcom/lge/systemservice/core/ISmartCoverManager;
    iget-object v3, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->awaiter:Ljava/util/List;

    monitor-enter v3

    .line 173
    :try_start_9
    iget-object v2, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->awaiter:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 174
    monitor-exit v3

    .line 191
    :goto_12
    return-void

    .line 176
    :cond_13
    if-nez v1, :cond_1d

    .line 177
    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registerDelayedLocked()V

    .line 178
    monitor-exit v3

    goto :goto_12

    .line 172
    :catchall_1a
    move-exception v2

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1a

    throw v2

    .line 181
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->awaiter:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_50

    .line 187
    # getter for: Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/core/SmartCoverManager;->access$1()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "register "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->awaiter:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "callbacks successfully"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->onCompletedRegistrationLocked()V

    .line 172
    monitor-exit v3

    goto :goto_12

    .line 181
    :cond_50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/ISmartCoverCallback;

    .line 182
    .local v0, "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    invoke-direct {p0, v1, v0}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registerCallback(Lcom/lge/systemservice/core/ISmartCoverManager;Lcom/lge/systemservice/core/ISmartCoverCallback;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 183
    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registerDelayedLocked()V

    .line 184
    monitor-exit v3
    :try_end_60
    .catchall {:try_start_1d .. :try_end_60} :catchall_1a

    goto :goto_12
.end method

.method private registerCallback(Lcom/lge/systemservice/core/ISmartCoverManager;Lcom/lge/systemservice/core/ISmartCoverCallback;)Z
    .registers 9
    .param p1, "service"    # Lcom/lge/systemservice/core/ISmartCoverManager;
    .param p2, "clbk"    # Lcom/lge/systemservice/core/ISmartCoverCallback;

    .prologue
    const/4 v2, 0x0

    .line 195
    instance-of v3, p2, Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;

    if-eqz v3, :cond_b

    .line 196
    const/4 v1, 0x1

    .line 209
    .local v1, "eventType":I
    :goto_6
    :try_start_6
    invoke-interface {p1, p2, v1}, Lcom/lge/systemservice/core/ISmartCoverManager;->registerCallback(Lcom/lge/systemservice/core/ISmartCoverCallback;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_2c

    move-result v2

    .line 213
    .end local v1    # "eventType":I
    :goto_a
    return v2

    .line 197
    :cond_b
    instance-of v3, p2, Lcom/lge/systemservice/core/SmartCoverManager$PenCallback;

    if-eqz v3, :cond_11

    .line 198
    const/4 v1, 0x2

    .line 199
    .restart local v1    # "eventType":I
    goto :goto_6

    .end local v1    # "eventType":I
    :cond_11
    instance-of v3, p2, Lcom/lge/systemservice/core/SmartCoverManager$SubCoverCallback;

    if-eqz v3, :cond_17

    .line 200
    const/4 v1, 0x3

    .line 201
    .restart local v1    # "eventType":I
    goto :goto_6

    .end local v1    # "eventType":I
    :cond_17
    instance-of v3, p2, Lcom/lge/systemservice/core/SmartCoverManager$FolderCallback;

    if-eqz v3, :cond_1d

    .line 202
    const/4 v1, 0x4

    .line 203
    .restart local v1    # "eventType":I
    goto :goto_6

    .line 204
    .end local v1    # "eventType":I
    :cond_1d
    # getter for: Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/core/SmartCoverManager;->access$1()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Is this proper callback?"

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 210
    .restart local v1    # "eventType":I
    :catch_2c
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/core/SmartCoverManager;->access$1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method private registerDelayedLocked()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 252
    # getter for: Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/core/SmartCoverManager;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartCoverService is null or has some problem.. please waiting.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0, v2}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_21

    .line 254
    iget v0, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->tryCount:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_22

    .line 255
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v2, v0, v1}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->sendEmptyMessageDelayed(IJ)Z

    .line 256
    iget v0, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->tryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->tryCount:I

    .line 261
    :cond_21
    :goto_21
    return-void

    .line 258
    :cond_22
    # getter for: Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/core/SmartCoverManager;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Get tired of waiting SmartCoverService... Please register later"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private declared-synchronized unRegister(Lcom/lge/systemservice/core/ISmartCoverCallback;)V
    .registers 7
    .param p1, "clbk"    # Lcom/lge/systemservice/core/ISmartCoverCallback;

    .prologue
    .line 274
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->awaiter:Ljava/util/List;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_25

    .line 275
    :try_start_4
    iget-object v3, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->awaiter:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 274
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_22

    .line 278
    :try_start_a
    iget-object v3, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registrant:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 280
    iget-object v3, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->this$0:Lcom/lge/systemservice/core/SmartCoverManager;

    # invokes: Lcom/lge/systemservice/core/SmartCoverManager;->getService()Lcom/lge/systemservice/core/ISmartCoverManager;
    invoke-static {v3}, Lcom/lge/systemservice/core/SmartCoverManager;->access$0(Lcom/lge/systemservice/core/SmartCoverManager;)Lcom/lge/systemservice/core/ISmartCoverManager;
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_25

    move-result-object v2

    .line 281
    .local v2, "service":Lcom/lge/systemservice/core/ISmartCoverManager;
    if-eqz v2, :cond_20

    .line 283
    const/4 v1, 0x1

    .line 284
    .local v1, "eventType":I
    :try_start_18
    instance-of v3, p1, Lcom/lge/systemservice/core/SmartCoverManager$PenCallback;

    if-eqz v3, :cond_28

    .line 285
    const/4 v1, 0x2

    .line 291
    :cond_1d
    :goto_1d
    invoke-interface {v2, p1, v1}, Lcom/lge/systemservice/core/ISmartCoverManager;->unRegisterCallback(Lcom/lge/systemservice/core/ISmartCoverCallback;I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_20} :catch_34
    .catchall {:try_start_18 .. :try_end_20} :catchall_25

    .line 296
    .end local v1    # "eventType":I
    :cond_20
    :goto_20
    monitor-exit p0

    return-void

    .line 274
    .end local v2    # "service":Lcom/lge/systemservice/core/ISmartCoverManager;
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v4
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    throw v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v3

    monitor-exit p0

    throw v3

    .line 286
    .restart local v1    # "eventType":I
    .restart local v2    # "service":Lcom/lge/systemservice/core/ISmartCoverManager;
    :cond_28
    :try_start_28
    instance-of v3, p1, Lcom/lge/systemservice/core/SmartCoverManager$SubCoverCallback;

    if-eqz v3, :cond_2e

    .line 287
    const/4 v1, 0x3

    .line 288
    goto :goto_1d

    :cond_2e
    instance-of v3, p1, Lcom/lge/systemservice/core/SmartCoverManager$FolderCallback;
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_30} :catch_34
    .catchall {:try_start_28 .. :try_end_30} :catchall_25

    if-eqz v3, :cond_1d

    .line 289
    const/4 v1, 0x4

    goto :goto_1d

    .line 292
    :catch_34
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_35
    # getter for: Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/core/SmartCoverManager;->access$1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_25

    goto :goto_20
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 300
    # getter for: Lcom/lge/systemservice/core/SmartCoverManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/core/SmartCoverManager;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartCoverService has been died. Tring to recover, please wait.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v1, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->awaiter:Ljava/util/List;

    monitor-enter v1

    .line 302
    :try_start_c
    iget-object v0, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->awaiter:Ljava/util/List;

    iget-object v2, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registrant:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 303
    iget-object v0, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registrant:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->tryCount:I

    .line 305
    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registerDelayedLocked()V

    .line 301
    monitor-exit v1

    .line 307
    return-void

    .line 301
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_20

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 165
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_7

    .line 166
    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager$CallbackRegister;->registerAwaiter()V

    .line 168
    :cond_7
    return-void
.end method
