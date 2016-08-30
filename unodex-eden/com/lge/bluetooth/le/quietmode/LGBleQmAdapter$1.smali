.class Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter$1;
.super Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback$Stub;
.source "LGBleQmAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;


# direct methods
.method constructor <init>(Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter$1;->this$0:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    .line 291
    invoke-direct {p0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBleQmServiceDown()V
    .registers 7

    .prologue
    .line 311
    # getter for: Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onBleQmServiceDown: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter$1;->this$0:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    # getter for: Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;
    invoke-static {v4}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->access$4(Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;)Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter$1;->this$0:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    # getter for: Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mManagerCallback:Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;
    invoke-static {v2}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->access$1(Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;)Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;

    move-result-object v3

    monitor-enter v3

    .line 313
    :try_start_23
    iget-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter$1;->this$0:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->access$2(Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;)V

    .line 316
    iget-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter$1;->this$0:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    # getter for: Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->access$3(Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3b

    .line 312
    monitor-exit v3

    .line 328
    return-void

    .line 316
    :cond_3b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;
    :try_end_41
    .catchall {:try_start_23 .. :try_end_41} :catchall_52

    .line 318
    .local v0, "cb":Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;
    if-eqz v0, :cond_55

    .line 319
    :try_start_43
    invoke-interface {v0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;->onBleQmServiceDown()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47
    .catchall {:try_start_43 .. :try_end_46} :catchall_52

    goto :goto_33

    .line 323
    :catch_47
    move-exception v1

    .line 324
    .local v1, "e":Ljava/lang/Exception;
    :try_start_48
    # getter for: Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 312
    .end local v0    # "cb":Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_52
    move-exception v2

    monitor-exit v3
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_52

    throw v2

    .line 321
    .restart local v0    # "cb":Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;
    :cond_55
    :try_start_55
    # getter for: Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onBleQmServiceDown: cb is null!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5e} :catch_47
    .catchall {:try_start_55 .. :try_end_5e} :catchall_52

    goto :goto_33
.end method

.method public onBleQmServiceUp(Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;)V
    .registers 8
    .param p1, "bleQmService"    # Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    .prologue
    .line 293
    # getter for: Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onBleQmServiceUp: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter$1;->this$0:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    # getter for: Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mManagerCallback:Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;
    invoke-static {v2}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->access$1(Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;)Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;

    move-result-object v3

    monitor-enter v3

    .line 295
    :try_start_1d
    iget-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter$1;->this$0:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    invoke-static {v2, p1}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->access$2(Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;)V

    .line 296
    iget-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter$1;->this$0:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    # getter for: Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->access$3(Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_34

    .line 294
    monitor-exit v3

    .line 308
    return-void

    .line 296
    :cond_34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;
    :try_end_3a
    .catchall {:try_start_1d .. :try_end_3a} :catchall_4b

    .line 298
    .local v0, "cb":Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;
    if-eqz v0, :cond_4e

    .line 299
    :try_start_3c
    invoke-interface {v0, p1}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;->onBleQmServiceUp(Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_40
    .catchall {:try_start_3c .. :try_end_3f} :catchall_4b

    goto :goto_2c

    .line 303
    :catch_40
    move-exception v1

    .line 304
    .local v1, "e":Ljava/lang/Exception;
    :try_start_41
    # getter for: Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 294
    .end local v0    # "cb":Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_4b
    move-exception v2

    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_4b

    throw v2

    .line 301
    .restart local v0    # "cb":Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;
    :cond_4e
    :try_start_4e
    # getter for: Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onBleQmServiceUp: cb is null!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_57} :catch_40
    .catchall {:try_start_4e .. :try_end_57} :catchall_4b

    goto :goto_2c
.end method
