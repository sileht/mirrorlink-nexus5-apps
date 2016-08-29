.class Lorg/bouncycastle/asn1/LazyEncodedSequence;
.super Lorg/bouncycastle/asn1/ASN1Sequence;
.source "Unknown"


# instance fields
.field private encoded:[B


# direct methods
.method constructor <init>([B)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    return-void
.end method

.method private parse()V
    .registers 4

    new-instance v0, Lorg/bouncycastle/asn1/LazyConstructionEnumeration;

    iget-object v1, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/LazyConstructionEnumeration;-><init>([B)V

    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    return-void

    :cond_11
    iget-object v1, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->seq:Ljava/util/Vector;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_7
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-nez v0, :cond_c

    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;)V

    :goto_b
    return-void

    :cond_c
    const/16 v0, 0x30

    iget-object v1, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    goto :goto_b
.end method

.method encodedLength()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-nez v0, :cond_d

    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v0

    return v0

    :cond_d
    iget-object v0, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-nez v0, :cond_b

    :goto_5
    invoke-super {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_f

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_b
    :try_start_b
    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->parse()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    goto :goto_5

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getObjects()Ljava/util/Enumeration;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-eqz v0, :cond_e

    new-instance v0, Lorg/bouncycastle/asn1/LazyConstructionEnumeration;

    iget-object v1, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/LazyConstructionEnumeration;-><init>([B)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_14

    monitor-exit p0

    return-object v0

    :cond_e
    :try_start_e
    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_14

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-nez v0, :cond_b

    :goto_5
    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_f

    move-result v0

    monitor-exit p0

    return v0

    :cond_b
    :try_start_b
    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->parse()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    goto :goto_5

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-nez v0, :cond_9

    :goto_4
    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->parse()V

    goto :goto_4
.end method

.method toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-nez v0, :cond_9

    :goto_4
    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->parse()V

    goto :goto_4
.end method
