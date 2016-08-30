.class Lcom/lge/wfds/SessionController$SessionCtrlBroadcastRcvr;
.super Landroid/content/BroadcastReceiver;
.source "SessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/SessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionCtrlBroadcastRcvr"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/SessionController;


# direct methods
.method public constructor <init>(Lcom/lge/wfds/SessionController;)V
    .registers 2

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/lge/wfds/SessionController$SessionCtrlBroadcastRcvr;->this$0:Lcom/lge/wfds/SessionController;

    .line 1202
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1203
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1207
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1209
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.lge.wfds.session.OPEN_FAILED_TIMEOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1210
    const-string v1, "WfdsSession:Controller"

    const-string v2, "SESSION_AFTER_OPEN_FAILED_TIMEOUT_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionCtrlBroadcastRcvr;->this$0:Lcom/lge/wfds/SessionController;

    invoke-static {v1, v3}, Lcom/lge/wfds/SessionController;->access$40(Lcom/lge/wfds/SessionController;Landroid/app/PendingIntent;)V

    .line 1212
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionCtrlBroadcastRcvr;->this$0:Lcom/lge/wfds/SessionController;

    const v2, 0x901036

    invoke-virtual {v1, v2}, Lcom/lge/wfds/SessionController;->sendMessage(I)V

    .line 1224
    :goto_21
    return-void

    .line 1213
    :cond_22
    const-string v1, "com.lge.wfds.session.COUNT_ZERO_TIMEOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1214
    const-string v1, "WfdsSession:Controller"

    const-string v2, "SESSION_AFTER_COUNT_ZERO_TIMEOUT_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionCtrlBroadcastRcvr;->this$0:Lcom/lge/wfds/SessionController;

    invoke-static {v1, v3}, Lcom/lge/wfds/SessionController;->access$16(Lcom/lge/wfds/SessionController;Landroid/app/PendingIntent;)V

    .line 1216
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionCtrlBroadcastRcvr;->this$0:Lcom/lge/wfds/SessionController;

    const v2, 0x901037

    invoke-virtual {v1, v2}, Lcom/lge/wfds/SessionController;->sendMessage(I)V

    goto :goto_21

    .line 1217
    :cond_3f
    const-string v1, "com.lge.wfds.session.DEFERRED_TIMEOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1218
    const-string v1, "WfdsSession:Controller"

    const-string v2, "SESSION_DEFERRED_TIMEOUT_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionCtrlBroadcastRcvr;->this$0:Lcom/lge/wfds/SessionController;

    invoke-static {v1, v3}, Lcom/lge/wfds/SessionController;->access$33(Lcom/lge/wfds/SessionController;Landroid/app/PendingIntent;)V

    .line 1220
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionCtrlBroadcastRcvr;->this$0:Lcom/lge/wfds/SessionController;

    const v2, 0x901038

    invoke-virtual {v1, v2}, Lcom/lge/wfds/SessionController;->sendMessage(I)V

    goto :goto_21

    .line 1222
    :cond_5c
    const-string v1, "WfdsSession:Controller"

    const-string v2, "Invaild intent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method
