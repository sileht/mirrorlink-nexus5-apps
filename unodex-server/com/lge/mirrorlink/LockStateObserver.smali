.class public Lcom/lge/mirrorlink/LockStateObserver;
.super Landroid/content/BroadcastReceiver;
.source "LockStateObserver.java"


# static fields
.field private static final DEV_STAT_LOCK:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field private static final DEV_STAT_UNLOCK:Ljava/lang/String; = "android.intent.action.USER_PRESENT"

.field private static final TAG:Ljava/lang/String; = "MirrorLink_ScreenStateReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    if-nez p2, :cond_c

    .line 25
    const-string/jumbo v2, "MirrorLink_ScreenStateReceiver"

    const-string/jumbo v3, "intent is null !"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void

    .line 28
    :cond_c
    const-string/jumbo v2, "MirrorLink_ScreenStateReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_36

    .line 32
    const-string/jumbo v2, "MirrorLink_ScreenStateReceiver"

    const-string/jumbo v3, "action is null !"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void

    .line 36
    :cond_36
    const/4 v1, 0x0

    .line 37
    .local v1, "msg":Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 38
    new-instance v1, Lcom/lge/mirrorlink/vnc/lib/DevLockStatMsg;

    .end local v1    # "msg":Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;
    invoke-direct {v1}, Lcom/lge/mirrorlink/vnc/lib/DevLockStatMsg;-><init>()V

    .line 39
    .local v1, "msg":Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;->setDelayTime(I)V

    .line 45
    .end local v1    # "msg":Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;
    :cond_49
    :goto_49
    if-eqz v1, :cond_53

    .line 46
    new-instance v2, Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;

    invoke-direct {v2}, Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;-><init>()V

    invoke-virtual {v2, v1}, Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;->report(Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;)V

    .line 23
    :cond_53
    return-void

    .line 40
    .local v1, "msg":Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;
    :cond_54
    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 41
    new-instance v1, Lcom/lge/mirrorlink/vnc/lib/DevLockStatMsg;

    .end local v1    # "msg":Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;
    invoke-direct {v1}, Lcom/lge/mirrorlink/vnc/lib/DevLockStatMsg;-><init>()V

    .line 42
    .local v1, "msg":Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;->setDelayTime(I)V

    goto :goto_49
.end method
