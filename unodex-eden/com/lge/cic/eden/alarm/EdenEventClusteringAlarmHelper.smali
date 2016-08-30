.class public Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;
.super Ljava/lang/Object;
.source "EdenEventClusteringAlarmHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;
    }
.end annotation


# static fields
.field public static final ACTION_RESTART_ANALYSIS:Ljava/lang/String; = "com.lge.cic.eden.intent.action.ACTION_RESTART_ANALYSIS"

.field public static final ACTION_SHOW_CARD:Ljava/lang/String; = "com.lge.cic.eden.intent.action.ACTION_SHOW_CARD"

.field public static final ACTION_START_ANALYSIS:Ljava/lang/String; = "com.lge.cic.eden.intent.action.ACTION_START_ANALYSIS"

.field public static final ACTION_STOP_ANALYSIS:Ljava/lang/String; = "com.lge.cic.eden.intent.action.ACTION_STOP_ANALYSIS"

.field static final RESTART_ALARM_HOUR:I = 0x3

.field static final RESTART_ALARM_MINUTE:I = 0x0

.field static final SHOW_CARD_HOUR:I = 0x13

.field static final SHOW_CARD_MINUTE:I = 0x0

.field static final START_ALARM_HOUR:I = 0x2

.field static final START_ALARM_MINUTE:I = 0x0

.field static final STOP_ALARM_HOUR:I = 0x9

.field static final STOP_ALARM_MINUTE:I

.field private static final logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/lge/cic/eden/utils/Logger;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    return-object v0
.end method

.method public static checkConcatenatedDate(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 107
    .line 108
    const-string v3, "com.lge.cic.eden.pref"

    .line 107
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v3, "PREF_KEY_PREVIOUS_REGISTER_ALARM"

    const/4 v4, -0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 111
    .local v1, "result":I
    sget-object v3, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    get PREF_KEY_PREVIOUS_REGISTER_ALARM : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 113
    if-lez v1, :cond_25

    .line 114
    const/4 v2, 0x1

    .line 116
    :cond_25
    return v2
.end method

.method public static currentConcatenatedDate()I
    .registers 3

    .prologue
    .line 91
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 92
    .local v0, "gregorianCalendar":Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x2710

    .line 93
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x64

    .line 92
    add-int/2addr v1, v2

    .line 94
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 92
    add-int/2addr v1, v2

    return v1
.end method

.method public static getCardAlarmInfo(Landroid/content/Context;)Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 141
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/lge/cic/eden/receiver/EdenBroadcastReceiver;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.lge.cic.eden.intent.action.ACTION_SHOW_CARD"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    new-instance v0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;

    const-string v1, "com.lge.cic.eden.intent.action.ACTION_SHOW_CARD"

    .line 144
    const/16 v3, 0x13

    const/16 v5, 0x15

    move v6, v4

    .line 143
    invoke-direct/range {v0 .. v6}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;IIII)V

    return-object v0
.end method

.method public static getRestartAlarmInfo(Landroid/content/Context;)Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 127
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/lge/cic/eden/receiver/EdenBroadcastReceiver;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.lge.cic.eden.intent.action.ACTION_RESTART_ANALYSIS"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    new-instance v0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;

    const-string v1, "com.lge.cic.eden.intent.action.ACTION_RESTART_ANALYSIS"

    .line 130
    const/4 v3, 0x3

    const/4 v5, 0x4

    move v6, v4

    .line 129
    invoke-direct/range {v0 .. v6}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;IIII)V

    return-object v0
.end method

.method public static getStartAlarmInfo(Landroid/content/Context;)Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 120
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/lge/cic/eden/receiver/EdenBroadcastReceiver;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.lge.cic.eden.intent.action.ACTION_START_ANALYSIS"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    new-instance v0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;

    const-string v1, "com.lge.cic.eden.intent.action.ACTION_START_ANALYSIS"

    .line 123
    const/4 v3, 0x2

    const/4 v5, 0x3

    move v6, v4

    .line 122
    invoke-direct/range {v0 .. v6}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;IIII)V

    return-object v0
.end method

