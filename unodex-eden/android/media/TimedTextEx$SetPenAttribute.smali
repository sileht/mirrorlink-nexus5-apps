.class public final Landroid/media/TimedTextEx$SetPenAttribute;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetPenAttribute"
.end annotation


# instance fields
.field public final edgeType:I

.field public final font:I

.field public final italics:I

.field public final offSet:I

.field public final penSize:I

.field public final textTag:I

.field public final underline:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .registers 11
    .param p1, "penSize"    # I
    .param p2, "font"    # I
    .param p3, "textTag"    # I
    .param p4, "offSet"    # I
    .param p5, "italics"    # I
    .param p6, "underline"    # I
    .param p7, "edgeType"    # I

    .prologue
    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 919
    const-string v0, "TimedTextEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetPenAttribute"

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

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iput p1, p0, Landroid/media/TimedTextEx$SetPenAttribute;->penSize:I

    .line 922
    iput p2, p0, Landroid/media/TimedTextEx$SetPenAttribute;->font:I

    .line 923
    iput p3, p0, Landroid/media/TimedTextEx$SetPenAttribute;->textTag:I

    .line 924
    iput p4, p0, Landroid/media/TimedTextEx$SetPenAttribute;->offSet:I

    .line 925
    iput p5, p0, Landroid/media/TimedTextEx$SetPenAttribute;->italics:I

    .line 926
    iput p6, p0, Landroid/media/TimedTextEx$SetPenAttribute;->underline:I

    .line 927
    iput p7, p0, Landroid/media/TimedTextEx$SetPenAttribute;->edgeType:I

    .line 928
    return-void
.end method
