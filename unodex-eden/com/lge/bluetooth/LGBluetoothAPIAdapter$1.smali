.class Lcom/lge/bluetooth/LGBluetoothAPIAdapter$1;
.super Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback$Stub;
.source "LGBluetoothAPIAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bluetooth/LGBluetoothAPIAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/bluetooth/LGBluetoothAPIAdapter;


# direct methods
.method constructor <init>(Lcom/lge/bluetooth/LGBluetoothAPIAdapter;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter$1;->this$0:Lcom/lge/bluetooth/LGBluetoothAPIAdapter;

    .line 104
    invoke-direct {p0}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothServiceDown()V
    .registers 7

    .prologue
    .line 127
    const-string v2, "LGBluetoothAPIAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onBluetoothServiceDown: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mService:Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;
    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->access$3()Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v2, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter$1;->this$0:Lcom/lge/bluetooth/LGBluetoothAPIAdapter;

    # getter for: Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mManagerCallback:Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    invoke-static {v2}, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->access$0(Lcom/lge/bluetooth/LGBluetoothAPIAdapter;)Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

    move-result-object v3

    monitor-enter v3

    .line 130
    const/4 v2, 0x0

    :try_start_20
    invoke-static {v2}, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->access$1(Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;)V

    .line 131
    iget-object v2, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter$1;->this$0:Lcom/lge/bluetooth/LGBluetoothAPIAdapter;

    # getter for: Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->access$2(Lcom/lge/bluetooth/LGBluetoothAPIAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_35

    .line 129
    monitor-exit v3

    .line 143
    return-void

    .line 131
    :cond_35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    :try_end_3b
    .catchall {:try_start_20 .. :try_end_3b} :catchall_4a

    .line 133
    .local v0, "cb":Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    if-eqz v0, :cond_4d

    .line 134
    :try_start_3d
    invoke-interface {v0}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;->onBluetoothServiceDown()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41
    .catchall {:try_start_3d .. :try_end_40} :catchall_4a

    goto :goto_2d

    .line 138
    :catch_41
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Exception;
    :try_start_42
    const-string v4, "LGBluetoothAPIAdapter"

    const-string v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 129
    .end local v0    # "cb":Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_4a
    move-exception v2

    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_4a

    throw v2

    .line 136
    .restart local v0    # "cb":Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    :cond_4d
    :try_start_4d
    const-string v4, "LGBluetoothAPIAdapter"

    const-string v5, "onBluetoothServiceDown: cb is null!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_54} :catch_41
    .catchall {:try_start_4d .. :try_end_54} :catchall_4a

    goto :goto_2d
.end method

.method public onBluetoothServiceUp(Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;)V
    .registers 8
    .param p1, "bluetoothService"    # Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    .prologue
    .line 107
    const-string v2, "LGBluetoothAPIAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onBluetoothServiceUp: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v2, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter$1;->this$0:Lcom/lge/bluetooth/LGBluetoothAPIAdapter;

    # getter for: Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mManagerCallback:Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    invoke-static {v2}, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->access$0(Lcom/lge/bluetooth/LGBluetoothAPIAdapter;)Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

    move-result-object v3

    monitor-enter v3

    .line 110
    :try_start_1b
    invoke-static {p1}, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->access$1(Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;)V

    .line 111
    iget-object v2, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter$1;->this$0:Lcom/lge/bluetooth/LGBluetoothAPIAdapter;

    # getter for: Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->access$2(Lcom/lge/bluetooth/LGBluetoothAPIAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_30

    .line 109
    monitor-exit v3

    .line 123
    return-void

    .line 111
    :cond_30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_45

    .line 113
    .local v0, "cb":Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    if-eqz v0, :cond_48

    .line 114
    :try_start_38
    invoke-interface {v0, p1}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;->onBluetoothServiceUp(Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3b} :catch_3c
    .catchall {:try_start_38 .. :try_end_3b} :catchall_45

    goto :goto_28

    .line 118
    :catch_3c
    move-exception v1

    .line 119
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_3d
    const-string v4, "LGBluetoothAPIAdapter"

    const-string v5, "[BTUI] RemoteException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    .line 109
    .end local v0    # "cb":Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    .end local v1    # "re":Landroid/os/RemoteException;
    :catchall_45
    move-exception v2

    monitor-exit v3
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_45

    throw v2

    .line 116
    .restart local v0    # "cb":Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    :cond_48
    :try_start_48
    const-string v4, "LGBluetoothAPIAdapter"

    const-string v5, "onBluetoothServiceUp: cb is null!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4f} :catch_3c
    .catchall {:try_start_48 .. :try_end_4f} :catchall_45

    goto :goto_28
.end method
