.class public Lcom/lge/zdi/splitwindow/SplitWindowLaunchOption$Parser;
.super Ljava/lang/Object;
.source "SplitWindowLaunchOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/zdi/splitwindow/SplitWindowLaunchOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# instance fields
.field private mLaunchedScreen:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "option"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/zdi/splitwindow/SplitWindowLaunchOption$Parser;->mLaunchedScreen:I

    .line 37
    invoke-direct {p0, p1}, Lcom/lge/zdi/splitwindow/SplitWindowLaunchOption$Parser;->parse(Landroid/os/Bundle;)V

    .line 38
    return-void
.end method

.method private parse(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "option"    # Landroid/os/Bundle;

    .prologue
    .line 41
    const-string v0, "com.lge.intent.extra.SPLIT_WINDOW_LAUNCH_SCREEN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 42
    const-string v0, "com.lge.intent.extra.SPLIT_WINDOW_LAUNCH_SCREEN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/zdi/splitwindow/SplitWindowLaunchOption$Parser;->mLaunchedScreen:I

    .line 44
    :cond_10
    return-void
.end method


# virtual methods
.method public getScreenLaunched()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/lge/zdi/splitwindow/SplitWindowLaunchOption$Parser;->mLaunchedScreen:I

    return v0
.end method
