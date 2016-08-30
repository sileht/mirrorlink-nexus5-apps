.class public Lcom/lge/cic/eden/alarm/EdenRetryHelper;
.super Ljava/lang/Object;
.source "EdenRetryHelper.java"


# static fields
.field public static final DELAY_MILLIS_PENDING_TASK:J = 0x2710L

.field public static final DELAY_MILLIS_RECEIVED_INTENT_AFTER_STOP_SELF:J = 0x1388L

.field public static final PENDING_TASK_REQUEST_CODE:I = 0x64

.field public static final RECEIVED_INTENT_AFTER_STOP_SELF_REQUEST_CODE:I = 0x65

.field static logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/lge/cic/eden/alarm/EdenRetryHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/alarm/EdenRetryHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static retryPendingTask(Landroid/content/Context;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    sget-object v2, Lcom/lge/cic/eden/alarm/EdenRetryHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "retryPendingTask() - EventClusteringTask will be processd after 10000 ms"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 22
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 23
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "MSG_TYPE"

    const-string v3, "START_ANALYSIS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.lge.cic.eden.service"

    const-string v3, "com.lge.cic.eden.service.EdenService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 28
    const/16 v2, 0x64

    const-wide/16 v4, 0x2710

    invoke-static {p0, v2, v1, v4, v5}, Lcom/lge/cic/eden/alarm/EdenAlarmManager;->registerElapsedRealtimeAlarm(Landroid/content/Context;ILandroid/content/Intent;J)V

    .line 29
    return-void
.end method

.method public static retryReceivedIntentAfterStopSelf(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    sget-object v0, Lcom/lge/cic/eden/alarm/EdenRetryHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "retryReceivedIntentAfterStopSelf() - EventClusteringTask will be processd after 5000 ms"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 32
    const/16 v0, 0x65

    const-wide/16 v2, 0x1388

    invoke-static {p0, v0, p1, v2, v3}, Lcom/lge/cic/eden/alarm/EdenAlarmManager;->registerElapsedRealtimeAlarm(Landroid/content/Context;ILandroid/content/Intent;J)V

    .line 33
    return-void
.end method
