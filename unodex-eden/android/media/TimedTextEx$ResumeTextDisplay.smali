.class public final Landroid/media/TimedTextEx$ResumeTextDisplay;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResumeTextDisplay"
.end annotation


# instance fields
.field public final resume:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "resume"    # I

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    iput p1, p0, Landroid/media/TimedTextEx$ResumeTextDisplay;->resume:I

    .line 471
    return-void
.end method
