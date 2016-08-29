.class Lorg/bouncycastle/crypto/tls/DTLSReassembler;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;
    }
.end annotation


# instance fields
.field private final body:[B

.field private missing:Ljava/util/Vector;

.field private final msg_type:S


# direct methods
.method constructor <init>(SI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    int-to-short v0, p1

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->msg_type:S

    new-array v0, p2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->body:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    new-instance v1, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method contributeFragment(SI[BIII)V
    .registers 15

    const/4 v1, 0x0

    add-int v2, p5, p6

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->msg_type:S

    if-eq v0, p1, :cond_8

    :cond_7
    return-void

    :cond_8
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->body:[B

    array-length v0, v0

    if-ne v0, p2, :cond_7

    if-gt v2, p2, :cond_7

    if-eqz p6, :cond_1a

    :goto_11
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_39

    :cond_19
    return-void

    :cond_1a
    if-eqz p5, :cond_1d

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->getEnd()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_1c

    :cond_39
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->getStart()I

    move-result v3

    if-ge v3, v2, :cond_19

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->getEnd()I

    move-result v3

    if-gt v3, p5, :cond_51

    :goto_4d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_51
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->getStart()I

    move-result v3

    invoke-static {v3, p5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->getEnd()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, v4, v3

    add-int v6, p4, v3

    sub-int/2addr v6, p5

    iget-object v7, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->body:[B

    invoke-static {p3, v6, v7, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->getStart()I

    move-result v5

    if-eq v3, v5, :cond_8b

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->getEnd()I

    move-result v5

    if-eq v4, v5, :cond_9e

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    new-instance v6, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->getEnd()I

    move-result v7

    invoke-direct {v6, v4, v7}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;-><init>(II)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v6, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->setEnd(I)V

    goto :goto_4d

    :cond_8b
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->getEnd()I

    move-result v3

    if-eq v4, v3, :cond_95

    invoke-virtual {v0, v4}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->setStart(I)V

    goto :goto_4d

    :cond_95
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->removeElementAt(I)V

    move v1, v0

    goto :goto_4d

    :cond_9e
    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->setEnd(I)V

    goto :goto_4d
.end method

.method getBodyIfComplete()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->body:[B

    goto :goto_9
.end method

.method getType()S
    .registers 2

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->msg_type:S

    return v0
.end method

.method reset()V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    new-instance v1, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->body:[B

    array-length v3, v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method
