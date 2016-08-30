.class Lcom/lge/app/floating/FloatingWindow$1;
.super Ljava/lang/Object;
.source "FloatingWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/app/floating/FloatingWindow;->setSize(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/app/floating/FloatingWindow;


# direct methods
.method constructor <init>(Lcom/lge/app/floating/FloatingWindow;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindow$1;->this$0:Lcom/lge/app/floating/FloatingWindow;

    .line 2124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2127
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow$1;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v1

    .line 2128
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2127
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 2129
    .local v0, "titleParams":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow$1;->this$0:Lcom/lge/app/floating/FloatingWindow;

    # getter for: Lcom/lge/app/floating/FloatingWindow;->titleWindowW:I
    invoke-static {v2}, Lcom/lge/app/floating/FloatingWindow;->access$5(Lcom/lge/app/floating/FloatingWindow;)I

    move-result v2

    if-ne v1, v2, :cond_20

    .line 2130
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow$1;->this$0:Lcom/lge/app/floating/FloatingWindow;

    # getter for: Lcom/lge/app/floating/FloatingWindow;->titleWindowH:I
    invoke-static {v2}, Lcom/lge/app/floating/FloatingWindow;->access$4(Lcom/lge/app/floating/FloatingWindow;)I

    move-result v2

    if-eq v1, v2, :cond_3b

    .line 2131
    :cond_20
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow$1;->this$0:Lcom/lge/app/floating/FloatingWindow;

    # getter for: Lcom/lge/app/floating/FloatingWindow;->titleWindowW:I
    invoke-static {v1}, Lcom/lge/app/floating/FloatingWindow;->access$5(Lcom/lge/app/floating/FloatingWindow;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2132
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow$1;->this$0:Lcom/lge/app/floating/FloatingWindow;

    # getter for: Lcom/lge/app/floating/FloatingWindow;->titleWindowH:I
    invoke-static {v1}, Lcom/lge/app/floating/FloatingWindow;->access$4(Lcom/lge/app/floating/FloatingWindow;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2133
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow$1;->this$0:Lcom/lge/app/floating/FloatingWindow;

    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow$1;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v2}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2136
    :cond_3b
    return-void
.end method
