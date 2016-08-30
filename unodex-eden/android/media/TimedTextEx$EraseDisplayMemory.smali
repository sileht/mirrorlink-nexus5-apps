.class public final Landroid/media/TimedTextEx$EraseDisplayMemory;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EraseDisplayMemory"
.end annotation


# instance fields
.field public final erase:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "erase"    # I

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput p1, p0, Landroid/media/TimedTextEx$EraseDisplayMemory;->erase:I

    .line 231
    return-void
.end method
