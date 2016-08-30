.class Lcom/lge/app/floating/FloatingWindow$8$1;
.super Ljava/lang/Object;
.source "FloatingWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/app/floating/FloatingWindow$8;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/app/floating/FloatingWindow$8;

.field private final synthetic val$myView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lge/app/floating/FloatingWindow$8;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindow$8$1;->this$1:Lcom/lge/app/floating/FloatingWindow$8;

    iput-object p2, p0, Lcom/lge/app/floating/FloatingWindow$8$1;->val$myView:Landroid/view/View;

    .line 3439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 3442
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow$8$1;->this$1:Lcom/lge/app/floating/FloatingWindow$8;

    # getter for: Lcom/lge/app/floating/FloatingWindow$8;->this$0:Lcom/lge/app/floating/FloatingWindow;
    invoke-static {v0}, Lcom/lge/app/floating/FloatingWindow$8;->access$0(Lcom/lge/app/floating/FloatingWindow$8;)Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindow;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow$8$1;->val$myView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 3443
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow$8$1;->this$1:Lcom/lge/app/floating/FloatingWindow$8;

    # getter for: Lcom/lge/app/floating/FloatingWindow$8;->this$0:Lcom/lge/app/floating/FloatingWindow;
    invoke-static {v0}, Lcom/lge/app/floating/FloatingWindow$8;->access$0(Lcom/lge/app/floating/FloatingWindow$8;)Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lge/app/floating/FloatingWindow;->mIsImeVisible:Z

    .line 3444
    return-void
.end method
