.class public final Landroid/media/TimedTextEx$EndOfCaption;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EndOfCaption"
.end annotation


# instance fields
.field public final end:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "end"    # I

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput p1, p0, Landroid/media/TimedTextEx$EndOfCaption;->end:I

    .line 271
    return-void
.end method
