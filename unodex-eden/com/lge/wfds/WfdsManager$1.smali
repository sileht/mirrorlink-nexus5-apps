.class Lcom/lge/wfds/WfdsManager$1;
.super Ljava/lang/Object;
.source "WfdsManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wfds/WfdsManager;->getInstance()Lcom/lge/wfds/WfdsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 210
    const-string v0, "WfdsManager"

    const-string v1, "binderDied()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {v2}, Lcom/lge/wfds/WfdsManager;->access$0(Lcom/lge/wfds/IWfdsManager;)V

    .line 212
    invoke-static {v2}, Lcom/lge/wfds/WfdsManager;->access$1(Lcom/lge/wfds/WfdsManager;)V

    .line 213
    return-void
.end method