.method public static getStopAlarmInfo(Landroid/content/Context;)Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 134
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/lge/cic/eden/receiver/EdenBroadcastReceiver;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.lge.cic.eden.intent.action.ACTION_STOP_ANALYSIS"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    new-instance v0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;

    const-string v1, "com.lge.cic.eden.intent.action.ACTION_STOP_ANALYSIS"

    .line 137
    const/16 v3, 0x9

    const/16 v5, 0xa

    move v6, v4

    .line 136
    invoke-direct/range {v0 .. v6}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;IIII)V

    return-object v0
.end method

.method public static receiveCardAlarm(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    sget-object v1, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "receiveCardAlarm()"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 215
    sget-object v1, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "show card"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 217
    new-instance v0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;

    invoke-direct {v0, p0}, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, "cardPublisher":Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;
    invoke-virtual {v0}, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->showCardIfNeeded()V

    .line 222
    return-void
.end method

.method public static receiveRestartAlarm(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    sget-object v1, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "receiveRestartAlarm()"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 185
    invoke-static {p0}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->getRestartAlarmInfo(Landroid/content/Context;)Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;

    move-result-object v0

    .line 186
    .local v0, "alarmInfo":Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;
    invoke-virtual {v0}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->isAvailableTime()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 187
    sget-object v1, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "restart analysis"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 188
    new-instance v1, Lcom/lge/cic/eden/utils/ServiceTriggeringHelper;

    invoke-direct {v1}, Lcom/lge/cic/eden/utils/ServiceTriggeringHelper;-><init>()V

    invoke-virtual {v1, p0}, Lcom/lge/cic/eden/utils/ServiceTriggeringHelper;->startAnalysisService(Landroid/content/Context;)V

    .line 189
    const/4 v1, 0x1

    .line 194
    :goto_21
    return v1

    .line 191
    :cond_22
    sget-object v1, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "received restart signal. but I can\'t."

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 194
    const/4 v1, 0x0

    goto :goto_21
.end method

.method public static receiveStartAlarm(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    sget-object v1, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "receiveStartAlarm()"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 170
    invoke-static {p0}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->getStartAlarmInfo(Landroid/content/Context;)Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;

    move-result-object v0

    .line 171
    .local v0, "alarmInfo":Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;
    invoke-virtual {v0}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->isAvailableTime()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 172
    sget-object v1, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "start analysis"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 173
    new-instance v1, Lcom/lge/cic/eden/utils/ServiceTriggeringHelper;

    invoke-direct {v1}, Lcom/lge/cic/eden/utils/ServiceTriggeringHelper;-><init>()V

    invoke-virtual {v1, p0}, Lcom/lge/cic/eden/utils/ServiceTriggeringHelper;->startAnalysisService(Landroid/content/Context;)V

    .line 174
    const/4 v1, 0x1

    .line 179
    :goto_21
    return v1

    .line 176
    :cond_22
    sget-object v1, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "received start signal. but I can\'t."

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 179
    const/4 v1, 0x0

    goto :goto_21
.end method

.method public static receiveStopAlarm(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    sget-object v1, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "receiveStopAlarm()"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 200
    invoke-static {p0}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->getStopAlarmInfo(Landroid/content/Context;)Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;

    move-result-object v0

    .line 201
    .local v0, "alarmInfo":Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;
    invoke-virtual {v0}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->isAvailableTime()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 202
    sget-object v1, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "stop analysis"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 203
    new-instance v1, Lcom/lge/cic/eden/utils/ServiceTriggeringHelper;

    invoke-direct {v1}, Lcom/lge/cic/eden/utils/ServiceTriggeringHelper;-><init>()V

    invoke-virtual {v1, p0}, Lcom/lge/cic/eden/utils/ServiceTriggeringHelper;->stopAnalysisService(Landroid/content/Context;)V

    .line 208
    :goto_20
    return-void

    .line 205
    :cond_21
    sget-object v1, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "received stop signal. but I can\'t."

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_20
.end method

.method public static registerCardAlarm(Landroid/content/Context;)V
    .registers 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 243
    sget-object v0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "registerCardAlarm()"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 244
    invoke-static {p0}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->getCardAlarmInfo(Landroid/content/Context;)Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;

    move-result-object v7

    .line 246
    .local v7, "alarmInfo":Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;
    new-instance v8, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 247
    .local v8, "rnd":Ljava/util/Random;
    const/16 v0, 0x76

    invoke-virtual {v8, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    .line 248
    .local v9, "rndTime":I
    int-to-double v0, v9

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    div-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v2, v0, 0x13

    .line 249
    .local v2, "showCard_hour":I
    rem-int/lit8 v0, v9, 0x3c

    add-int/lit8 v3, v0, 0x0

    .line 250
    .local v3, "showCard_minute":I
    sget-object v0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "    show card at h: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", m: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 252
    iget-object v1, v7, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->intent:Landroid/content/Intent;

    .line 253
    const/16 v5, 0x15

    move-object v0, p0

    move v6, v4

    .line 252
    invoke-static/range {v0 .. v6}, Lcom/lge/cic/eden/alarm/EdenAlarmManager;->registerAlarm(Landroid/content/Context;Landroid/content/Intent;IIZII)V

    .line 254
    return-void
.end method

.method public static registerConcatenatedDate(Landroid/content/Context;I)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "concatenatedDate"    # I

    .prologue
    .line 98
    .line 99
    const-string v2, "com.lge.cic.eden.pref"

    const/4 v3, 0x0

    .line 98
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 100
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 101
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "PREF_KEY_PREVIOUS_REGISTER_ALARM"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    sget-object v2, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "    register date: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static registerRestartAlarm(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    sget-object v0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "registerRestartAlarm()"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 234
    invoke-static {p0}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->getRestartAlarmInfo(Landroid/content/Context;)Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->register(Landroid/content/Context;)V

    .line 235
    return-void
.end method

.method public static registerStartAlarm(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    sget-object v1, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "registerStartAlarm()"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->currentConcatenatedDate()I

    move-result v0

    .line 228
    .local v0, "date":I
    invoke-static {p0, v0}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->registerConcatenatedDate(Landroid/content/Context;I)V

    .line 229
    invoke-static {p0}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->getStartAlarmInfo(Landroid/content/Context;)Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->register(Landroid/content/Context;)V

    .line 230
    return-void
.end method

.method public static registerStopAlarm(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    sget-object v0, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "registerStopAlarm()"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 239
    invoke-static {p0}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->getStopAlarmInfo(Landroid/content/Context;)Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper$AlarmInfo;->register(Landroid/content/Context;)V

    .line 240
    return-void
.end method

.method public static startAnalysisIfSatisfiedCondition(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    sget-object v2, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "startAnalysisIfSatisfiedCondition()"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 150
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 151
    .local v1, "gregorianCalendar":Ljava/util/GregorianCalendar;
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 152
    .local v0, "currHour":I
    const/4 v2, 0x2

    if-lt v0, v2, :cond_21

    const/16 v2, 0x9

    if-ge v0, v2, :cond_21

    .line 153
    new-instance v2, Lcom/lge/cic/eden/utils/ServiceTriggeringHelper;

    invoke-direct {v2}, Lcom/lge/cic/eden/utils/ServiceTriggeringHelper;-><init>()V

    invoke-virtual {v2, p0}, Lcom/lge/cic/eden/utils/ServiceTriggeringHelper;->startAnalysisService(Landroid/content/Context;)V

    .line 155
    :cond_21
    return-void
.end method

.method public static stopAnalysisIfSatisfiedCondition(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    sget-object v2, Lcom/lge/cic/eden/alarm/EdenEventClusteringAlarmHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "stopAnalysisIfSatisfiedCondition()"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 160
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 161
    .local v1, "gregorianCalendar":Ljava/util/GregorianCalendar;
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 162
    .local v0, "currHour":I
    const/4 v2, 0x2

    if-lt v0, v2, :cond_19

    const/16 v2, 0x9

    if-lt v0, v2, :cond_21

    .line 163
    :cond_19
    new-instance v2, Lcom/lge/cic/eden/utils/ServiceTriggeringHelper;

    invoke-direct {v2}, Lcom/lge/cic/eden/utils/ServiceTriggeringHelper;-><init>()V

    invoke-virtual {v2, p0}, Lcom/lge/cic/eden/utils/ServiceTriggeringHelper;->stopAnalysisService(Landroid/content/Context;)V

    .line 165
    :cond_21
    return-void
.end method
