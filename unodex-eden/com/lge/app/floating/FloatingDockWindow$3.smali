.class Lcom/lge/app/floating/FloatingDockWindow$3;
.super Ljava/lang/Object;
.source "FloatingDockWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/app/floating/FloatingDockWindow;->onUndockCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/app/floating/FloatingDockWindow;


# direct methods
.method constructor <init>(Lcom/lge/app/floating/FloatingDockWindow;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/app/floating/FloatingDockWindow$3;->this$0:Lcom/lge/app/floating/FloatingDockWindow;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lge/app/floating/FloatingDockWindow$3;->this$0:Lcom/lge/app/floating/FloatingDockWindow;

    # getter for: Lcom/lge/app/floating/FloatingDockWindow;->mFwm:Lcom/lge/app/floating/FloatingWindowManager;
    invoke-static {v0}, Lcom/lge/app/floating/FloatingDockWindow;->access$0(Lcom/lge/app/floating/FloatingDockWindow;)Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v0

    const-string v1, "com.lge.app.floating.res"

    invoke-virtual {v0, v1}, Lcom/lge/app/floating/FloatingWindowManager;->handleExitLowProfile(Ljava/lang/String;)V

    .line 108
    return-void
.end method
