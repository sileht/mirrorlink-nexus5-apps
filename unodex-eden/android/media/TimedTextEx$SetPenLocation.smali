.class public final Landroid/media/TimedTextEx$SetPenLocation;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetPenLocation"
.end annotation


# instance fields
.field public final column:I

.field public final row:I


# direct methods
.method public constructor <init>(II)V
    .registers 6
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1005
    const-string v0, "TimedTextEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetPenLocation"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iput p1, p0, Landroid/media/TimedTextEx$SetPenLocation;->row:I

    .line 1009
    iput p2, p0, Landroid/media/TimedTextEx$SetPenLocation;->column:I

    .line 1010
    return-void
.end method
