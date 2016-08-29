.class Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICommonAPIService.java"

# interfaces
.implements Lcom/mirrorlink/android/commonapi/ICommonAPIService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;
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
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 196
    return-void
.end method


# virtual methods
.method public applicationStarted(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "commonApiLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 246
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 248
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v2, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-object v2, p0, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 252
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_25

    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 243
    return-void

    .line 254
    :catchall_25
    move-exception v2

    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 254
    throw v2
.end method

.method public applicationStopping(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 270
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 272
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v2, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget-object v2, p0, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 275
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 267
    return-void

    .line 277
    :catchall_22
    move-exception v2

    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 277
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCertificationManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/ICertificationListener;)Lcom/mirrorlink/android/commonapi/ICertificationManager;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mirrorlink/android/commonapi/ICertificationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 300
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 303
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string/jumbo v4, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    if-eqz p2, :cond_18

    invoke-interface {p2}, Lcom/mirrorlink/android/commonapi/ICertificationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 306
    iget-object v3, p0, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 307
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 308
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mirrorlink/android/commonapi/ICertificationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/ICertificationManager;
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_34

    move-result-object v2

    .line 311
    .local v2, "_result":Lcom/mirrorlink/android/commonapi/ICertificationManager;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 314
    return-object v2

    .line 310
    .end local v2    # "_result":Lcom/mirrorlink/android/commonapi/ICertificationManager;
    :catchall_34
    move-exception v3

    .line 311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 310
    throw v3
.end method

.method public getCommonAPIServiceApiLevel()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 220
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 223
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 224
    iget-object v3, p0, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 225
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 226
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    move-result v2

    .line 229
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 232
    return v2

    .line 228
    .end local v2    # "_result":I
    :catchall_23
    move-exception v3

    .line 229
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 228
    throw v3
.end method

.method public getConnectionManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IConnectionListener;)Lcom/mirrorlink/android/commonapi/IConnectionManager;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mirrorlink/android/commonapi/IConnectionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 334
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 337
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string/jumbo v4, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    if-eqz p2, :cond_18

    invoke-interface {p2}, Lcom/mirrorlink/android/commonapi/IConnectionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 340
    iget-object v3, p0, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 341
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 342
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mirrorlink/android/commonapi/IConnectionManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IConnectionManager;
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_34

    move-result-object v2

    .line 345
    .local v2, "_result":Lcom/mirrorlink/android/commonapi/IConnectionManager;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 348
    return-object v2

    .line 344
    .end local v2    # "_result":Lcom/mirrorlink/android/commonapi/IConnectionManager;
    :catchall_34
    move-exception v3

    .line 345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 344
    throw v3
.end method

.method public getContextManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IContextListener;)Lcom/mirrorlink/android/commonapi/IContextManager;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mirrorlink/android/commonapi/IContextListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 367
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 368
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 371
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string/jumbo v4, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    if-eqz p2, :cond_18

    invoke-interface {p2}, Lcom/mirrorlink/android/commonapi/IContextListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 374
    iget-object v3, p0, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 375
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 376
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mirrorlink/android/commonapi/IContextManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IContextManager;
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_34

    move-result-object v2

    .line 379
    .local v2, "_result":Lcom/mirrorlink/android/commonapi/IContextManager;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 382
    return-object v2

    .line 378
    .end local v2    # "_result":Lcom/mirrorlink/android/commonapi/IContextManager;
    :catchall_34
    move-exception v3

    .line 379
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 378
    throw v3
.end method

.method public getDataServicesManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDataServicesListener;)Lcom/mirrorlink/android/commonapi/IDataServicesManager;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mirrorlink/android/commonapi/IDataServicesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 402
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 405
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string/jumbo v4, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 407
    if-eqz p2, :cond_18

    invoke-interface {p2}, Lcom/mirrorlink/android/commonapi/IDataServicesListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 408
    iget-object v3, p0, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 409
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 410
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mirrorlink/android/commonapi/IDataServicesManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IDataServicesManager;
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_34

    move-result-object v2

    .line 413
    .local v2, "_result":Lcom/mirrorlink/android/commonapi/IDataServicesManager;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 416
    return-object v2

    .line 412
    .end local v2    # "_result":Lcom/mirrorlink/android/commonapi/IDataServicesManager;
    :catchall_34
    move-exception v3

    .line 413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 412
    throw v3
