.class public final Landroid/media/TimedTextEx$Backspace;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Backspace"
.end annotation


# instance fields
.field public final backSpace:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "backSpace"    # I

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput p1, p0, Landroid/media/TimedTextEx$Backspace;->backSpace:I

    .line 451
    return-void
.end method
