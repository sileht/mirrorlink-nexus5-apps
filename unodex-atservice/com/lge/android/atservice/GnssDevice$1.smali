.class Lcom/lge/android/atservice/GnssDevice$1;
.super Landroid/content/BroadcastReceiver;
.source "GnssDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/GnssDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/atservice/GnssDevice;


# direct methods
.method constructor <init>(Lcom/lge/android/atservice/GnssDevice;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/android/atservice/GnssDevice;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lge/android/atservice/GnssDevice$1;->this$0:Lcom/lge/android/atservice/GnssDevice;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v2, "GnssDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Intent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string/jumbo v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 33
    const-string/jumbo v2, "enabled"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 34
    .local v0, "Navigating":Z
    const-string/jumbo v2, "GnssDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Engine Status changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    if-eqz v0, :cond_62

    .line 37
    invoke-static {}, Lcom/lge/android/atservice/GnssDevice;->-get3()Landroid/location/LocationManager;

    move-result-object v2

    invoke-static {}, Lcom/lge/android/atservice/GnssDevice;->-get2()Lcom/lge/android/atservice/GnssDevice$Location_Listener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 38
    invoke-static {}, Lcom/lge/android/atservice/GnssDevice;->-get3()Landroid/location/LocationManager;

    move-result-object v2

    invoke-static {}, Lcom/lge/android/atservice/GnssDevice;->-get2()Lcom/lge/android/atservice/GnssDevice$Location_Listener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    .line 27
    .end local v0    # "Navigating":Z
    :cond_61
    :goto_61
    return-void

    .line 42
    .restart local v0    # "Navigating":Z
    :cond_62
    invoke-static {}, Lcom/lge/android/atservice/GnssDevice;->-get3()Landroid/location/LocationManager;

    move-result-object v2

    if-eqz v2, :cond_61

    .line 43
    invoke-static {}, Lcom/lge/android/atservice/GnssDevice;->-get3()Landroid/location/LocationManager;

    move-result-object v2

    invoke-static {}, Lcom/lge/android/atservice/GnssDevice;->-get2()Lcom/lge/android/atservice/GnssDevice$Location_Listener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 44
    invoke-static {}, Lcom/lge/android/atservice/GnssDevice;->-get3()Landroid/location/LocationManager;

    move-result-object v2

    invoke-static {}, Lcom/lge/android/atservice/GnssDevice;->-get2()Lcom/lge/android/atservice/GnssDevice$Location_Listener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    goto :goto_61
.end method
