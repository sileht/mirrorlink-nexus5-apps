.class public Lcom/lge/cic/eden/service/condition/battery/BatteryChecker;
.super Ljava/lang/Object;
.source "BatteryChecker.java"


# static fields
.field private static logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/lge/cic/eden/service/condition/battery/BatteryChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/service/condition/battery/BatteryChecker;->logger:Lcom/lge/cic/eden/utils/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatteryLevel(Landroid/content/Context;)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v9, -0x1

    .line 15
    sget-object v7, Lcom/lge/cic/eden/service/condition/battery/BatteryChecker;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v8, "getBatteryLevel()"

    invoke-virtual {v7, v8}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 16
    new-instance v5, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 17
    .local v5, "ifilter":Landroid/content/IntentFilter;
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 19
    .local v3, "batteryStatus":Landroid/content/Intent;
    const/4 v6, 0x3

    .line 20
    .local v6, "tryCount":I
    const/4 v0, -0x1

    .line 21
    .local v0, "batteryLevel":I
    const/4 v2, 0x0

    .line 23
    .local v2, "batteryScale":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    const/4 v7, 0x3

    if-lt v4, v7, :cond_3d

    .line 30
    :cond_1c
    if-eq v0, v9, :cond_50

    if-eqz v2, :cond_50

    .line 31
    mul-int/lit8 v7, v0, 0x64

    div-int v1, v7, v2

    .line 32
    .local v1, "batteryPercent":I
    sget-object v7, Lcom/lge/cic/eden/service/condition/battery/BatteryChecker;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " %"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 37
    .end local v1    # "batteryPercent":I
    :goto_3c
    return v1

    .line 24
    :cond_3d
    const-string v7, "level"

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 25
    const-string v7, "scale"

    invoke-virtual {v3, v7, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 26
    if-eq v0, v9, :cond_4d

    if-nez v2, :cond_1c

    .line 23
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 36
    :cond_50
    sget-object v7, Lcom/lge/cic/eden/service/condition/battery/BatteryChecker;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "can\'t get battery levell : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", s : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    goto :goto_3c
.end method
