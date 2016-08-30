.class public final Landroid/media/TimedTextEx$TapOffset2;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TapOffset2"
.end annotation


# instance fields
.field public final tapOffset:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "tapOffset"    # I

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput p1, p0, Landroid/media/TimedTextEx$TapOffset2;->tapOffset:I

    .line 310
    return-void
.end method
