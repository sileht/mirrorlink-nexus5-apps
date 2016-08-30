.class Lcom/lge/wfds/WfdsDialog$1;
.super Ljava/lang/Object;
.source "WfdsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wfds/WfdsDialog;->showProvDeferUserInputDialog(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/WfdsDialog;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsDialog;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/wfds/WfdsDialog$1;->this$0:Lcom/lge/wfds/WfdsDialog;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 68
    const-string v0, "WfdsDialog"

    const-string v1, "Provision Defer Dialog is clicked: accept"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/lge/wfds/WfdsDialog$1;->this$0:Lcom/lge/wfds/WfdsDialog;

    # getter for: Lcom/lge/wfds/WfdsDialog;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Lcom/lge/wfds/WfdsDialog;->access$0(Lcom/lge/wfds/WfdsDialog;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x901029

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 70
    return-void
.end method
