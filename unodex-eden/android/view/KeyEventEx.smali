.class public Landroid/view/KeyEventEx;
.super Landroid/view/KeyEvent;
.source "KeyEventEx.java"


# static fields
.field public static final KEYCODE_DUAL_WINDOW:I = 0xac

.field public static final KEYCODE_HOT_KEY:I = 0xa5

.field public static final KEYCODE_MESSAGE:I = 0xad

.field public static final KEYCODE_QMEMO:I = 0xab

.field public static final KEYCODE_QSLIDE:I = 0xa7

.field public static final KEYCODE_ROTATION:I = 0xaa

.field public static final KEYCODE_SIM_SWITCH:I = 0xa6


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "action"    # I
    .param p2, "code"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 21
    return-void
.end method
