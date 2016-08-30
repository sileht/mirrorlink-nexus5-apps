.class Lcom/lge/app/permission/RequestPermissionsActivity$2;
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
    iput-object p1, p0, Lcom/lge/app/permission/RequestPermissionsActivity$2;->this$0:Lcom/lge/app/permission/RequestPermissionsActivity;

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/lge/app/permission/RequestPermissionsActivity$2;->this$0:Lcom/lge/app/permission/RequestPermissionsActivity;

    # invokes: Lcom/lge/app/permission/RequestPermissionsActivity;->requestPermissions()V
    invoke-static {v0}, Lcom/lge/app/permission/RequestPermissionsActivity;->access$0(Lcom/lge/app/permission/RequestPermissionsActivity;)V

    .line 553
    return-void
.end method
