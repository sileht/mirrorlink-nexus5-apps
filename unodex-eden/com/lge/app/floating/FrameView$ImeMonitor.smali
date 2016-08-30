.class Lcom/lge/app/floating/FrameView$ImeMonitor;
.super Ljava/lang/Object;
.source "FrameView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/floating/FrameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImeMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/app/floating/FrameView;


# direct methods
.method private constructor <init>(Lcom/lge/app/floating/FrameView;)V
    .registers 2

    .prologue
    .line 637
    iput-object p1, p0, Lcom/lge/app/floating/FrameView$ImeMonitor;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/app/floating/FrameView;Lcom/lge/app/floating/FrameView$ImeMonitor;)V
    .registers 3

    .prologue
    .line 637
    invoke-direct {p0, p1}, Lcom/lge/app/floating/FrameView$ImeMonitor;-><init>(Lcom/lge/app/floating/FrameView;)V

    return-void
.end method


# virtual methods
.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .registers 13
    .param p1, "oldFocus"    # Landroid/view/View;
    .param p2, "newFocus"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    .line 641
    sget-object v6, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "focus changed from "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    if-eqz p2, :cond_e6

    instance-of v6, p2, Landroid/widget/TextView;

    if-eqz v6, :cond_e6

    instance-of v6, p2, Landroid/widget/Button;

    if-nez v6, :cond_e6

    move-object v5, p2

    .line 643
    check-cast v5, Landroid/widget/TextView;

    .line 644
    .local v5, "tv":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/lge/app/floating/FrameView$ImeMonitor;->this$0:Lcom/lge/app/floating/FrameView;

    iget-object v6, v6, Lcom/lge/app/floating/FrameView;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Lcom/lge/app/floating/FloatableActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 645
    .local v2, "im":Landroid/view/inputmethod/InputMethodManager;
    sget-object v6, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "tv.isEnabled="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/widget/TextView;->isEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 646
    const-string v8, " tv.isIputMethodTarget="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/widget/TextView;->isInputMethodTarget()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 647
    const-string v8, " im.isActive="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 648
    const-string v8, " mIsImeVisible="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/app/floating/FrameView$ImeMonitor;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-virtual {v8}, Lcom/lge/app/floating/FrameView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v8

    iget-boolean v8, v8, Lcom/lge/app/floating/FloatingWindow;->mIsImeVisible:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 645
    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-virtual {v5}, Landroid/widget/TextView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_e6

    iget-object v6, p0, Lcom/lge/app/floating/FrameView$ImeMonitor;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-virtual {v6}, Lcom/lge/app/floating/FrameView;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v6

    iget-boolean v6, v6, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->dontUseIme:Z

    if-nez v6, :cond_e6

    iget-object v6, p0, Lcom/lge/app/floating/FrameView$ImeMonitor;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-virtual {v6}, Lcom/lge/app/floating/FrameView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/app/floating/FloatingWindow;->isInLowProfile()Z

    move-result v6

    if-nez v6, :cond_e6

    iget-object v6, p0, Lcom/lge/app/floating/FrameView$ImeMonitor;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-virtual {v6}, Lcom/lge/app/floating/FrameView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/app/floating/FloatingWindow;->isInOverlay()Z

    move-result v6

    if-nez v6, :cond_e6

    .line 650
    sget-object v6, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    const-string v7, "focus is given to text view"

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v6, p0, Lcom/lge/app/floating/FrameView$ImeMonitor;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-virtual {v6}, Lcom/lge/app/floating/FrameView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v6

    iget-boolean v6, v6, Lcom/lge/app/floating/FloatingWindow;->mIsImeVisible:Z

    if-nez v6, :cond_c8

    .line 652
    iget-object v6, p0, Lcom/lge/app/floating/FrameView$ImeMonitor;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-virtual {v6}, Lcom/lge/app/floating/FrameView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Lcom/lge/app/floating/FloatingWindow;->setLayoutLimit(ZZ)V

    .line 653
    iget-object v6, p0, Lcom/lge/app/floating/FrameView$ImeMonitor;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-virtual {v6}, Lcom/lge/app/floating/FrameView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v6

    iput-boolean v9, v6, Lcom/lge/app/floating/FloatingWindow;->mIsImeVisible:Z

    .line 655
    :cond_c8
    iget-object v6, p0, Lcom/lge/app/floating/FrameView$ImeMonitor;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-virtual {v6}, Lcom/lge/app/floating/FrameView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 656
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_e6

    .line 657
    sget-object v6, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    const-string v7, "window already has FOCUSABLE state. Force show IME"

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object v6, p0, Lcom/lge/app/floating/FrameView$ImeMonitor;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-virtual {v6}, Lcom/lge/app/floating/FrameView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/lge/app/floating/FloatingWindow;->requestFocusAndShowKeyboard(Landroid/view/View;)V

    .line 664
    .end local v2    # "im":Landroid/view/inputmethod/InputMethodManager;
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "tv":Landroid/widget/TextView;
    :cond_e6
    const/4 v3, 0x1

    .line 665
    .local v3, "isShowSoftInputOnFocus":Z
    instance-of v6, p2, Landroid/widget/EditText;

    if-eqz v6, :cond_119

    .line 667
    :try_start_eb
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getShowSoftInputOnFocus"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 668
    .local v1, "getShowSoftInputOnFocus":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 669
    sget-object v6, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "isShowSoftInputOnFocus : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_119} :catch_11a

    .line 674
    .end local v1    # "getShowSoftInputOnFocus":Ljava/lang/reflect/Method;
    :cond_119
    :goto_119
    return-void

    .line 670
    :catch_11a
    move-exception v0

    .line 671
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getShowSoftInputOnFocus() - reflection fail, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_119
.end method
