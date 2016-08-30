.class Lcom/lge/app/AlertDialogEx$1$1;
.super Landroid/os/AsyncTask;
.source "AlertDialogEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/app/AlertDialogEx$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/app/AlertDialogEx$1;


# direct methods
.method constructor <init>(Lcom/lge/app/AlertDialogEx$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/app/AlertDialogEx$1$1;->this$1:Lcom/lge/app/AlertDialogEx$1;

    .line 73
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 76
    const/4 v1, 0x0

    .local v1, "loop":I
    :goto_2
    const/16 v2, 0xa

    if-lt v1, v2, :cond_c

    .line 88
    const/4 v2, 0x1

    :try_start_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 92
    :goto_b
    return-object v2

    .line 77
    :cond_c
    invoke-virtual {p0}, Lcom/lge/app/AlertDialogEx$1$1;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p0, Lcom/lge/app/AlertDialogEx$1$1;->this$1:Lcom/lge/app/AlertDialogEx$1;

    # getter for: Lcom/lge/app/AlertDialogEx$1;->this$0:Lcom/lge/app/AlertDialogEx;
    invoke-static {v2}, Lcom/lge/app/AlertDialogEx$1;->access$0(Lcom/lge/app/AlertDialogEx$1;)Lcom/lge/app/AlertDialogEx;

    move-result-object v2

    # getter for: Lcom/lge/app/AlertDialogEx;->buttonPanel:Landroid/view/View;
    invoke-static {v2}, Lcom/lge/app/AlertDialogEx;->access$0(Lcom/lge/app/AlertDialogEx;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2b

    .line 78
    :cond_1e
    const-string v2, "AlertDialogEx"

    const-string v3, "Async task canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_b

    .line 81
    :cond_2b
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx$1$1;->this$1:Lcom/lge/app/AlertDialogEx$1;

    # getter for: Lcom/lge/app/AlertDialogEx$1;->this$0:Lcom/lge/app/AlertDialogEx;
    invoke-static {v2}, Lcom/lge/app/AlertDialogEx$1;->access$0(Lcom/lge/app/AlertDialogEx$1;)Lcom/lge/app/AlertDialogEx;

    move-result-object v2

    # getter for: Lcom/lge/app/AlertDialogEx;->buttonPanelWidth:I
    invoke-static {v2}, Lcom/lge/app/AlertDialogEx;->access$1(Lcom/lge/app/AlertDialogEx;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx$1$1;->this$1:Lcom/lge/app/AlertDialogEx$1;

    # getter for: Lcom/lge/app/AlertDialogEx$1;->this$0:Lcom/lge/app/AlertDialogEx;
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx$1;->access$0(Lcom/lge/app/AlertDialogEx$1;)Lcom/lge/app/AlertDialogEx;

    move-result-object v3

    # getter for: Lcom/lge/app/AlertDialogEx;->buttonPanel:Landroid/view/View;
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx;->access$0(Lcom/lge/app/AlertDialogEx;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eq v2, v3, :cond_4b

    .line 82
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_b

    .line 86
    :cond_4b
    const-wide/16 v2, 0x23

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_50} :catch_53

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 89
    :catch_53
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 92
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_b
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lge/app/AlertDialogEx$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 95
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 96
    iget-object v0, p0, Lcom/lge/app/AlertDialogEx$1$1;->this$1:Lcom/lge/app/AlertDialogEx$1;

    # getter for: Lcom/lge/app/AlertDialogEx$1;->this$0:Lcom/lge/app/AlertDialogEx;
    invoke-static {v0}, Lcom/lge/app/AlertDialogEx$1;->access$0(Lcom/lge/app/AlertDialogEx$1;)Lcom/lge/app/AlertDialogEx;

    move-result-object v0

    # getter for: Lcom/lge/app/AlertDialogEx;->adjusted:Z
    invoke-static {v0}, Lcom/lge/app/AlertDialogEx;->access$2(Lcom/lge/app/AlertDialogEx;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 97
    const-string v0, "AlertDialogEx"

    const-string v1, "call adjust through ACTION_CONFIGURATION_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/lge/app/AlertDialogEx$1$1;->this$1:Lcom/lge/app/AlertDialogEx$1;

    # getter for: Lcom/lge/app/AlertDialogEx$1;->this$0:Lcom/lge/app/AlertDialogEx;
    invoke-static {v0}, Lcom/lge/app/AlertDialogEx$1;->access$0(Lcom/lge/app/AlertDialogEx$1;)Lcom/lge/app/AlertDialogEx;

    move-result-object v0

    # invokes: Lcom/lge/app/AlertDialogEx;->adjust()V
    invoke-static {v0}, Lcom/lge/app/AlertDialogEx;->access$3(Lcom/lge/app/AlertDialogEx;)V

    .line 101
    :cond_22
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/lge/app/AlertDialogEx$1$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
