.class public final Landroid/media/TimedTextEx$CarriageReturn;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarriageReturn"
.end annotation


# instance fields
.field public final cr:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "cr"    # I

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput p1, p0, Landroid/media/TimedTextEx$CarriageReturn;->cr:I

    .line 410
    return-void
.end method
