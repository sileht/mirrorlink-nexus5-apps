.class Lcom/lge/app/permission/RequestPermissionsActivity$5;
.super Ljava/lang/Object;
.source "RequestPermissionsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/app/permission/RequestPermissionsActivity;->showPopup(Landroid/app/Activity;[Ljava/lang/String;Lcom/lge/app/permission/GuideUiProvider;Landroid/content/DialogInterface$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/app/permission/RequestPermissionsActivity$5;->val$activity:Landroid/app/Activity;

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 655
    iget-object v0, p0, Lcom/lge/app/permission/RequestPermissionsActivity$5;->val$activity:Landroid/app/Activity;

    .line 656
    iget-object v1, p0, Lcom/lge/app/permission/RequestPermissionsActivity$5;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/lge/app/permission/RequestPermissionsHelper;->intentForPermissionSettings(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 655
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 657
    return-void
.end method
