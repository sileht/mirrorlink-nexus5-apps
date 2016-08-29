.class Lcom/lge/mirrorlink/MirrorLinkEnabler$1;
.super Ljava/lang/Object;
.source "MirrorLinkEnabler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/MirrorLinkEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/MirrorLinkEnabler;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/MirrorLinkEnabler;)V
    .registers 2

    .prologue
    .line 22
    iput-object p1, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler$1;->this$0:Lcom/lge/mirrorlink/MirrorLinkEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler$1;->this$0:Lcom/lge/mirrorlink/MirrorLinkEnabler;

    # getter for: Lcom/lge/mirrorlink/MirrorLinkEnabler;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/mirrorlink/MirrorLinkEnabler;->access$000(Lcom/lge/mirrorlink/MirrorLinkEnabler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected with CommonAPIService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler$1;->this$0:Lcom/lge/mirrorlink/MirrorLinkEnabler;

    # setter for: Lcom/lge/mirrorlink/MirrorLinkEnabler;->mMlsBinder:Landroid/os/IBinder;
    invoke-static {v0, p2}, Lcom/lge/mirrorlink/MirrorLinkEnabler;->access$102(Lcom/lge/mirrorlink/MirrorLinkEnabler;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 28
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler$1;->this$0:Lcom/lge/mirrorlink/MirrorLinkEnabler;

    # getter for: Lcom/lge/mirrorlink/MirrorLinkEnabler;->mMlsBinder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/lge/mirrorlink/MirrorLinkEnabler;->access$100(Lcom/lge/mirrorlink/MirrorLinkEnabler;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 29
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler$1;->this$0:Lcom/lge/mirrorlink/MirrorLinkEnabler;

    # getter for: Lcom/lge/mirrorlink/MirrorLinkEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/lge/mirrorlink/MirrorLinkEnabler;->access$200(Lcom/lge/mirrorlink/MirrorLinkEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 31
    :cond_22
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler$1;->this$0:Lcom/lge/mirrorlink/MirrorLinkEnabler;

    # getter for: Lcom/lge/mirrorlink/MirrorLinkEnabler;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/mirrorlink/MirrorLinkEnabler;->access$000(Lcom/lge/mirrorlink/MirrorLinkEnabler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected with CommonAPIService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler$1;->this$0:Lcom/lge/mirrorlink/MirrorLinkEnabler;

    const/4 v1, 0x0

    # setter for: Lcom/lge/mirrorlink/MirrorLinkEnabler;->mMlsBinder:Landroid/os/IBinder;
    invoke-static {v0, v1}, Lcom/lge/mirrorlink/MirrorLinkEnabler;->access$102(Lcom/lge/mirrorlink/MirrorLinkEnabler;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 38
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkEnabler$1;->this$0:Lcom/lge/mirrorlink/MirrorLinkEnabler;

    # getter for: Lcom/lge/mirrorlink/MirrorLinkEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/lge/mirrorlink/MirrorLinkEnabler;->access$200(Lcom/lge/mirrorlink/MirrorLinkEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 39
    return-void
.end method
