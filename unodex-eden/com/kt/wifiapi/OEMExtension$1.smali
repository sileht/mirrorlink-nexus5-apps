.class Lcom/kt/wifiapi/OEMExtension$1;
.super Landroid/content/BroadcastReceiver;
.source "OEMExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kt/wifiapi/OEMExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    const-string v1, "gws_scan_result"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 77
    .local v0, "rList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kt/wifiapi/GWSScanResult;>;"
    invoke-static {v0}, Lcom/kt/wifiapi/OEMExtension;->access$0(Ljava/util/List;)V

    .line 78
    return-void
.end method
