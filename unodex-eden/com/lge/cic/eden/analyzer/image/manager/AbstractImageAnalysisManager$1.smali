.class Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager$1;
.super Ljava/lang/Object;
.source "AbstractImageAnalysisManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;->request(Ljava/util/ArrayList;Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager$ImageAnalysisListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;


# direct methods
.method constructor <init>(Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager$1;->this$0:Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/util/Pair;Landroid/util/Pair;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "cmp0":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/Bitmap;>;"
    .local p2, "cmp1":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/Bitmap;>;"
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/lge/cic/eden/analyzer/image/manager/AbstractImageAnalysisManager$1;->compare(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result v0

    return v0
.end method
