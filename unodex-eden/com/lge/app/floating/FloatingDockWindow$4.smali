.class Lcom/lge/app/floating/FloatingDockWindow$4;
.super Ljava/lang/Object;
.source "FloatingDockWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/app/floating/FloatingDockWindow;->onFinishingUndockAt(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/app/floating/FloatingDockWindow;

.field private final synthetic val$destX:I

.field private final synthetic val$destY:I


# direct methods
.method constructor <init>(Lcom/lge/app/floating/FloatingDockWindow;II)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/app/floating/FloatingDockWindow$4;->this$0:Lcom/lge/app/floating/FloatingDockWindow;

    iput p2, p0, Lcom/lge/app/floating/FloatingDockWindow$4;->val$destX:I

    iput p3, p0, Lcom/lge/app/floating/FloatingDockWindow$4;->val$destY:I

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 142
    const-string v0, "FloatingDockWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FloatingWindow moves to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lge/app/floating/FloatingDockWindow$4;->val$destX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/app/floating/FloatingDockWindow$4;->val$destY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/lge/app/floating/FloatingDockWindow$4;->this$0:Lcom/lge/app/floating/FloatingDockWindow;

    # getter for: Lcom/lge/app/floating/FloatingDockWindow;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;
    invoke-static {v0}, Lcom/lge/app/floating/FloatingDockWindow;->access$1(Lcom/lge/app/floating/FloatingDockWindow;)Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    iget v1, p0, Lcom/lge/app/floating/FloatingDockWindow$4;->val$destX:I

    iget v2, p0, Lcom/lge/app/floating/FloatingDockWindow$4;->val$destY:I

    invoke-virtual {v0, v1, v2}, Lcom/lge/app/floating/FloatingWindow;->moveInner(II)V

    .line 144
    return-void
.end method
