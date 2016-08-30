.class Lcom/lge/app/AlertDialogEx$1;
.super Landroid/content/BroadcastReceiver;
.source "AlertDialogEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/AlertDialogEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/app/AlertDialogEx;


# direct methods
.method constructor <init>(Lcom/lge/app/AlertDialogEx;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/app/AlertDialogEx$1;->this$0:Lcom/lge/app/AlertDialogEx;

    .line 64
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lge/app/AlertDialogEx$1;)Lcom/lge/app/AlertDialogEx;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/app/AlertDialogEx$1;->this$0:Lcom/lge/app/AlertDialogEx;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 69
    const-string v0, "AlertDialogEx"

    const-string v1, "ACTION_CONFIGURATION_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/lge/app/AlertDialogEx$1;->this$0:Lcom/lge/app/AlertDialogEx;

    # getter for: Lcom/lge/app/AlertDialogEx;->buttonPanel:Landroid/view/View;
    invoke-static {v0}, Lcom/lge/app/AlertDialogEx;->access$0(Lcom/lge/app/AlertDialogEx;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 105
    :cond_1b
    :goto_1b
    return-void

    .line 73
    :cond_1c
    iget-object v0, p0, Lcom/lge/app/AlertDialogEx$1;->this$0:Lcom/lge/app/AlertDialogEx;

    new-instance v1, Lcom/lge/app/AlertDialogEx$1$1;

    invoke-direct {v1, p0}, Lcom/lge/app/AlertDialogEx$1$1;-><init>(Lcom/lge/app/AlertDialogEx$1;)V

    invoke-static {v0, v1}, Lcom/lge/app/AlertDialogEx;->access$4(Lcom/lge/app/AlertDialogEx;Landroid/os/AsyncTask;)V

    .line 103
    iget-object v0, p0, Lcom/lge/app/AlertDialogEx$1;->this$0:Lcom/lge/app/AlertDialogEx;

    # getter for: Lcom/lge/app/AlertDialogEx;->checkLayoutChanged:Landroid/os/AsyncTask;
    invoke-static {v0}, Lcom/lge/app/AlertDialogEx;->access$5(Lcom/lge/app/AlertDialogEx;)Landroid/os/AsyncTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1b
.end method
