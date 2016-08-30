.class public Lcom/lge/zdi/splitwindow/SplitWindowLaunchOption;
.super Ljava/lang/Object;
.source "SplitWindowLaunchOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/zdi/splitwindow/SplitWindowLaunchOption$Parser;
    }
.end annotation


# static fields
.field private static final KEY_SPLIT_WINDOW_OPTION_LAUNCH_SCREEN:Ljava/lang/String; = "com.lge.intent.extra.SPLIT_WINDOW_LAUNCH_SCREEN"

.field public static final SPLIT_WINDOW_LAUNCH_SCREEN_A:I = 0x1

.field public static final SPLIT_WINDOW_LAUNCH_SCREEN_B:I = 0x2

.field public static final SPLIT_WINDOW_LAUNCH_SCREEN_FOCUSED:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static final setScreenLaunched(Landroid/os/Bundle;I)V
    .registers 3
    .param p0, "extra"    # Landroid/os/Bundle;
    .param p1, "launchedScreen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 15
    if-eqz p0, :cond_4

    if-nez p1, :cond_a

    .line 16
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 19
    :cond_a
    packed-switch p1, :pswitch_data_1a

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 23
    :pswitch_13
    const-string v0, "com.lge.intent.extra.SPLIT_WINDOW_LAUNCH_SCREEN"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    return-void

    .line 19
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method
