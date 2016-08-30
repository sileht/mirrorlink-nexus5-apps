.class public Landroid/app/ActivityManagerEx;
.super Landroid/app/ActivityManager;
.source "ActivityManagerEx.java"


# static fields
.field public static final BLOCK_SCREEN_SHOT:I = 0x1

.field public static final SET_PINNED_IN_RECENT:I = 0x3

.field private static final TAG_EX:Ljava/lang/String; = "ActivityManagerEx"

.field public static final UNBLOCK_SCREEN_SHOT:I = 0x0

.field public static final UNSET_PINNED_IN_RECENT:I = 0x2

.field private static localLOGV:Z

.field private static sService:Landroid/app/IActivityManagerEx;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerEx;->localLOGV:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 57
    return-void
.end method

.method private static getServiceEx()Landroid/app/IActivityManagerEx;
    .registers 2

    .prologue
    .line 60
    sget-object v0, Landroid/app/ActivityManagerEx;->sService:Landroid/app/IActivityManagerEx;

    if-nez v0, :cond_1b

    .line 61
    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IActivityManagerEx$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManagerEx;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityManagerEx;->sService:Landroid/app/IActivityManagerEx;

    .line 62
    sget-object v0, Landroid/app/ActivityManagerEx;->sService:Landroid/app/IActivityManagerEx;

    if-nez v0, :cond_1b

    .line 63
    const-string v0, "ActivityManagerEx"

    const-string v1, "ActivityManagerEx is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1b
    sget-object v0, Landroid/app/ActivityManagerEx;->sService:Landroid/app/IActivityManagerEx;

    return-object v0
.end method


# virtual methods
.method public getRecentTasksForUserEx(III)Ljava/util/List;
    .registers 7
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Landroid/app/RecentTaskInfoEx;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-static {}, Landroid/app/ActivityManagerEx;->getServiceEx()Landroid/app/IActivityManagerEx;

    move-result-object v0

    .line 157
    .local v0, "amEx":Landroid/app/IActivityManagerEx;
    if-eqz v0, :cond_b

    .line 158
    :try_start_7
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityManagerEx;->getRecentTasksForUserEx(III)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v1

    .line 164
    :cond_b
    :goto_b
    return-object v1

    .line 162
    :catch_c
    move-exception v2

    goto :goto_b
.end method

.method public registerActivityTrigger(Lcom/lge/frameworks/IActivityTrigger;)V
    .registers 4
    .param p1, "trigger"    # Lcom/lge/frameworks/IActivityTrigger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Landroid/app/ActivityManagerEx;->getServiceEx()Landroid/app/IActivityManagerEx;

    move-result-object v0

    .line 104
    .local v0, "amEx":Landroid/app/IActivityManagerEx;
    if-eqz v0, :cond_9

    .line 105
    :try_start_6
    invoke-interface {v0, p1}, Landroid/app/IActivityManagerEx;->registerActivityTrigger(Lcom/lge/frameworks/IActivityTrigger;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 109
    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v1

    goto :goto_9
.end method

.method public setISStatus(I)V
    .registers 6
    .param p1, "isIntegrityServiceEnabled"    # I

    .prologue
    .line 126
    invoke-static {}, Landroid/app/ActivityManagerEx;->getServiceEx()Landroid/app/IActivityManagerEx;

    move-result-object v0

    .line 127
    .local v0, "amEx":Landroid/app/IActivityManagerEx;
    if-nez v0, :cond_e

    .line 128
    const-string v2, "ActivityManagerEx"

    const-string v3, "cannot get ActivityManagerEx"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_d
    return-void

    .line 132
    :cond_e
    :try_start_e
    invoke-interface {v0, p1}, Landroid/app/IActivityManagerEx;->setISStatus(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_d

    .line 133
    :catch_12
    move-exception v1

    .line 134
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ActivityManagerEx"

    const-string v3, "RemoteException for setISStatus"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public showLockTaskToastEx()V
    .registers 5

    .prologue
    .line 112
    invoke-static {}, Landroid/app/ActivityManagerEx;->getServiceEx()Landroid/app/IActivityManagerEx;

    move-result-object v0

    .line 113
    .local v0, "amEx":Landroid/app/IActivityManagerEx;
    if-nez v0, :cond_e

    .line 114
    const-string v2, "ActivityManagerEx"

    const-string v3, "cannot get ActivityManagerEx"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_d
    return-void

    .line 118
    :cond_e
    :try_start_e
    invoke-interface {v0}, Landroid/app/IActivityManagerEx;->showLockTaskToastEx()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_d

    .line 119
    :catch_12
    move-exception v1

    .line 120
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ActivityManagerEx"

    const-string v3, "RemoteException for showLockTaskToastEx"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public updateFlag(II)V
    .registers 5
    .param p1, "flag"    # I
    .param p2, "taskId"    # I

    .prologue
    .line 81
    invoke-static {}, Landroid/app/ActivityManagerEx;->getServiceEx()Landroid/app/IActivityManagerEx;

    move-result-object v0

    .line 83
    .local v0, "amEx":Landroid/app/IActivityManagerEx;
    if-eqz v0, :cond_9

    .line 84
    :try_start_6
    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManagerEx;->updateFlag(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 88
    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v1

    goto :goto_9
.end method
