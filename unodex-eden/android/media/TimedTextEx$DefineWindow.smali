.class public final Landroid/media/TimedTextEx$DefineWindow;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefineWindow"
.end annotation


# instance fields
.field public final anchorHorizontal:I

.field public final anchorPoint:I

.field public final anchorVertical:I

.field public final columnCount:I

.field public final columnLock:I

.field public final penStyleID:I

.field public final priority:I

.field public final relativePosition:I

.field public final rowCount:I

.field public final rowLock:I

.field public final visible:I

.field public final windowID:I

.field public final windowStyleID:I


# direct methods
.method public constructor <init>(IIIIIIIIIIIII)V
    .registers 18
    .param p1, "windowID"    # I
    .param p2, "priority"    # I
    .param p3, "anchorPoint"    # I
    .param p4, "relativePosition"    # I
    .param p5, "anchorVertical"    # I
    .param p6, "anchorHorizontal"    # I
    .param p7, "rowCount"    # I
    .param p8, "columnCount"    # I
    .param p9, "rowLock"    # I
    .param p10, "columnLock"    # I
    .param p11, "visible"    # I
    .param p12, "windowStyleID"    # I
    .param p13, "penStyleID"    # I

    .prologue
    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    const-string v1, "TimedTextEx"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DefineWindow"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 672
    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 671
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iput p1, p0, Landroid/media/TimedTextEx$DefineWindow;->windowID:I

    .line 675
    iput p2, p0, Landroid/media/TimedTextEx$DefineWindow;->priority:I

    .line 676
    iput p3, p0, Landroid/media/TimedTextEx$DefineWindow;->anchorPoint:I

    .line 677
    iput p4, p0, Landroid/media/TimedTextEx$DefineWindow;->relativePosition:I

    .line 678
    iput p5, p0, Landroid/media/TimedTextEx$DefineWindow;->anchorVertical:I

    .line 679
    iput p6, p0, Landroid/media/TimedTextEx$DefineWindow;->anchorHorizontal:I

    .line 680
    iput p7, p0, Landroid/media/TimedTextEx$DefineWindow;->rowCount:I

    .line 681
    iput p8, p0, Landroid/media/TimedTextEx$DefineWindow;->columnCount:I

    .line 682
    iput p9, p0, Landroid/media/TimedTextEx$DefineWindow;->rowLock:I

    .line 683
    iput p10, p0, Landroid/media/TimedTextEx$DefineWindow;->columnLock:I

    .line 684
    iput p11, p0, Landroid/media/TimedTextEx$DefineWindow;->visible:I

    .line 685
    move/from16 v0, p12

    iput v0, p0, Landroid/media/TimedTextEx$DefineWindow;->windowStyleID:I

    .line 686
    move/from16 v0, p13

    iput v0, p0, Landroid/media/TimedTextEx$DefineWindow;->penStyleID:I

    .line 687
    return-void
.end method
