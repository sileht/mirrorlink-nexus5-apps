.class Lcom/lge/app/floating/FloatingWindow$8;
.super Ljava/lang/Object;
.source "FloatingWindow.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/app/floating/FloatingWindow;->requestFocusAndShowKeyboard(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/app/floating/FloatingWindow;

.field private final synthetic val$oldListener:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method constructor <init>(Lcom/lge/app/floating/FloatingWindow;Landroid/view/View$OnFocusChangeListener;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindow$8;->this$0:Lcom/lge/app/floating/FloatingWindow;

    iput-object p2, p0, Lcom/lge/app/floating/FloatingWindow$8;->val$oldListener:Landroid/view/View$OnFocusChangeListener;

    .line 3431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lge/app/floating/FloatingWindow$8;)Lcom/lge/app/floating/FloatingWindow;
    .registers 2

    .prologue
    .line 3431
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow$8;->this$0:Lcom/lge/app/floating/FloatingWindow;

    return-object v0
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 3435
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow$8;->val$oldListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 3436
    if-eqz p2, :cond_1d

    .line 3437
    move-object v0, p1

    .line 3438
    .local v0, "myView":Landroid/view/View;
    # getter for: Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindow;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "show soft input by focus change"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3439
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow$8;->this$0:Lcom/lge/app/floating/FloatingWindow;

    iget-object v1, v1, Lcom/lge/app/floating/FloatingWindow;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/lge/app/floating/FloatingWindow$8$1;

    invoke-direct {v2, p0, v0}, Lcom/lge/app/floating/FloatingWindow$8$1;-><init>(Lcom/lge/app/floating/FloatingWindow$8;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3447
    .end local v0    # "myView":Landroid/view/View;
    :cond_1d
    return-void
.end method
