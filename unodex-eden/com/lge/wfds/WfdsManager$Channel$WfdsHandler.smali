.class Lcom/lge/wfds/WfdsManager$Channel$WfdsHandler;
.super Landroid/os/Handler;
.source "WfdsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsManager$Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WfdsHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/wfds/WfdsManager$Channel;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsManager$Channel;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/lge/wfds/WfdsManager$Channel$WfdsHandler;->this$1:Lcom/lge/wfds/WfdsManager$Channel;

    .line 311
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 312
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x900000

    .line 316
    iget-object v4, p0, Lcom/lge/wfds/WfdsManager$Channel$WfdsHandler;->this$1:Lcom/lge/wfds/WfdsManager$Channel;

    iget v5, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->getListener(I)Ljava/lang/Object;
    invoke-static {v4, v5}, Lcom/lge/wfds/WfdsManager$Channel;->access$0(Lcom/lge/wfds/WfdsManager$Channel;I)Ljava/lang/Object;

    move-result-object v1

    .line 318
    .local v1, "listener":Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_1ee

    .line 444
    const-string v4, "WfdsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WfdsHandler : Ignored "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Landroid/os/Message;->what:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .end local v1    # "listener":Ljava/lang/Object;
    :cond_27
    :goto_27
    return-void

    .line 323
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_28
    iget-object v4, p0, Lcom/lge/wfds/WfdsManager$Channel$WfdsHandler;->this$1:Lcom/lge/wfds/WfdsManager$Channel;

    # getter for: Lcom/lge/wfds/WfdsManager$Channel;->mChannelListener:Lcom/lge/wfds/WfdsManager$WfdsChannelListener;
    invoke-static {v4}, Lcom/lge/wfds/WfdsManager$Channel;->access$1(Lcom/lge/wfds/WfdsManager$Channel;)Lcom/lge/wfds/WfdsManager$WfdsChannelListener;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 324
    iget-object v4, p0, Lcom/lge/wfds/WfdsManager$Channel$WfdsHandler;->this$1:Lcom/lge/wfds/WfdsManager$Channel;

    # getter for: Lcom/lge/wfds/WfdsManager$Channel;->mChannelListener:Lcom/lge/wfds/WfdsManager$WfdsChannelListener;
    invoke-static {v4}, Lcom/lge/wfds/WfdsManager$Channel;->access$1(Lcom/lge/wfds/WfdsManager$Channel;)Lcom/lge/wfds/WfdsManager$WfdsChannelListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/lge/wfds/WfdsManager$WfdsChannelListener;->onChannelDisconnected()V

    .line 325
    iget-object v4, p0, Lcom/lge/wfds/WfdsManager$Channel$WfdsHandler;->this$1:Lcom/lge/wfds/WfdsManager$Channel;

    invoke-static {v4, v8}, Lcom/lge/wfds/WfdsManager$Channel;->access$2(Lcom/lge/wfds/WfdsManager$Channel;Lcom/lge/wfds/WfdsManager$WfdsChannelListener;)V

    goto :goto_27

    .line 333
    :sswitch_3f
    const-string v4, "WfdsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WfdsHandler : WfdsActionListener.onSuccess for ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    iget v6, p1, Landroid/os/Message;->what:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 333
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    if-eqz v1, :cond_27

    .line 336
    check-cast v1, Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-interface {v1}, Lcom/lge/wfds/WfdsManager$WfdsActionListener;->onSuccess()V

    goto :goto_27

    .line 344
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_64
    const-string v4, "WfdsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WfdsHandler : WfdsActionListener.onFailure for ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    iget v6, p1, Landroid/os/Message;->what:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 344
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    if-eqz v1, :cond_27

    .line 347
    check-cast v1, Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v4}, Lcom/lge/wfds/WfdsManager$WfdsActionListener;->onFailure(I)V

    goto :goto_27

    .line 355
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_8b
    const-string v4, "WfdsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WfdsHandler : WfdsIntListener.onSuccess for ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    iget v6, p1, Landroid/os/Message;->what:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 355
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    if-eqz v1, :cond_27

    .line 358
    check-cast v1, Lcom/lge/wfds/WfdsManager$WfdsIntListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v4}, Lcom/lge/wfds/WfdsManager$WfdsIntListener;->onSuccess(I)V

    goto/16 :goto_27

    .line 366
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_b3
    const-string v4, "WfdsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WfdsHandler : WfdsIntListener.onFailure for ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    iget v6, p1, Landroid/os/Message;->what:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 366
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    if-eqz v1, :cond_27

    .line 369
    check-cast v1, Lcom/lge/wfds/WfdsManager$WfdsIntListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v4}, Lcom/lge/wfds/WfdsManager$WfdsIntListener;->onFailure(I)V

    goto/16 :goto_27

    .line 377
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_db
    const-string v4, "WfdsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WfdsHandler : WfdsStrListener.onSuccess for ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    iget v6, p1, Landroid/os/Message;->what:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 377
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    if-eqz v1, :cond_27

    .line 380
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, "sValue":Ljava/lang/String;
    check-cast v1, Lcom/lge/wfds/WfdsManager$WfdsStrListener;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-interface {v1, v3}, Lcom/lge/wfds/WfdsManager$WfdsStrListener;->onSuccess(Ljava/lang/String;)V

    goto/16 :goto_27

    .line 389
    .end local v3    # "sValue":Ljava/lang/String;
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_109
    const-string v4, "WfdsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WfdsHandler : WfdsStrListener.onFailure for ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    iget v6, p1, Landroid/os/Message;->what:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 389
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    if-eqz v1, :cond_27

    .line 392
    check-cast v1, Lcom/lge/wfds/WfdsManager$WfdsStrListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v4}, Lcom/lge/wfds/WfdsManager$WfdsStrListener;->onFailure(I)V

    goto/16 :goto_27

    .line 400
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_131
    const-string v4, "WfdsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WfdsHandler : WfdsIntStrListener.onSuccess for ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    iget v6, p1, Landroid/os/Message;->what:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 400
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    if-eqz v1, :cond_27

    .line 403
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "mac":Ljava/lang/String;
    check-cast v1, Lcom/lge/wfds/WfdsManager$WfdsIntStrListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v4, v2}, Lcom/lge/wfds/WfdsManager$WfdsIntStrListener;->onSuccess(ILjava/lang/String;)V

    goto/16 :goto_27

    .line 412
    .end local v2    # "mac":Ljava/lang/String;
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_161
    const-string v4, "WfdsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WfdsHandler : WfdsIntStrListener.onFailure for ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    iget v6, p1, Landroid/os/Message;->what:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 412
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    if-eqz v1, :cond_27

    .line 415
    check-cast v1, Lcom/lge/wfds/WfdsManager$WfdsIntStrListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v4}, Lcom/lge/wfds/WfdsManager$WfdsIntStrListener;->onFailure(I)V

    goto/16 :goto_27

    .line 423
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_189
    const-string v4, "WfdsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WfdsHandler : WfdsAspSessionListener.onSuccess for ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    iget v6, p1, Landroid/os/Message;->what:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 423
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    if-eqz v1, :cond_27

    .line 426
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-class v5, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 427
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/session/AspSession;

    .line 428
    .local v0, "aspSession":Lcom/lge/wfds/session/AspSession;
    check-cast v1, Lcom/lge/wfds/WfdsManager$WfdsAspSessionListener;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-interface {v1, v0}, Lcom/lge/wfds/WfdsManager$WfdsAspSessionListener;->onSuccess(Lcom/lge/wfds/session/AspSession;)V

    goto/16 :goto_27

    .line 436
    .end local v0    # "aspSession":Lcom/lge/wfds/session/AspSession;
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_1c6
    const-string v4, "WfdsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WfdsHandler : WfdsAspSessionListener.onFailure for ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    iget v6, p1, Landroid/os/Message;->what:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 436
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    if-eqz v1, :cond_27

    .line 439
    check-cast v1, Lcom/lge/wfds/WfdsManager$WfdsAspSessionListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v4}, Lcom/lge/wfds/WfdsManager$WfdsAspSessionListener;->onFailure(I)V

    goto/16 :goto_27

    .line 318
    :sswitch_data_1ee
    .sparse-switch
        0x11004 -> :sswitch_28
        0x90001f -> :sswitch_64
        0x900020 -> :sswitch_3f
        0x900021 -> :sswitch_b3
        0x900022 -> :sswitch_8b
        0x900023 -> :sswitch_109
        0x900024 -> :sswitch_db
        0x900025 -> :sswitch_161
        0x900026 -> :sswitch_131
        0x900027 -> :sswitch_1c6
        0x900028 -> :sswitch_189
    .end sparse-switch
.end method
