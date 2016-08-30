.class Lcom/lge/app/permission/RequestPermissionsActivity$3;
.super Ljava/lang/Object;
.source "RequestPermissionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/app/permission/RequestPermissionsActivity;->setupFullScreenUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/app/permission/RequestPermissionsActivity;


# direct methods
.method constructor <init>(Lcom/lge/app/permission/RequestPermissionsActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/app/permission/RequestPermissionsActivity$3;->this$0:Lcom/lge/app/permission/RequestPermissionsActivity;

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 589
    iget-object v0, p0, Lcom/lge/app/permission/RequestPermissionsActivity$3;->this$0:Lcom/lge/app/permission/RequestPermissionsActivity;

    .line 590
    iget-object v1, p0, Lcom/lge/app/permission/RequestPermissionsActivity$3;->this$0:Lcom/lge/app/permission/RequestPermissionsActivity;

    invoke-static {v1}, Lcom/lge/app/permission/RequestPermissionsHelper;->intentForPermissionSettings(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 589
    invoke-virtual {v0, v1}, Lcom/lge/app/permission/RequestPermissionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 591
    return-void
.end method
