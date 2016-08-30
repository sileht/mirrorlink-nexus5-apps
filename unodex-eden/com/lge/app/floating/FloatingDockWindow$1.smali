.class Lcom/lge/app/floating/FloatingDockWindow$1;
.super Ljava/lang/Object;
.source "FloatingDockWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/app/floating/FloatingDockWindow;-><init>(Landroid/content/Context;Lcom/lge/app/floating/FloatingWindow;)V
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
    iput-object p1, p0, Lcom/lge/app/floating/FloatingDockWindow$1;->this$0:Lcom/lge/app/floating/FloatingDockWindow;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 40
    const-string v0, "FloatingDockWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTouch!! : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/lge/app/floating/FloatingDockWindow$1;->this$0:Lcom/lge/app/floating/FloatingDockWindow;

    invoke-virtual {v0, p2}, Lcom/lge/app/floating/FloatingDockWindow;->handleTouch(Landroid/view/MotionEvent;)V

    .line 42
    const/4 v0, 0x0

    return v0
.end method
