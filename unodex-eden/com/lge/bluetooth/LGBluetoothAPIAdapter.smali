.class public final Lcom/lge/bluetooth/LGBluetoothAPIAdapter;
.super Ljava/lang/Object;
.source "LGBluetoothAPIAdapter.java"


# static fields
.field private static final DBG:Z = true

.field private static final SERVICE_NAME:Ljava/lang/String; = "lg_bluetoothapi_service"

.field private static final TAG:Ljava/lang/String; = "LGBluetoothAPIAdapter"

.field private static mLGAPIAdapter:Lcom/lge/bluetooth/LGBluetoothAPIAdapter;

.field private static mService:Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;


# instance fields
.field private final mLGAPIManager:Lcom/lge/systemservice/core/ILGBluetoothAPIManager;

.field private final mManagerCallback:Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

.field private mProxyServiceStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/ILGBluetoothAPIManager;)V
    .registers 5
    .param p1, "managerService"    # Lcom/lge/systemservice/core/ILGBluetoothAPIManager;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v1, Lcom/lge/bluetooth/LGBluetoothAPIAdapter$1;

    invoke-direct {v1, p0}, Lcom/lge/bluetooth/LGBluetoothAPIAdapter$1;-><init>(Lcom/lge/bluetooth/LGBluetoothAPIAdapter;)V

    iput-object v1, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mManagerCallback:Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    .line 81
    if-nez p1, :cond_1b

    .line 82
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "LGBluetoothAPIManager service is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_1b
    if-eqz p1, :cond_26

    iget-object v1, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mManagerCallback:Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

    if-eqz v1, :cond_26

    .line 87
    :try_start_21
    iget-object v1, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mManagerCallback:Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

    invoke-interface {p1, v1}, Lcom/lge/systemservice/core/ILGBluetoothAPIManager;->unregisterAdapter(Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_31

    .line 95
    :cond_26
    :goto_26
    :try_start_26
    iget-object v1, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mManagerCallback:Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

    invoke-interface {p1, v1}, Lcom/lge/systemservice/core/ILGBluetoothAPIManager;->registerAdapter(Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;)Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    move-result-object v1

    sput-object v1, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mService:Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2e} :catch_3a

    .line 99
    :goto_2e
    iput-object p1, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mLGAPIManager:Lcom/lge/systemservice/core/ILGBluetoothAPIManager;

    .line 101
    return-void

    .line 88
    :catch_31
    move-exception v0

    .line 89
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LGBluetoothAPIAdapter"

    const-string v2, "[BTUI] unregisterAdapter RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 96
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_3a
    move-exception v0

    .line 97
    .restart local v0    # "re":Landroid/os/RemoteException;
    const-string v1, "LGBluetoothAPIAdapter"

    const-string v2, "[BTUI] RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e
.end method

.method static synthetic access$0(Lcom/lge/bluetooth/LGBluetoothAPIAdapter;)Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mManagerCallback:Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;)V
    .registers 1

    .prologue
    .line 50
    sput-object p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mService:Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    return-void
.end method

