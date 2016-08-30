.class public Lcom/lge/view/SafevolumeToast;
.super Ljava/lang/Object;
.source "SafevolumeToast.java"


# static fields
.field private static final MSG_HIDE_TOAST:I = 0x411

.field private static final MSG_SHOW_TOAST:I = 0x410

.field public static final TOAST_LONG_DELAY:J = 0xbb8L

.field public static final TOAST_SHORT_DELAY:J = 0x7d0L


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelay:J

.field private mHandler:Landroid/os/Handler;

.field private mIsExpanded:Z

.field private mPosition:I

.field mStatusBarReceiver:Landroid/content/BroadcastReceiver;

.field private mToastLP:Landroid/view/WindowManager$LayoutParams;

.field mToastListener:Landroid/view/animation/Animation$AnimationListener;

.field private mToastString:Ljava/lang/String;

.field private mToastView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;

    .line 50
    new-instance v1, Lcom/lge/view/SafevolumeToast$1;

    invoke-direct {v1, p0}, Lcom/lge/view/SafevolumeToast$1;-><init>(Lcom/lge/view/SafevolumeToast;)V

    iput-object v1, p0, Lcom/lge/view/SafevolumeToast;->mHandler:Landroid/os/Handler;

    .line 128
    new-instance v1, Lcom/lge/view/SafevolumeToast$2;

    invoke-direct {v1, p0}, Lcom/lge/view/SafevolumeToast$2;-><init>(Lcom/lge/view/SafevolumeToast;)V

    iput-object v1, p0, Lcom/lge/view/SafevolumeToast;->mToastListener:Landroid/view/animation/Animation$AnimationListener;

    .line 137
    new-instance v1, Lcom/lge/view/SafevolumeToast$3;

    invoke-direct {v1, p0}, Lcom/lge/view/SafevolumeToast$3;-><init>(Lcom/lge/view/SafevolumeToast;)V

    iput-object v1, p0, Lcom/lge/view/SafevolumeToast;->mStatusBarReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/lge/view/SafevolumeToast;->mWindowManager:Landroid/view/WindowManager;

    .line 42
    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget v2, Lcom/lge/R$style;->Theme_LGE_White:I

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/lge/view/SafevolumeToast;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.statusbar.expanded"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string v1, "com.lge.statusbar.collapsed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/lge/view/SafevolumeToast;->mStatusBarReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/lge/view/SafevolumeToast;)Landroid/view/View;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/view/SafevolumeToast;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast;->mToastString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lge/view/SafevolumeToast;Landroid/view/WindowManager$LayoutParams;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lge/view/SafevolumeToast;->mToastLP:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method static synthetic access$11(Lcom/lge/view/SafevolumeToast;Z)V
    .registers 2

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/lge/view/SafevolumeToast;->setToastVisibility(Z)V

    return-void
.end method

.method static synthetic access$12(Lcom/lge/view/SafevolumeToast;Z)V
    .registers 2

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/lge/view/SafevolumeToast;->mIsExpanded:Z

    return-void
.end method

.method static synthetic access$2(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast;->mToastLP:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/view/SafevolumeToast;)I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/lge/view/SafevolumeToast;->mPosition:I

    return v0
.end method

.method static synthetic access$4(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lge/view/SafevolumeToast;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lge/view/SafevolumeToast;)J
    .registers 3

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/lge/view/SafevolumeToast;->mDelay:J

    return-wide v0
.end method

.method static synthetic access$7(Lcom/lge/view/SafevolumeToast;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lge/view/SafevolumeToast;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$9(Lcom/lge/view/SafevolumeToast;)Z
    .registers 2

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/lge/view/SafevolumeToast;->mIsExpanded:Z

    return v0
.end method

.method public static loadAnim(Landroid/content/Context;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 121
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 122
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz p2, :cond_b

    if-eqz v0, :cond_b

    .line 123
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 125
    :cond_b
    return-object v0
.end method

.method private setToastVisibility(Z)V
    .registers 4
    .param p1, "vis"    # Z

    .prologue
    .line 116
    iget-object v1, p0, Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 117
    return-void

    .line 116
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method


# virtual methods
.method public showToast(Ljava/lang/CharSequence;J)V
    .registers 8
    .param p1, "strText"    # Ljava/lang/CharSequence;
    .param p2, "delayMillis"    # J

    .prologue
    const/16 v3, 0x411

    .line 107
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/view/SafevolumeToast;->mToastString:Ljava/lang/String;

    .line 108
    iput-wide p2, p0, Lcom/lge/view/SafevolumeToast;->mDelay:J

    .line 109
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$dimen;->safe_toast_y_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lge/view/SafevolumeToast;->mPosition:I

    .line 110
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/view/SafevolumeToast;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x410

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 113
    return-void
.end method
