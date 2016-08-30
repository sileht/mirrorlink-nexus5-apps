.class public final Landroid/media/TimedTextEx$SetWindowAttribute;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetWindowAttribute"
.end annotation


# instance fields
.field public final borderColor:I

.field public final borderType:I

.field public final displayEffect:I

.field public final effectDirection:I

.field public final effectSpeed:I

.field public final fillColor:I

.field public final fillOpacity:I

.field public final justify:I

.field public final printDirection:I

.field public final scrollDirection:I

.field public final wordRap:I


# direct methods
.method public constructor <init>(IIIIIIIIIII)V
    .registers 15
    .param p1, "justify"    # I
    .param p2, "printDirection"    # I
    .param p3, "scrollDirection"    # I
    .param p4, "wordRap"    # I
    .param p5, "displayEffect"    # I
    .param p6, "effectDirection"    # I
    .param p7, "effectSpeed"    # I
    .param p8, "fillColor"    # I
    .param p9, "fillOpacity"    # I
    .param p10, "borderType"    # I
    .param p11, "borderColor"    # I

    .prologue
    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 850
    const-string v0, "TimedTextEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetWindowAttribute"

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

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 851
    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 850
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iput p1, p0, Landroid/media/TimedTextEx$SetWindowAttribute;->justify:I

    .line 854
    iput p2, p0, Landroid/media/TimedTextEx$SetWindowAttribute;->printDirection:I

    .line 855
    iput p3, p0, Landroid/media/TimedTextEx$SetWindowAttribute;->scrollDirection:I

    .line 856
    iput p4, p0, Landroid/media/TimedTextEx$SetWindowAttribute;->wordRap:I

    .line 857
    iput p5, p0, Landroid/media/TimedTextEx$SetWindowAttribute;->displayEffect:I

    .line 858
    iput p6, p0, Landroid/media/TimedTextEx$SetWindowAttribute;->effectDirection:I

    .line 859
    iput p7, p0, Landroid/media/TimedTextEx$SetWindowAttribute;->effectSpeed:I

    .line 860
    iput p8, p0, Landroid/media/TimedTextEx$SetWindowAttribute;->fillColor:I

    .line 861
    iput p9, p0, Landroid/media/TimedTextEx$SetWindowAttribute;->fillOpacity:I

    .line 862
    iput p10, p0, Landroid/media/TimedTextEx$SetWindowAttribute;->borderType:I

    .line 863
    iput p11, p0, Landroid/media/TimedTextEx$SetWindowAttribute;->borderColor:I

    .line 864
    return-void
.end method
