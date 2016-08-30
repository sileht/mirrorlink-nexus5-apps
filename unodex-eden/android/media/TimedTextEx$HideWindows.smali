.class public final Landroid/media/TimedTextEx$HideWindows;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HideWindows"
.end annotation


# instance fields
.field public final windowMap:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "windowMap"    # I

    .prologue
    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    iput p1, p0, Landroid/media/TimedTextEx$HideWindows;->windowMap:I

    .line 749
    return-void
.end method
