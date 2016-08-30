.class Lcom/lge/app/permission/RequestPermissionsHelper$BindService$1;
.super Lcom/lge/app/permission/IService$Stub;
.source "RequestPermissionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/app/permission/RequestPermissionsHelper$BindService;->onBind()Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/app/permission/RequestPermissionsHelper$BindService;


# direct methods
.method constructor <init>(Lcom/lge/app/permission/RequestPermissionsHelper$BindService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindService$1;->this$1:Lcom/lge/app/permission/RequestPermissionsHelper$BindService;

    .line 646
    invoke-direct {p0}, Lcom/lge/app/permission/IService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 649
    iget-object v0, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindService$1;->this$1:Lcom/lge/app/permission/RequestPermissionsHelper$BindService;

    # getter for: Lcom/lge/app/permission/RequestPermissionsHelper$BindService;->mPermissions:[Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/app/permission/RequestPermissionsHelper$BindService;->access$0(Lcom/lge/app/permission/RequestPermissionsHelper$BindService;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestPermissionActivityName()Landroid/content/ComponentName;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 655
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindService$1;->this$1:Lcom/lge/app/permission/RequestPermissionsHelper$BindService;

    # getter for: Lcom/lge/app/permission/RequestPermissionsHelper$BindService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/app/permission/RequestPermissionsHelper$BindService;->access$1(Lcom/lge/app/permission/RequestPermissionsHelper$BindService;)Landroid/content/Context;

    move-result-object v1

    .line 656
    iget-object v2, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindService$1;->this$1:Lcom/lge/app/permission/RequestPermissionsHelper$BindService;

    # getter for: Lcom/lge/app/permission/RequestPermissionsHelper$BindService;->mRequestPermissionActivity:Ljava/lang/Class;
    invoke-static {v2}, Lcom/lge/app/permission/RequestPermissionsHelper$BindService;->access$2(Lcom/lge/app/permission/RequestPermissionsHelper$BindService;)Ljava/lang/Class;

    move-result-object v2

    .line 655
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getUiProviderAsBundle()Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 661
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 662
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "ui_provider"

    iget-object v2, p0, Lcom/lge/app/permission/RequestPermissionsHelper$BindService$1;->this$1:Lcom/lge/app/permission/RequestPermissionsHelper$BindService;

    # getter for: Lcom/lge/app/permission/RequestPermissionsHelper$BindService;->mUiProvider:Lcom/lge/app/permission/GuideUiProvider;
    invoke-static {v2}, Lcom/lge/app/permission/RequestPermissionsHelper$BindService;->access$3(Lcom/lge/app/permission/RequestPermissionsHelper$BindService;)Lcom/lge/app/permission/GuideUiProvider;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 664
    return-object v0
.end method
