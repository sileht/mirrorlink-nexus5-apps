.class abstract Lcom/lge/app/floating/QslideView;
.super Landroid/widget/RelativeLayout;
.source "QslideView.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field protected mActivity:Lcom/lge/app/floating/FloatableActivity;

.field protected mWindow:Lcom/lge/app/floating/FloatingWindow;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-class v0, Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/app/floating/FloatingWindow;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 13
    iput-object p2, p0, Lcom/lge/app/floating/QslideView;->mWindow:Lcom/lge/app/floating/FloatingWindow;

    .line 15
    return-void
.end method


# virtual methods
.method protected getRealWindowManager()Landroid/view/WindowManager;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/app/floating/QslideView;->mWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->getRealWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method protected getWindow()Lcom/lge/app/floating/FloatingWindow;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/app/floating/QslideView;->mWindow:Lcom/lge/app/floating/FloatingWindow;

    return-object v0
.end method

.method protected getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/app/floating/QslideView;->mWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected isWindowAttached()Z
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lge/app/floating/QslideView;->mWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->isAttached()Z

    move-result v0

    return v0
.end method
