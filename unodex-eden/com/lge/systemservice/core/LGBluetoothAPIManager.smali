.class public Lcom/lge/systemservice/core/LGBluetoothAPIManager;
.super Ljava/lang/Object;
.source "LGBluetoothAPIManager.java"


# static fields
.field static final SERVICE_NAME:Ljava/lang/String; = "lg_bluetoothapi_service"

.field private static final TAG:Ljava/lang/String; = "LGBluetoothAPIManager"


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/lge/systemservice/core/ILGBluetoothAPIManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "lg_bluetoothapi_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/ILGBluetoothAPIManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ILGBluetoothAPIManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LGBluetoothAPIManager;->mService:Lcom/lge/systemservice/core/ILGBluetoothAPIManager;

    .line 38
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/lge/systemservice/core/LGBluetoothAPIManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 39
    return-void
.end method


# virtual methods
.method public registerAdapter(Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;)Lcom/lge/systemservice/core/ILGBluetoothAPIManager;
    .registers 6
    .param p1, "callback"    # Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/lge/systemservice/core/LGBluetoothAPIManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    .line 49
    .local v0, "added":Z
    const-string v1, "LGBluetoothAPIManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[BTUI] Added callback: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_13

    const-string p1, "null"

    .end local p1    # "callback":Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    :cond_13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v1, p0, Lcom/lge/systemservice/core/LGBluetoothAPIManager;->mService:Lcom/lge/systemservice/core/ILGBluetoothAPIManager;

    return-object v1
.end method

.method public unregisterAdapter(Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/systemservice/core/LGBluetoothAPIManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 61
    return-void
.end method
