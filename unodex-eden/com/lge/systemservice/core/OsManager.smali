.class public Lcom/lge/systemservice/core/OsManager;
.super Ljava/lang/Object;
.source "OsManager.java"


# static fields
.field static final SERVICE_NAME:Ljava/lang/String; = "osservice"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/lge/systemservice/core/IOsManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/lge/systemservice/core/OsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/OsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/lge/systemservice/core/OsManager;Lcom/lge/systemservice/core/IOsManager;)V
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lge/systemservice/core/OsManager;->mService:Lcom/lge/systemservice/core/IOsManager;

    return-void
.end method

.method private final getService()Lcom/lge/systemservice/core/IOsManager;
    .registers 4

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/systemservice/core/OsManager;->mService:Lcom/lge/systemservice/core/IOsManager;

    if-nez v0, :cond_23

    .line 34
    const-string v0, "osservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/IOsManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IOsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/OsManager;->mService:Lcom/lge/systemservice/core/IOsManager;

    .line 35
    iget-object v0, p0, Lcom/lge/systemservice/core/OsManager;->mService:Lcom/lge/systemservice/core/IOsManager;

    if-eqz v0, :cond_23

    .line 37
    :try_start_14
    iget-object v0, p0, Lcom/lge/systemservice/core/OsManager;->mService:Lcom/lge/systemservice/core/IOsManager;

    invoke-interface {v0}, Lcom/lge/systemservice/core/IOsManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/lge/systemservice/core/OsManager$1;

    invoke-direct {v1, p0}, Lcom/lge/systemservice/core/OsManager$1;-><init>(Lcom/lge/systemservice/core/OsManager;)V

    .line 40
    const/4 v2, 0x0

    .line 37
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_26

    .line 44
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/lge/systemservice/core/OsManager;->mService:Lcom/lge/systemservice/core/IOsManager;

    return-object v0

    .line 41
    :catch_26
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/OsManager;->mService:Lcom/lge/systemservice/core/IOsManager;

    goto :goto_23
.end method


# virtual methods
.method public goToSleepWithForce(JI)V
    .registers 9
    .param p1, "time"    # J
    .param p3, "reason"    # I

    .prologue
    .line 99
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/OsManager;->getService()Lcom/lge/systemservice/core/IOsManager;

    move-result-object v1

    .line 100
    .local v1, "service":Lcom/lge/systemservice/core/IOsManager;
    if-eqz v1, :cond_9

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/systemservice/core/IOsManager;->goToSleepWithForce(JI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 105
    .end local v1    # "service":Lcom/lge/systemservice/core/IOsManager;
    :cond_9
    :goto_9
    return-void

    .line 102
    :catch_a
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/OsManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start goToSleepWithForce"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public informUserRemoved(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 195
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/OsManager;->getService()Lcom/lge/systemservice/core/IOsManager;

    move-result-object v0

    .line 196
    .local v0, "service":Lcom/lge/systemservice/core/IOsManager;
    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IOsManager;->informUserRemoved(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 200
    .end local v0    # "service":Lcom/lge/systemservice/core/IOsManager;
    :cond_9
    :goto_9
    return-void

    .line 198
    :catch_a
    move-exception v1

    sget-object v1, Lcom/lge/systemservice/core/OsManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get informUserRemoved()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public informUserSwitch(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 183
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/OsManager;->getService()Lcom/lge/systemservice/core/IOsManager;

    move-result-object v0

    .line 184
    .local v0, "service":Lcom/lge/systemservice/core/IOsManager;
    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IOsManager;->informUserSwitch(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 188
    .end local v0    # "service":Lcom/lge/systemservice/core/IOsManager;
    :cond_9
    :goto_9
    return-void

    .line 186
    :catch_a
    move-exception v1

    sget-object v1, Lcom/lge/systemservice/core/OsManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get informUserSwitch()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public makeNonPersistent(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/lge/systemservice/core/OsManager;->getService()Lcom/lge/systemservice/core/IOsManager;

    move-result-object v1

    .line 154
    .local v1, "service":Lcom/lge/systemservice/core/IOsManager;
    if-eqz v1, :cond_9

    :try_start_6
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IOsManager;->makeNonPersistent(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 159
    :cond_9
    :goto_9
    return-void

    .line 156
    :catch_a
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/OsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to make non-persistent : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public makeNonPersistentUsingPackageName(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/lge/systemservice/core/OsManager;->getService()Lcom/lge/systemservice/core/IOsManager;

    move-result-object v1

    .line 170
    .local v1, "service":Lcom/lge/systemservice/core/IOsManager;
    if-eqz v1, :cond_9

    :try_start_6
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IOsManager;->makeNonPersistentUsingPackageName(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 175
    :cond_9
    :goto_9
    return-void

    .line 172
    :catch_a
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/OsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to make non-persistent : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public makePersistent(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/lge/systemservice/core/OsManager;->getService()Lcom/lge/systemservice/core/IOsManager;

    move-result-object v1

    .line 137
    .local v1, "service":Lcom/lge/systemservice/core/IOsManager;
    if-eqz v1, :cond_20

    :try_start_6
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IOsManager;->makePersistent(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v2

    .line 142
    :goto_a
    return-object v2

    .line 139
    :catch_b
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/OsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to make persistent : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 62
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/OsManager;->getService()Lcom/lge/systemservice/core/IOsManager;

    move-result-object v1

    .line 63
    .local v1, "service":Lcom/lge/systemservice/core/IOsManager;
    if-eqz v1, :cond_9

    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/IOsManager;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 67
    .end local v1    # "service":Lcom/lge/systemservice/core/IOsManager;
    :cond_9
    :goto_9
    return-void

    .line 64
    :catch_a
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/OsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to set system property: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public stopRingtoneSound()V
    .registers 5

    .prologue
    .line 78
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/OsManager;->getService()Lcom/lge/systemservice/core/IOsManager;

    move-result-object v1

    .line 79
    .local v1, "service":Lcom/lge/systemservice/core/IOsManager;
    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/lge/systemservice/core/IOsManager;->stopRingtoneSound()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 84
    .end local v1    # "service":Lcom/lge/systemservice/core/IOsManager;
    :cond_9
    :goto_9
    return-void

    .line 81
    :catch_a
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/OsManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to stop ringtone sound"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public wakeUpWithForce(J)V
    .registers 8
    .param p1, "time"    # J

    .prologue
    .line 119
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/OsManager;->getService()Lcom/lge/systemservice/core/IOsManager;

    move-result-object v1

    .line 120
    .local v1, "service":Lcom/lge/systemservice/core/IOsManager;
    if-eqz v1, :cond_9

    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/IOsManager;->wakeUpWithForce(J)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 125
    .end local v1    # "service":Lcom/lge/systemservice/core/IOsManager;
    :cond_9
    :goto_9
    return-void

    .line 122
    :catch_a
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/OsManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start wakeUpWithForce"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method
