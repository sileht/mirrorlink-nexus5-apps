.class public Landroid/mtp/LGMtpServer;
.super Ljava/lang/Object;
.source "LGMtpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDatabase:Landroid/mtp/LGMtpDatabase;

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-string v0, "hook_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/mtp/LGMtpDatabase;Z)V
    .registers 5
    .param p1, "database"    # Landroid/mtp/LGMtpDatabase;
    .param p2, "usePtp"    # Z

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "LGMtpServer"

    iput-object v0, p0, Landroid/mtp/LGMtpServer;->TAG:Ljava/lang/String;

    .line 38
    const-string v0, "LGMtpServer"

    const-string v1, "LGMtpServer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/mtp/LGMtpServer;->native_setup(Landroid/mtp/LGMtpDatabase;Z)V

    .line 40
    invoke-virtual {p1, p0}, Landroid/mtp/LGMtpDatabase;->setServer(Landroid/mtp/LGMtpServer;)V

    .line 41
    iput-object p1, p0, Landroid/mtp/LGMtpServer;->mDatabase:Landroid/mtp/LGMtpDatabase;

    .line 42
    return-void
.end method

.method private final native native_add_storage(Landroid/mtp/MtpStorage;)V
.end method

.method private final native native_cleanup()V
.end method

.method private final native native_object_info_changed(I)V
.end method

.method private final native native_remove_storage(I)V
.end method

.method private final native native_run()V
.end method

.method private final native native_send_device_property_changed(I)V
.end method

.method private final native native_send_object_added(I)V
.end method

.method private final native native_send_object_removed(I)V
.end method

.method private final native native_setup(Landroid/mtp/LGMtpDatabase;Z)V
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .registers 2
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/mtp/LGMtpServer;->native_add_storage(Landroid/mtp/MtpStorage;)V

    .line 75
    return-void
.end method

.method public objectInfoChanged(I)V
    .registers 2
    .param p1, "handle"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/mtp/LGMtpServer;->native_object_info_changed(I)V

    .line 71
    return-void
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .registers 3
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/mtp/LGMtpServer;->native_remove_storage(I)V

    .line 79
    return-void
.end method

.method public run()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/mtp/LGMtpServer;->native_run()V

    .line 52
    invoke-direct {p0}, Landroid/mtp/LGMtpServer;->native_cleanup()V

    .line 53
    iget-object v0, p0, Landroid/mtp/LGMtpServer;->mDatabase:Landroid/mtp/LGMtpDatabase;

    invoke-virtual {v0}, Landroid/mtp/LGMtpDatabase;->callFinalize()V

    .line 54
    return-void
.end method

.method public sendDevicePropertyChanged(I)V
    .registers 2
    .param p1, "property"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/mtp/LGMtpServer;->native_send_device_property_changed(I)V

    .line 66
    return-void
.end method

.method public sendObjectAdded(I)V
    .registers 2
    .param p1, "handle"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/mtp/LGMtpServer;->native_send_object_added(I)V

    .line 58
    return-void
.end method

.method public sendObjectRemoved(I)V
    .registers 2
    .param p1, "handle"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/mtp/LGMtpServer;->native_send_object_removed(I)V

    .line 62
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 45
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "LGMtpServer"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 46
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 47
    return-void
.end method
