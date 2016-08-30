.class public Lcom/lge/telephony/utils/SIDRangeType;
.super Ljava/lang/Object;
.source "SIDRangeType.java"


# instance fields
.field private countryIndex:I

.field private end:I

.field private index:I

.field private start:I


# direct methods
.method constructor <init>(IIII)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "countryIndex"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/lge/telephony/utils/SIDRangeType;->index:I

    .line 29
    iput p2, p0, Lcom/lge/telephony/utils/SIDRangeType;->countryIndex:I

    .line 30
    iput p3, p0, Lcom/lge/telephony/utils/SIDRangeType;->start:I

    .line 31
    iput p4, p0, Lcom/lge/telephony/utils/SIDRangeType;->end:I

    .line 32
    return-void
.end method


# virtual methods
.method public getCountryIndex()I
    .registers 2

    .prologue
    .line 20
    iget v0, p0, Lcom/lge/telephony/utils/SIDRangeType;->countryIndex:I

    return v0
.end method

.method public getEnd()I
    .registers 2

    .prologue
    .line 24
    iget v0, p0, Lcom/lge/telephony/utils/SIDRangeType;->end:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 12
    iget v0, p0, Lcom/lge/telephony/utils/SIDRangeType;->index:I

    return v0
.end method

.method public getStart()I
    .registers 2

    .prologue
    .line 16
    iget v0, p0, Lcom/lge/telephony/utils/SIDRangeType;->start:I

    return v0
.end method
