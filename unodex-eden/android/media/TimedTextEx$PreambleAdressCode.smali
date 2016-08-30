.class public final Landroid/media/TimedTextEx$PreambleAdressCode;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreambleAdressCode"
.end annotation


# instance fields
.field public final color:I

.field public final font:I

.field public final indent:I

.field public final row:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 8
    .param p1, "row"    # I
    .param p2, "color"    # I
    .param p3, "font"    # I
    .param p4, "indent"    # I

    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    const-string v0, "TimedTextEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PreambleAdressCode / "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iput p1, p0, Landroid/media/TimedTextEx$PreambleAdressCode;->row:I

    .line 508
    iput p2, p0, Landroid/media/TimedTextEx$PreambleAdressCode;->color:I

    .line 509
    iput p3, p0, Landroid/media/TimedTextEx$PreambleAdressCode;->font:I

    .line 510
    iput p4, p0, Landroid/media/TimedTextEx$PreambleAdressCode;->indent:I

    .line 511
    return-void
.end method
