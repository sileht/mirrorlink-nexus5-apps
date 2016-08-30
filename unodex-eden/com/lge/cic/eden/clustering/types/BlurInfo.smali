.class public Lcom/lge/cic/eden/clustering/types/BlurInfo;
.super Ljava/lang/Object;
.source "BlurInfo.java"


# static fields
.field private static TAU_BLUR:F


# instance fields
.field public score:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5
    const v0, 0x3da3d70a    # 0.08f

    sput v0, Lcom/lge/cic/eden/clustering/types/BlurInfo;->TAU_BLUR:F

    return-void
.end method

.method public constructor <init>(F)V
    .registers 3
    .param p1, "score"    # F

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/cic/eden/clustering/types/BlurInfo;->score:F

    .line 8
    iput p1, p0, Lcom/lge/cic/eden/clustering/types/BlurInfo;->score:F

    .line 9
    return-void
.end method


# virtual methods
.method public isBlur()Z
    .registers 3

    .prologue
    .line 12
    iget v0, p0, Lcom/lge/cic/eden/clustering/types/BlurInfo;->score:F

    sget v1, Lcom/lge/cic/eden/clustering/types/BlurInfo;->TAU_BLUR:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    .line 13
    const/4 v0, 0x1

    .line 15
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
