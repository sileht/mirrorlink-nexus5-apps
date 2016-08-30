.class public Lcom/lge/cic/eden/service/condition/AnalysisCondition;
.super Ljava/lang/Object;
.source "AnalysisCondition.java"


# static fields
.field public static MIN_BATTERY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 4
    const/4 v0, 0x5

    sput v0, Lcom/lge/cic/eden/service/condition/AnalysisCondition;->MIN_BATTERY:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
