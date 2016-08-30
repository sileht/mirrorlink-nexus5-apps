.class public final Landroid/media/TimedTextEx$SetCurrentWindow;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetCurrentWindow"
.end annotation


# instance fields
.field public final windowID:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "windowID"    # I

    .prologue
    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    iput p1, p0, Landroid/media/TimedTextEx$SetCurrentWindow;->windowID:I

    .line 558
    return-void
.end method
