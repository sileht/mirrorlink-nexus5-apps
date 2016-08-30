.class public Lcom/lge/dockservice/TransitionAnimator;
.super Ljava/lang/Object;
.source "TransitionAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/dockservice/TransitionAnimator$UpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEndX:I

.field private mEndY:I

.field private mIsMovingX:Z

.field private mIsMovingY:Z

.field private mProxyAnimator:Landroid/animation/ValueAnimator;

.field private mStartX:I

.field private mStartY:I

.field private mUpdateListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/lge/dockservice/DockWindowService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/dockservice/TransitionAnimator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v1, p0, Lcom/lge/dockservice/TransitionAnimator;->mProxyAnimator:Landroid/animation/ValueAnimator;

    .line 14
    iput-object v1, p0, Lcom/lge/dockservice/TransitionAnimator;->mUpdateListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    .line 15
    iput v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mStartX:I

    .line 16
    iput v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mEndX:I

    .line 17
    iput v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mStartY:I

    .line 18
    iput v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mEndY:I

    .line 19
    iput-boolean v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mIsMovingX:Z

    .line 20
    iput-boolean v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mIsMovingY:Z

    .line 61
    sget-object v0, Lcom/lge/dockservice/TransitionAnimator;->TAG:Ljava/lang/String;

    const-string v1, "create TransitionAnimator"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_54

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mProxyAnimator:Landroid/animation/ValueAnimator;

    .line 63
    sget-object v0, Lcom/lge/dockservice/TransitionAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mProxyAnimator = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/dockservice/TransitionAnimator;->mProxyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mProxyAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/lge/dockservice/TransitionAnimator$1;

    invoke-direct {v1, p0}, Lcom/lge/dockservice/TransitionAnimator$1;-><init>(Lcom/lge/dockservice/TransitionAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 96
    iget-object v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mProxyAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/lge/dockservice/TransitionAnimator$2;

    invoke-direct {v1, p0}, Lcom/lge/dockservice/TransitionAnimator$2;-><init>(Lcom/lge/dockservice/TransitionAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 122
    return-void

    .line 62
    nop

    :array_54
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$0(Lcom/lge/dockservice/TransitionAnimator;)Lcom/lge/dockservice/TransitionAnimator$UpdateListener;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mUpdateListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/lge/dockservice/TransitionAnimator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/dockservice/TransitionAnimator;)I
    .registers 2

    .prologue
    .line 15
    iget v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mStartX:I

    return v0
.end method

.method static synthetic access$3(Lcom/lge/dockservice/TransitionAnimator;)I
    .registers 2

    .prologue
    .line 17
    iget v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mStartY:I

    return v0
.end method

.method static synthetic access$4(Lcom/lge/dockservice/TransitionAnimator;)Z
    .registers 2

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mIsMovingX:Z

    return v0
.end method

.method static synthetic access$5(Lcom/lge/dockservice/TransitionAnimator;)I
    .registers 2

    .prologue
    .line 16
    iget v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mEndX:I

    return v0
.end method

.method static synthetic access$6(Lcom/lge/dockservice/TransitionAnimator;)Z
    .registers 2

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mIsMovingY:Z

    return v0
.end method

.method static synthetic access$7(Lcom/lge/dockservice/TransitionAnimator;)I
    .registers 2

    .prologue
    .line 18
    iget v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mEndY:I

    return v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mProxyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 142
    return-void
.end method

.method public end()V
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mProxyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 150
    return-void
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mProxyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isStarted()Z
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mProxyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    return v0
.end method

.method public setDuration(I)V
    .registers 6
    .param p1, "duration"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mProxyAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 130
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/DecelerateInterpolator;)V
    .registers 3
    .param p1, "decelerateInterpolator"    # Landroid/view/animation/DecelerateInterpolator;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mProxyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 126
    return-void
.end method

.method public setRangeX(II)V
    .registers 6
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/lge/dockservice/TransitionAnimator;->mStartX:I

    .line 34
    iput p2, p0, Lcom/lge/dockservice/TransitionAnimator;->mEndX:I

    .line 35
    sub-int v0, p2, p1

    if-eqz v0, :cond_2a

    .line 36
    sget-object v0, Lcom/lge/dockservice/TransitionAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "transition animation x from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mIsMovingX:Z

    .line 42
    :goto_29
    return-void

    .line 40
    :cond_2a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mIsMovingX:Z

    goto :goto_29
.end method

.method public setRangeY(II)V
    .registers 6
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/lge/dockservice/TransitionAnimator;->mStartY:I

    .line 46
    iput p2, p0, Lcom/lge/dockservice/TransitionAnimator;->mEndY:I

    .line 47
    sub-int v0, p2, p1

    if-eqz v0, :cond_2a

    .line 48
    sget-object v0, Lcom/lge/dockservice/TransitionAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "transition animation y from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mIsMovingY:Z

    .line 54
    :goto_29
    return-void

    .line 52
    :cond_2a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mIsMovingY:Z

    goto :goto_29
.end method

.method public setUpdateListener(Lcom/lge/dockservice/TransitionAnimator$UpdateListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lge/dockservice/TransitionAnimator;->mUpdateListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    .line 58
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lge/dockservice/TransitionAnimator;->mProxyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 146
    return-void
.end method
