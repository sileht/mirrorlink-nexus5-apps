.class Lcom/lge/app/floating/TitleView$DoubleTapListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TitleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/floating/TitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/app/floating/TitleView;


# direct methods
.method private constructor <init>(Lcom/lge/app/floating/TitleView;)V
    .registers 2

    .prologue
    .line 249
    iput-object p1, p0, Lcom/lge/app/floating/TitleView$DoubleTapListener;->this$0:Lcom/lge/app/floating/TitleView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/app/floating/TitleView;Lcom/lge/app/floating/TitleView$DoubleTapListener;)V
    .registers 3

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/lge/app/floating/TitleView$DoubleTapListener;-><init>(Lcom/lge/app/floating/TitleView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 261
    const/4 v0, 0x1

    return v0
.end method