.end method

.method public getDeviceInfoManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;)Lcom/mirrorlink/android/commonapi/IDeviceInfoManager;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 436
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 439
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string/jumbo v4, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 441
    if-eqz p2, :cond_18

    invoke-interface {p2}, Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 442
    iget-object v3, p0, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 443
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 444
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mirrorlink/android/commonapi/IDeviceInfoManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IDeviceInfoManager;
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_35

    move-result-object v2

    .line 447
    .local v2, "_result":Lcom/mirrorlink/android/commonapi/IDeviceInfoManager;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 450
    return-object v2

    .line 446
    .end local v2    # "_result":Lcom/mirrorlink/android/commonapi/IDeviceInfoManager;
    :catchall_35
    move-exception v3

    .line 447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 446
    throw v3
.end method

.method public getDeviceStatusManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;)Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 470
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 473
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string/jumbo v4, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 475
    if-eqz p2, :cond_18

    invoke-interface {p2}, Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 476
    iget-object v3, p0, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 478
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mirrorlink/android/commonapi/IDeviceStatusManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_35

    move-result-object v2

    .line 481
    .local v2, "_result":Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 484
    return-object v2

    .line 480
    .end local v2    # "_result":Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;
    :catchall_35
    move-exception v3

    .line 481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 480
    throw v3
.end method

.method public getDisplayManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDisplayListener;)Lcom/mirrorlink/android/commonapi/IDisplayManager;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mirrorlink/android/commonapi/IDisplayListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 503
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 504
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 507
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string/jumbo v4, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 509
    if-eqz p2, :cond_18

    invoke-interface {p2}, Lcom/mirrorlink/android/commonapi/IDisplayListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 510
    iget-object v3, p0, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 511
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 512
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mirrorlink/android/commonapi/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IDisplayManager;
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_35

    move-result-object v2

    .line 515
    .local v2, "_result":Lcom/mirrorlink/android/commonapi/IDisplayManager;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 518
    return-object v2

    .line 514
    .end local v2    # "_result":Lcom/mirrorlink/android/commonapi/IDisplayManager;
    :catchall_35
    move-exception v3

    .line 515
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 514
    throw v3
.end method

.method public getEventMappingManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IEventMappingListener;)Lcom/mirrorlink/android/commonapi/IEventMappingManager;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mirrorlink/android/commonapi/IEventMappingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 538
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 541
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string/jumbo v4, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 543
    if-eqz p2, :cond_18

    invoke-interface {p2}, Lcom/mirrorlink/android/commonapi/IEventMappingListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 544
    iget-object v3, p0, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 545
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 546
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mirrorlink/android/commonapi/IEventMappingManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IEventMappingManager;
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_35

    move-result-object v2

    .line 549
    .local v2, "_result":Lcom/mirrorlink/android/commonapi/IEventMappingManager;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 552
    return-object v2

    .line 548
    .end local v2    # "_result":Lcom/mirrorlink/android/commonapi/IEventMappingManager;
    :catchall_35
    move-exception v3

    .line 549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 548
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 206
    const-string/jumbo v0, "com.mirrorlink.android.commonapi.ICommonAPIService"

    return-object v0
.end method

.method public getNotificationManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/INotificationListener;)Lcom/mirrorlink/android/commonapi/INotificationManager;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mirrorlink/android/commonapi/INotificationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 572
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 575
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string/jumbo v4, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 577
    if-eqz p2, :cond_18

    invoke-interface {p2}, Lcom/mirrorlink/android/commonapi/INotificationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 578
    iget-object v3, p0, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 579
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 580
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mirrorlink/android/commonapi/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/INotificationManager;
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_35

    move-result-object v2

    .line 583
    .local v2, "_result":Lcom/mirrorlink/android/commonapi/INotificationManager;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 586
    return-object v2

    .line 582
    .end local v2    # "_result":Lcom/mirrorlink/android/commonapi/INotificationManager;
    :catchall_35
    move-exception v3

    .line 583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 582
    throw v3
.end method
