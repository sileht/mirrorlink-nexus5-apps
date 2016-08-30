.class Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;
.super Ljava/lang/Object;
.source "RequestPermissionsHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->bind()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;


# direct methods
.method constructor <init>(Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;->this$1:Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;)Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;
    .registers 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;->this$1:Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 552
    :try_start_0
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v4

    .line 553
    const-class v5, Lcom/lge/app/permission/IService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 552
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 553
    if-eqz v4, :cond_60

    .line 560
    # getter for: Lcom/lge/app/permission/RequestPermissionsHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/permission/RequestPermissionsHelper;->access$0()Ljava/lang/String;

    move-result-object v4

    .line 561
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Some permissions are not granted. Connected to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 561
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 560
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-static {p2}, Lcom/lge/app/permission/IService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/app/permission/IService;

    move-result-object v3

    .line 571
    .local v3, "s":Lcom/lge/app/permission/IService;
    invoke-interface {v3}, Lcom/lge/app/permission/IService;->getRequestPermissionActivityName()Landroid/content/ComponentName;

    move-result-object v0

    .line 572
    .local v0, "activityName":Landroid/content/ComponentName;
    invoke-interface {v3}, Lcom/lge/app/permission/IService;->getPermissions()Ljava/util/List;

    move-result-object v2

    .line 573
    .local v2, "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 574
    .local v1, "permissions":[Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 576
    # getter for: Lcom/lge/app/permission/RequestPermissionsHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/permission/RequestPermissionsHelper;->access$0()Ljava/lang/String;

    move-result-object v4

    .line 577
    const-string v5, "Starting permission request activity"

    .line 576
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v4, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;->this$1:Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;

    # getter for: Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->access$0(Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;)Landroid/content/Context;

    move-result-object v4

    .line 581
    new-instance v5, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1$1;

    invoke-direct {v5, p0}, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1$1;-><init>(Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;)V

    .line 579
    invoke-static {v4, v0, v1, v5, p2}, Lcom/lge/app/permission/RequestPermissionsActivity;->startForBindService(Landroid/content/Context;Landroid/content/ComponentName;[Ljava/lang/String;Lcom/lge/app/permission/IClient$Stub;Landroid/os/IBinder;)V

    .line 600
    iget-object v4, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;->this$1:Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;

    # getter for: Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->access$0(Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 614
    .end local v0    # "activityName":Landroid/content/ComponentName;
    .end local v1    # "permissions":[Ljava/lang/String;
    .end local v2    # "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "s":Lcom/lge/app/permission/IService;
    :goto_5f
    return-void

    .line 608
    :cond_60
    # getter for: Lcom/lge/app/permission/RequestPermissionsHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/permission/RequestPermissionsHelper;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "All permissions granted."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v4, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;->this$1:Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;

    # getter for: Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->mConn:Landroid/content/ServiceConnection;
    invoke-static {v4}, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->access$2(Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_72} :catch_73

    goto :goto_5f

    :catch_73
    move-exception v4

    goto :goto_5f
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 618
    iget-object v0, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient$1;->this$1:Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;

    # getter for: Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->mConn:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->access$2(Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 619
    return-void
.end method
