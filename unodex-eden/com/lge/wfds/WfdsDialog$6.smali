.class Lcom/lge/wfds/WfdsDialog$6;
.super Ljava/lang/Object;
.source "WfdsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wfds/WfdsDialog;->showProvDiscEnterPinDialog(Ljava/lang/String;Landroid/net/wifi/WpsInfo;)Z
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
    iput-object p1, p0, Lcom/lge/wfds/WfdsDialog$6;->this$0:Lcom/lge/wfds/WfdsDialog;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 176
    const-string v0, "WfdsDialog"

    const-string v1, "Ignore Invitation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/lge/wfds/WfdsDialog$6;->this$0:Lcom/lge/wfds/WfdsDialog;

    # getter for: Lcom/lge/wfds/WfdsDialog;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Lcom/lge/wfds/WfdsDialog;->access$0(Lcom/lge/wfds/WfdsDialog;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x90102a

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 178
    return-void
.end method
