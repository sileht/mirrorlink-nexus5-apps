.class Lorg/bouncycastle/pqc/crypto/gmss/GMSSUtils;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clone([Ljava/util/Vector;)[Ljava/util/Vector;
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    array-length v1, p0

    new-array v1, v1, [Ljava/util/Vector;

    :goto_7
    array-length v2, p0

    if-ne v0, v2, :cond_c

    return-object v1

    :cond_b
    return-object v1

    :cond_c
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    aput-object v2, v1, v0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_22

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_22
    aget-object v3, v1, v0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_19
.end method

.method static clone([Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;)[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;
    .registers 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_c

    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_c
    return-object v0
.end method

.method static clone([Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;)[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;
    .registers 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_c

    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_c
    return-object v0
.end method

.method static clone([Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;)[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;
    .registers 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_c

    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_c
    return-object v0
.end method

.method static clone([Lorg/bouncycastle/pqc/crypto/gmss/Treehash;)[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;
    .registers 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_c

    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_c
    return-object v0
.end method

.method static clone([[B)[[B
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    array-length v0, p0

    new-array v1, v0, [[B

    const/4 v0, 0x0

    :goto_7
    array-length v2, p0

    if-ne v0, v2, :cond_e

    return-object v1

    :cond_b
    check-cast v0, [[B

    return-object v0

    :cond_e
    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method static clone([[Ljava/util/Vector;)[[Ljava/util/Vector;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    array-length v0, p0

    new-array v1, v0, [[Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_7
    array-length v2, p0

    if-ne v0, v2, :cond_e

    return-object v1

    :cond_b
    check-cast v0, [[Ljava/util/Vector;

    return-object v0

    :cond_e
    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSUtils;->clone([Ljava/util/Vector;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method static clone([[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;)[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    array-length v0, p0

    new-array v1, v0, [[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    const/4 v0, 0x0

    :goto_7
    array-length v2, p0

    if-ne v0, v2, :cond_e

    return-object v1

    :cond_b
    check-cast v0, [[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    return-object v0

    :cond_e
    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSUtils;->clone([Lorg/bouncycastle/pqc/crypto/gmss/Treehash;)[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method static clone([[[B)[[[B
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    array-length v0, p0

    new-array v1, v0, [[[B

    const/4 v0, 0x0

    :goto_7
    array-length v2, p0

    if-ne v0, v2, :cond_e

    return-object v1

    :cond_b
    check-cast v0, [[[B

    return-object v0

    :cond_e
    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSUtils;->clone([[B)[[B

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method
