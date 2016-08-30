.class Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1$1;
.super Lcom/lge/app/permission/IClient$Stub;
.source "RequestPermissionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;


# direct methods
.method constructor <init>(Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1$1;->this$2:Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;

    .line 581
    invoke-direct {p0}, Lcom/lge/app/permission/IClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public connected()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 593
    # getter for: Lcom/lge/app/permission/RequestPermissionsHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/permission/RequestPermissionsHelper;->access$0()Ljava/lang/String;

    move-result-object v0

    .line 594
    const-string v1, "permission granted. binding to real service"

    .line 593
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v0, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1$1;->this$2:Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;

    # getter for: Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;->this$1:Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;
    invoke-static {v0}, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;->access$0(Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;)Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;

    move-result-object v0

    # getter for: Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->access$0(Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1$1;->this$2:Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;

    # getter for: Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;->this$1:Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;
    invoke-static {v1}, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;->access$0(Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;)Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;

    move-result-object v1

    # getter for: Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->access$1(Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;)Landroid/content/Intent;

    move-result-object v1

    .line 597
    iget-object v2, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1$1;->this$2:Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;

    # getter for: Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;->this$1:Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;
    invoke-static {v2}, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;->access$0(Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;)Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;

    move-result-object v2

    # getter for: Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->mConn:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->access$2(Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;)Landroid/content/ServiceConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1$1;->this$2:Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;

    # getter for: Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;->this$1:Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;
    invoke-static {v3}, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;->access$0(Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;)Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;

    move-result-object v3

    # getter for: Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->mFlags:I
    invoke-static {v3}, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->access$3(Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;)I

    move-result v3

    .line 596
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 598
    return-void
.end method
