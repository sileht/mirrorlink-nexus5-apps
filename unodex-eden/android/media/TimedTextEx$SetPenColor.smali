.class public final Landroid/media/TimedTextEx$SetPenColor;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetPenColor"
.end annotation


# instance fields
.field public final bgColor:I

.field public final bgOpacity:I

.field public final egdeColor:I

.field public final fgColor:I

.field public final fgOpacity:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 9
    .param p1, "fgColor"    # I
    .param p2, "fgOpacity"    # I
    .param p3, "bgColor"    # I
    .param p4, "bgOpacity"    # I
    .param p5, "egdeColor"    # I

    .prologue
    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 972
    const-string v0, "TimedTextEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetPenColor"

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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iput p1, p0, Landroid/media/TimedTextEx$SetPenColor;->fgColor:I

    .line 976
    iput p2, p0, Landroid/media/TimedTextEx$SetPenColor;->fgOpacity:I

    .line 977
    iput p3, p0, Landroid/media/TimedTextEx$SetPenColor;->bgColor:I

    .line 978
    iput p4, p0, Landroid/media/TimedTextEx$SetPenColor;->bgOpacity:I

    .line 979
    iput p5, p0, Landroid/media/TimedTextEx$SetPenColor;->egdeColor:I

    .line 980
    return-void
.end method
