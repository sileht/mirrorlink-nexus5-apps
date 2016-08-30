.class Lcom/lge/app/permission/RequestPermissionsActivity$4;
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


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 649
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 650
    return-void
.end method
