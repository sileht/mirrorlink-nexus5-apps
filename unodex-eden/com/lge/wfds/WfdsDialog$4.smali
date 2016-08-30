.class Lcom/lge/wfds/WfdsDialog$4;
.super Ljava/lang/Object;
.source "WfdsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field private final synthetic val$pin:Landroid/widget/EditText;

.field private final synthetic val$wpsInfoValue:Landroid/net/wifi/WpsInfo;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsDialog;Landroid/net/wifi/WpsInfo;Landroid/widget/EditText;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/wfds/WfdsDialog$4;->this$0:Lcom/lge/wfds/WfdsDialog;

    iput-object p2, p0, Lcom/lge/wfds/WfdsDialog$4;->val$wpsInfoValue:Landroid/net/wifi/WpsInfo;

    iput-object p3, p0, Lcom/lge/wfds/WfdsDialog$4;->val$pin:Landroid/widget/EditText;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, "pinString":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/wfds/WfdsDialog$4;->val$wpsInfoValue:Landroid/net/wifi/WpsInfo;

    iget v1, v1, Landroid/net/wifi/WpsInfo;->setup:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_33

    .line 157
    iget-object v1, p0, Lcom/lge/wfds/WfdsDialog$4;->val$pin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    const-string v1, "WfdsDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Accept Invitation "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_26
    iget-object v1, p0, Lcom/lge/wfds/WfdsDialog$4;->this$0:Lcom/lge/wfds/WfdsDialog;

    # getter for: Lcom/lge/wfds/WfdsDialog;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Lcom/lge/wfds/WfdsDialog;->access$0(Lcom/lge/wfds/WfdsDialog;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x901029

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 164
    return-void

    .line 160
    :cond_33
    const-string v1, "WfdsDialog"

    const-string v2, "Accept Invitation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method
