.class public final Landroid/media/TimedTextEx$Rollup4;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rollup4"
.end annotation


# instance fields
.field public final rollup:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "rollup"    # I

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput p1, p0, Landroid/media/TimedTextEx$Rollup4;->rollup:I

    .line 389
    return-void
.end method
