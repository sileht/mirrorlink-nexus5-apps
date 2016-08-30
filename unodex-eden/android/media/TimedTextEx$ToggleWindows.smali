.class public final Landroid/media/TimedTextEx$ToggleWindows;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToggleWindows"
.end annotation


# instance fields
.field public final windowMap:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "windowMap"    # I

    .prologue
    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    iput p1, p0, Landroid/media/TimedTextEx$ToggleWindows;->windowMap:I

    .line 769
    return-void
.end method
