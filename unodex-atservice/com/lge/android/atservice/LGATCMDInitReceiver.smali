.class public Lcom/lge/android/atservice/LGATCMDInitReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LGATCMDInitReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "action":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LGATCMDInitReceiver Intent action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 35
    const-string/jumbo v2, "com.lge.android.atservice.START"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 36
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lge/android/atservice/LGATCMDService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v2, "LGATCMD Service Start"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 31
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_34
    :goto_34
    return-void

    .line 39
    :cond_35
    const-string/jumbo v2, "com.lge.android.atservice.STOP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 40
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lge/android/atservice/LGATCMDService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .restart local v1    # "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v2, "LGATCMD Service Stop"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p1, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_34

    .line 43
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_4f
    const-string/jumbo v2, "com.lge.android.atservice.INTERRUPT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 44
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lge/android/atservice/LGATCMDService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .restart local v1    # "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v2, "LGATCMD Service Interrupt"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_34

    .line 47
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_69
    const-string/jumbo v2, "com.lge.android.atservice.RESTART"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 48
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lge/android/atservice/LGATCMDService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .restart local v1    # "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v2, "LGATCMD Service Restart"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_34

    .line 51
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_83
    const-string/jumbo v2, "com.lge.android.atservice.DEBUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 52
    const/4 v2, 0x1

    sput-boolean v2, Lcom/lge/android/atservice/Debug;->mDebug:Z

    .line 53
    const-string/jumbo v2, "Debug enabled!!"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->LogI(Ljava/lang/String;)V

    goto :goto_34
.end method
