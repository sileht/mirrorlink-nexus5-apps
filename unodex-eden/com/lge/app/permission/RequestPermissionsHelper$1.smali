.class Lcom/lge/app/permission/RequestPermissionsHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "RequestPermissionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/app/permission/RequestPermissionsHelper;->requestPermissionsIfNeeded(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/Intent;[Ljava/lang/String;Lcom/lge/app/permission/GuideUiProvider;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$intent:Landroid/content/Intent;

.field private final synthetic val$lbm:Lcom/lge/content/LocalBroadcastManager;

.field private final synthetic val$receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/BroadcastReceiver;Landroid/content/Intent;Lcom/lge/content/LocalBroadcastManager;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/app/permission/RequestPermissionsHelper$1;->val$receiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/lge/app/permission/RequestPermissionsHelper$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/lge/app/permission/RequestPermissionsHelper$1;->val$lbm:Lcom/lge/content/LocalBroadcastManager;

    .line 336
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 339
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.app.permission.action.BROADCAST_AGAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 342
    iget-object v0, p0, Lcom/lge/app/permission/RequestPermissionsHelper$1;->val$receiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/lge/app/permission/RequestPermissionsHelper$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 343
    iget-object v0, p0, Lcom/lge/app/permission/RequestPermissionsHelper$1;->val$lbm:Lcom/lge/content/LocalBroadcastManager;

    invoke-virtual {v0, p0}, Lcom/lge/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 345
    :cond_18
    return-void
.end method
