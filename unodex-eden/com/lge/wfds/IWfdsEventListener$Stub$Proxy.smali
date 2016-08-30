.class Lcom/lge/wfds/IWfdsEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWfdsEventListener.java"

# interfaces
.implements Lcom/lge/wfds/IWfdsEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/IWfdsEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/lge/wfds/IWfdsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 187
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lge/wfds/IWfdsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    const-string v0, "com.lge.wfds.IWfdsEventListener"

    return-object v0
.end method

.method public wfdsAdvertiseStatus(III)V
    .registers 9
    .param p1, "adv_id"    # I
    .param p2, "status"    # I
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 274
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.lge.wfds.IWfdsEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-object v1, p0, Lcom/lge/wfds/IWfdsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1e

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 283
    return-void

    .line 280
    :catchall_1e
    move-exception v1

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 282
    throw v1
.end method

.method public wfdsConnectSessionRequest(Lcom/lge/wfds/WfdsDevice;)V
    .registers 7
    .param p1, "device"    # Lcom/lge/wfds/WfdsDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 300
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.lge.wfds.IWfdsEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 301
    if-eqz p1, :cond_1f

    .line 302
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/lge/wfds/WfdsDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 308
    :goto_13
    iget-object v1, p0, Lcom/lge/wfds/IWfdsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_24

    .line 311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 313
    return-void

    .line 306
    :cond_1f
    const/4 v1, 0x0

    :try_start_20
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_13

    .line 310
    :catchall_24
    move-exception v1

    .line 311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 312
    throw v1
.end method

.method public wfdsConnectStatus(Ljava/lang/String;IILjava/lang/String;)V
    .registers 10
    .param p1, "sessionMac"    # Ljava/lang/String;
    .param p2, "sessionId"    # I
    .param p3, "status"    # I
    .param p4, "deferred_session_resp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 388
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.lge.wfds.IWfdsEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/lge/wfds/IWfdsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_21

    .line 396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 398
    return-void

    .line 395
    :catchall_21
    move-exception v1

    .line 396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 397
    throw v1
.end method

.method public wfdsPortStatus(Ljava/lang/String;ILjava/lang/String;III)V
    .registers 12
    .param p1, "sessionMac"    # Ljava/lang/String;
    .param p2, "sessionId"    # I
    .param p3, "ip"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "proto"    # I
    .param p6, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 455
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.lge.wfds.IWfdsEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    iget-object v1, p0, Lcom/lge/wfds/IWfdsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_28

    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 467
    return-void

    .line 464
    :catchall_28
    move-exception v1

    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 466
    throw v1
.end method

.method public wfdsSearchResult(ILcom/lge/wfds/WfdsDevice;)V
    .registers 8
    .param p1, "searchId"    # I
    .param p2, "device"    # Lcom/lge/wfds/WfdsDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 214
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.lge.wfds.IWfdsEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    if-eqz p2, :cond_22

    .line 217
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/lge/wfds/WfdsDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 223
    :goto_16
    iget-object v1, p0, Lcom/lge/wfds/IWfdsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_27

    .line 226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 228
    return-void

    .line 221
    :cond_22
    const/4 v1, 0x0

    :try_start_23
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_16

    .line 225
    :catchall_27
    move-exception v1

    .line 226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 227
    throw v1
.end method

.method public wfdsSearchTerminated(II)V
    .registers 8
    .param p1, "serarch_id"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 246
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.lge.wfds.IWfdsEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget-object v1, p0, Lcom/lge/wfds/IWfdsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1b

    .line 252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 254
    return-void

    .line 251
    :catchall_1b
    move-exception v1

    .line 252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 253
    throw v1
.end method

.method public wfdsSessionConfigRequest(IZI)V
    .registers 9
    .param p1, "session_id"    # I
    .param p2, "get_network_config_PIN"    # Z
    .param p3, "network_config_PIN"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 355
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_5
    const-string v2, "com.lge.wfds.IWfdsEventListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    if-eqz p2, :cond_21

    :goto_f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget-object v1, p0, Lcom/lge/wfds/IWfdsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_23

    .line 362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 364
    return-void

    .line 357
    :cond_21
    const/4 v1, 0x0

    goto :goto_f

    .line 361
    :catchall_23
    move-exception v1

    .line 362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 363
    throw v1
.end method

.method public wfdsSessionRequest(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    .registers 13
    .param p1, "adv_id"    # I
    .param p2, "session_mac"    # Ljava/lang/String;
    .param p3, "session_dev_name"    # Ljava/lang/String;
    .param p4, "session_id"    # I
    .param p5, "session_info"    # Ljava/lang/String;
    .param p6, "get_network_config_PIN"    # Z
    .param p7, "network_config_PIN"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 328
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_5
    const-string v2, "com.lge.wfds.IWfdsEventListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    if-eqz p6, :cond_2d

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget-object v1, p0, Lcom/lge/wfds/IWfdsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2f

    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 341
    return-void

    .line 334
    :cond_2d
    const/4 v1, 0x0

    goto :goto_1b

    .line 338
    :catchall_2f
    move-exception v1

    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 340
    throw v1
.end method

.method public wfdsSessionStatus(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 11
    .param p1, "sessionMac"    # Ljava/lang/String;
    .param p2, "sessionId"    # I
    .param p3, "state"    # I
    .param p4, "status"    # I
    .param p5, "additional_info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 424
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.lge.wfds.IWfdsEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/lge/wfds/IWfdsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_25

    .line 433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 435
    return-void

    .line 432
    :catchall_25
    move-exception v1

    .line 433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 434
    throw v1
.end method