.method static synthetic access$2(Lcom/lge/bluetooth/LGBluetoothAPIAdapter;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3()Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mService:Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    return-object v0
.end method

.method public static declared-synchronized getDefaultAdapter()Lcom/lge/bluetooth/LGBluetoothAPIAdapter;
    .registers 5

    .prologue
    .line 66
    const-class v3, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mLGAPIAdapter:Lcom/lge/bluetooth/LGBluetoothAPIAdapter;

    if-eqz v2, :cond_b

    sget-object v2, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mService:Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    if-nez v2, :cond_1e

    .line 68
    :cond_b
    const-string v2, "lg_bluetoothapi_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 69
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_22

    .line 70
    invoke-static {v0}, Lcom/lge/systemservice/core/ILGBluetoothAPIManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ILGBluetoothAPIManager;

    move-result-object v1

    .line 71
    .local v1, "managerService":Lcom/lge/systemservice/core/ILGBluetoothAPIManager;
    new-instance v2, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;

    invoke-direct {v2, v1}, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;-><init>(Lcom/lge/systemservice/core/ILGBluetoothAPIManager;)V

    sput-object v2, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mLGAPIAdapter:Lcom/lge/bluetooth/LGBluetoothAPIAdapter;

    .line 76
    .end local v1    # "managerService":Lcom/lge/systemservice/core/ILGBluetoothAPIManager;
    :cond_1e
    :goto_1e
    sget-object v2, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mLGAPIAdapter:Lcom/lge/bluetooth/LGBluetoothAPIAdapter;
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_2a

    monitor-exit v3

    return-object v2

    .line 73
    :cond_22
    :try_start_22
    const-string v2, "LGBluetoothAPIAdapter"

    const-string v4, "Bluetooth binder is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2a

    goto :goto_1e

    .line 66
    :catchall_2a
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public a2dpSetContentProtectionType(I)Z
    .registers 7
    .param p1, "cp_type"    # I

    .prologue
    .line 188
    const-string v1, "LGBluetoothAPIAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[BTUI] Call a2dpSetContentProtectionType :  cp_type ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :try_start_14
    iget-object v2, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mManagerCallback:Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

    monitor-enter v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_48

    .line 191
    :try_start_17
    sget-object v1, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mService:Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    if-eqz v1, :cond_42

    .line 192
    const-string v1, "LGBluetoothAPIAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[BTUI] Call a2dpSetContentProtectionType :  cp_type ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object v1, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mService:Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    if-nez v1, :cond_3a

    .line 194
    const-string v1, "LGBluetoothAPIAdapter"

    const-string v3, "mService is Null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_3a
    sget-object v1, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mService:Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    invoke-interface {v1, p1}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;->a2dpSetContentProtectionType(I)Z

    move-result v1

    monitor-exit v2

    .line 202
    :goto_41
    return v1

    .line 190
    :cond_42
    monitor-exit v2

    .line 202
    :goto_43
    const/4 v1, 0x0

    goto :goto_41

    .line 190
    :catchall_45
    move-exception v1

    monitor-exit v2
    :try_end_47
    .catchall {:try_start_17 .. :try_end_47} :catchall_45

    :try_start_47
    throw v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_48} :catch_48

    .line 199
    :catch_48
    move-exception v0

    .line 200
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LGBluetoothAPIAdapter"

    const-string v2, "[BTUI] RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mLGAPIManager:Lcom/lge/systemservice/core/ILGBluetoothAPIManager;

    iget-object v2, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mManagerCallback:Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

    invoke-interface {v1, v2}, Lcom/lge/systemservice/core/ILGBluetoothAPIManager;->unregisterAdapter(Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_b
    .catchall {:try_start_0 .. :try_end_7} :catchall_17

    .line 171
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 173
    :goto_a
    return-void

    .line 168
    :catch_b
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_c
    const-string v1, "LGBluetoothAPIAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_17

    .line 171
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_a

    .line 170
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_17
    move-exception v1

    .line 171
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 172
    throw v1
.end method

.method getBluetoothService(Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;)Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;
    .registers 5
    .param p1, "cb"    # Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

    .prologue
    .line 149
    iget-object v1, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mManagerCallback:Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

    monitor-enter v1

    .line 150
    if-nez p1, :cond_10

    .line 151
    :try_start_5
    const-string v0, "LGBluetoothAPIAdapter"

    const-string v2, "getBluetoothService() called with no BluetoothManagerCallback"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_c
    :goto_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1e

    .line 156
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mService:Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    return-object v0

    .line 152
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 153
    iget-object v0, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 149
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public getTrustState(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 241
    :try_start_0
    iget-object v2, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mManagerCallback:Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

    monitor-enter v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_27

    .line 242
    :try_start_3
    sget-object v1, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mService:Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    if-eqz v1, :cond_21

    .line 243
    const-string v1, "LGBluetoothAPIAdapter"

    const-string v3, "[BTUI] LGBluetoothAPIAdapter  : getTrustState"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-object v1, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mService:Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    if-nez v1, :cond_19

    .line 245
    const-string v1, "LGBluetoothAPIAdapter"

    const-string v3, "mService is Null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_19
    sget-object v1, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mService:Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    invoke-interface {v1, p1}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;->getTrustState(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    monitor-exit v2

    .line 253
    :goto_20
    return v1

    .line 241
    :cond_21
    monitor-exit v2

    .line 253
    :goto_22
    const/4 v1, 0x0

    goto :goto_20

    .line 241
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    :try_start_26
    throw v1
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_27} :catch_27

    .line 250
    :catch_27
    move-exception v0

    .line 251
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LGBluetoothAPIAdapter"

    const-string v2, "[BTUI] RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method

.method public onProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profileId"    # I
    .param p3, "newState"    # I
    .param p4, "prevState"    # I

    .prologue
    .line 216
    :try_start_0
    iget-object v2, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mManagerCallback:Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

    monitor-enter v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_23

    .line 217
    :try_start_3
    sget-object v1, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mService:Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    if-eqz v1, :cond_1e

    .line 218
    const-string v1, "LGBluetoothAPIAdapter"

    const-string v3, "[BTUI] LGBluetoothAPIAdapter  : onProfileConnectionStateChanged"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-object v1, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mService:Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    if-nez v1, :cond_19

    .line 220
    const-string v1, "LGBluetoothAPIAdapter"

    const-string v3, "mService is Null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_19
    sget-object v1, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mService:Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;->onProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    .line 216
    :cond_1e
    monitor-exit v2

    .line 229
    :goto_1f
    return-void

    .line 216
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    :try_start_22
    throw v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_23} :catch_23

    .line 225
    :catch_23
    move-exception v0

    .line 226
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LGBluetoothAPIAdapter"

    const-string v2, "[BTUI] RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method

.method removeServiceStateCallback(Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;)V
    .registers 4
    .param p1, "cb"    # Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

    .prologue
    .line 160
    iget-object v1, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mManagerCallback:Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

    monitor-enter v1

    .line 161
    :try_start_3
    iget-object v0, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 160
    monitor-exit v1

    .line 163
    return-void

    .line 160
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public setTrustState(Landroid/bluetooth/BluetoothDevice;Z)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "value"    # Z

    .prologue
    .line 266
    :try_start_0
    iget-object v2, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mManagerCallback:Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

    monitor-enter v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_27

    .line 267
    :try_start_3
    sget-object v1, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mService:Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    if-eqz v1, :cond_21

    .line 268
    const-string v1, "LGBluetoothAPIAdapter"

    const-string v3, "[BTUI] LGBluetoothAPIAdapter  : setTrustState"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object v1, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mService:Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    if-nez v1, :cond_19

    .line 270
    const-string v1, "LGBluetoothAPIAdapter"

    const-string v3, "mService is Null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_19
    sget-object v1, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mService:Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    invoke-interface {v1, p1, p2}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;->setTrustState(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v1

    monitor-exit v2

    .line 278
    :goto_20
    return v1

    .line 266
    :cond_21
    monitor-exit v2

    .line 278
    :goto_22
    const/4 v1, 0x0

    goto :goto_20

    .line 266
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    :try_start_26
    throw v1
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_27} :catch_27

    .line 275
    :catch_27
    move-exception v0

    .line 276
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LGBluetoothAPIAdapter"

    const-string v2, "[BTUI] RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method
