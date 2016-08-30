.class public Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;
.super Ljava/lang/Object;
.source "EdenEventClusteringAlarmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlarmInfo"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public end_hour:I

.field public end_minute:I

.field public intent:Landroid/content/Intent;

.field public start_hour:I

.field public start_minute:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;IIII)V
    .registers 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "start_hour"    # I
    .param p4, "start_minute"    # I
    .param p5, "end_hour"    # I
    .param p6, "end_minute"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->action:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->intent:Landroid/content/Intent;

    .line 50
    iput p3, p0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->start_hour:I

    .line 51
    iput p4, p0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->start_minute:I

    .line 52
    iput p5, p0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->end_hour:I

    .line 53
    iput p6, p0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->end_minute:I

    .line 54
    return-void
.end method

.method private concatenatedTime(II)I
    .registers 4
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 57
    mul-int/lit8 v0, p1, 0x64

    add-int/2addr v0, p2

    return v0
.end method


# virtual methods
.method public checkIfPendingIntentIsRegistered(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->intent:Landroid/content/Intent;

    const/high16 v2, 0x20000000

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public isAvailableTime()Z
    .registers 7

    .prologue
    .line 71
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 72
    .local v0, "gregorianCalendar":Ljava/util/GregorianCalendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 73
    .local v1, "hour":I
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 74
    .local v2, "minute":I
    # getter for: Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->access$0()Lcom/lge/cic/eden/utils/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    current day: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, v1, v2}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->isAvailableTime(II)Z

    move-result v3

    return v3
.end method

.method public isAvailableTime(II)Z
    .registers 6
    .param p1, "currHour"    # I
    .param p2, "currMinute"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->concatenatedTime(II)I

    move-result v0

    .line 62
    .local v0, "cnctTime":I
    iget v1, p0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->start_hour:I

    iget v2, p0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->start_minute:I

    invoke-direct {p0, v1, v2}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->concatenatedTime(II)I

    move-result v1

    if-lt v0, v1, :cond_1a

    .line 63
    iget v1, p0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->end_hour:I

    iget v2, p0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->end_minute:I

    invoke-direct {p0, v1, v2}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->concatenatedTime(II)I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 64
    const/4 v1, 0x1

    .line 66
    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public register(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    iget-object v1, p0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->intent:Landroid/content/Intent;

    iget v2, p0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->start_hour:I

    iget v3, p0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->start_minute:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->end_hour:I

    iget v6, p0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->end_minute:I

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/lge/cic/eden/alarm/EdenAlarmManager;->registerAlarm(Landroid/content/Context;Landroid/content/Intent;IIZII)V

    .line 87
    return-void
.end method
