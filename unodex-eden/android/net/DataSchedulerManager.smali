.class public Landroid/net/DataSchedulerManager;
.super Ljava/lang/Object;
.source "DataSchedulerManager.java"


# static fields
.field public static final INTENT_LLKKLK_ENABED_CHANGED:Ljava/lang/String; = "com.lge.android.intent.action.ACTION_LLKKLK_ENABED_CHANGED"

.field public static final LG_DATASCHEDULER_SERVICE:Ljava/lang/String; = "lgdatascheduler"

.field private static final TAG:Ljava/lang/String; = "DataSchedulerService"

.field private static sInstance:Landroid/net/DataSchedulerManager;


# instance fields
.field private mService:Landroid/net/IDataSchedulerManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Landroid/net/DataSchedulerManager;->sInstance:Landroid/net/DataSchedulerManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/DataSchedulerManager;->mService:Landroid/net/IDataSchedulerManager;

    .line 29
    return-void
.end method

.method public static getDataSchedulerEnabled()Z
    .registers 2

    .prologue
    .line 96
    const-string v0, "persist.lg.data.llkklk"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Landroid/net/DataSchedulerManager;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Landroid/net/DataSchedulerManager;->sInstance:Landroid/net/DataSchedulerManager;

    if-nez v0, :cond_b

    .line 33
    new-instance v0, Landroid/net/DataSchedulerManager;

    invoke-direct {v0}, Landroid/net/DataSchedulerManager;-><init>()V

    sput-object v0, Landroid/net/DataSchedulerManager;->sInstance:Landroid/net/DataSchedulerManager;

    .line 35
    :cond_b
    sget-object v0, Landroid/net/DataSchedulerManager;->sInstance:Landroid/net/DataSchedulerManager;

    return-object v0
.end method

.method private final getService()Landroid/net/IDataSchedulerManager;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Landroid/net/DataSchedulerManager;->mService:Landroid/net/IDataSchedulerManager;

    if-nez v0, :cond_10

    .line 41
    const-string v0, "lgdatascheduler"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IDataSchedulerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IDataSchedulerManager;

    move-result-object v0

    iput-object v0, p0, Landroid/net/DataSchedulerManager;->mService:Landroid/net/IDataSchedulerManager;

    .line 43
    :cond_10
    iget-object v0, p0, Landroid/net/DataSchedulerManager;->mService:Landroid/net/IDataSchedulerManager;

    return-object v0
.end method


# virtual methods
.method public getAlarmControlState(ILjava/lang/String;J)I
    .registers 8
    .param p1, "uid"    # I
    .param p2, "alarm"    # Ljava/lang/String;
    .param p3, "repeat"    # J

    .prologue
    .line 106
    :try_start_0
    invoke-direct {p0}, Landroid/net/DataSchedulerManager;->getService()Landroid/net/IDataSchedulerManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/net/IDataSchedulerManager;->getAlarmControlState(ILjava/lang/String;J)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 111
    :goto_8
    return v1

    .line 107
    :catch_9
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataSchedulerService"

    const-string v2, "getAlarmControlState failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 111
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getPolicy(ILjava/lang/String;JJ)Landroid/net/DataSchedulerPolicy;
    .registers 16
    .param p1, "uid"    # I
    .param p2, "alarm"    # Ljava/lang/String;
    .param p3, "repeat"    # J
    .param p5, "triggerAt"    # J

    .prologue
    .line 54
    :try_start_0
    invoke-direct {p0}, Landroid/net/DataSchedulerManager;->getService()Landroid/net/IDataSchedulerManager;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/net/IDataSchedulerManager;->getPolicy(ILjava/lang/String;JJ)Landroid/net/DataSchedulerPolicy;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    .line 59
    :goto_c
    return-object v1

    .line 55
    :catch_d
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataSchedulerService"

    const-string v2, "getPolicy failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 59
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public setDataSchedulerEnabled(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 83
    :try_start_0
    invoke-direct {p0}, Landroid/net/DataSchedulerManager;->getService()Landroid/net/IDataSchedulerManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/IDataSchedulerManager;->setDataSchedulerEnabled(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 88
    :goto_7
    return-void

    .line 84
    :catch_8
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataSchedulerService"

    const-string v2, "llkklk Enabled failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7
.end method

.method public updateAppInfo([Landroid/net/DataSchedulerAppInfo;)V
    .registers 5
    .param p1, "appInfos"    # [Landroid/net/DataSchedulerAppInfo;

    .prologue
    .line 69
    :try_start_0
    invoke-direct {p0}, Landroid/net/DataSchedulerManager;->getService()Landroid/net/IDataSchedulerManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/IDataSchedulerManager;->updateAppInfo([Landroid/net/DataSchedulerAppInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 74
    :goto_7
    return-void

    .line 70
    :catch_8
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataSchedulerService"

    const-string v2, "updateAppInfo failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7
.end method
