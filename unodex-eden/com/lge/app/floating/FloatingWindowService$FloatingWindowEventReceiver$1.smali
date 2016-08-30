.class Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver$1;
.super Ljava/lang/Object;
.source "FloatingWindowService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->setActionPhoneStateChanged(Landroid/content/Intent;Lcom/lge/app/floating/FloatingWindowManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;

.field private final synthetic val$isKeyguardOn:Z

.field private final synthetic val$isKeyguardSecure:Z


# direct methods
.method constructor <init>(Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;ZZ)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver$1;->this$1:Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;

    iput-boolean p2, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver$1;->val$isKeyguardOn:Z

    iput-boolean p3, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver$1;->val$isKeyguardSecure:Z

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 498
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver$1;->this$1:Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->mIsIncomingCallPopup:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver$1;->this$1:Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->mIsCalling:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 499
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver$1;->this$1:Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver$1;->val$isKeyguardOn:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver$1;->val$isKeyguardSecure:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    :goto_20
    const-string v3, "phone"

    # invokes: Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->handleEnterLowProfile(Landroid/content/Intent;ZLjava/lang/String;)V
    invoke-static {v1, v2, v0, v3}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->access$0(Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;Landroid/content/Intent;ZLjava/lang/String;)V

    .line 501
    :cond_25
    return-void

    .line 499
    :cond_26
    const/4 v0, 0x0

    goto :goto_20
.end method
