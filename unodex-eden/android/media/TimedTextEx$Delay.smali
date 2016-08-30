.class public final Landroid/media/TimedTextEx$Delay;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Delay"
.end annotation


# instance fields
.field public final delay:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "delay"    # I

    .prologue
    .line 1028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1029
    iput p1, p0, Landroid/media/TimedTextEx$Delay;->delay:I

    .line 1030
    return-void
.end method
