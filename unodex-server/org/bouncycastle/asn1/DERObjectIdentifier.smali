.class public Lorg/bouncycastle/asn1/DERObjectIdentifier;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "Unknown"


# static fields
.field private static final LONG_LIMIT:J = 0xffffffffffff80L

.field private static cache:[[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private body:[B

.field identifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x100

    new-array v0, v0, [[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;->cache:[[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_e

    invoke-static {p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iput-object p1, p0, Lorg/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'identifier\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not an OID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    invoke-static {p2, v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->isValidBranchID(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    return-void

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not a valid OID branch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>([B)V
    .registers 12

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_d
    array-length v3, p1

    if-ne v0, v3, :cond_1d

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/DERObjectIdentifier;->body:[B

    return-void

    :cond_1d
    aget-byte v3, p1, v0

    and-int/lit16 v7, v3, 0xff

    const-wide v8, 0xffffffffffff80L

    cmp-long v3, v4, v8

    if-lez v3, :cond_3a

    const/4 v3, 0x1

    :goto_2b
    if-nez v3, :cond_78

    and-int/lit8 v3, v7, 0x7f

    int-to-long v8, v3

    add-long/2addr v4, v8

    and-int/lit16 v3, v7, 0x80

    if-eqz v3, :cond_3c

    const/4 v3, 0x7

    shl-long/2addr v4, v3

    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_3a
    const/4 v3, 0x0

    goto :goto_2b

    :cond_3c
    if-nez v1, :cond_49

    :goto_3e
    const/16 v3, 0x2e

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-wide/16 v4, 0x0

    goto :goto_37

    :cond_49
    const-wide/16 v8, 0x28

    cmp-long v1, v4, v8

    if-ltz v1, :cond_59

    const/4 v1, 0x1

    :goto_50
    if-nez v1, :cond_5b

    const/16 v1, 0x30

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_57
    const/4 v1, 0x0

    goto :goto_3e

    :cond_59
    const/4 v1, 0x0

    goto :goto_50

    :cond_5b
    const-wide/16 v8, 0x50

    cmp-long v1, v4, v8

    if-ltz v1, :cond_6d

    const/4 v1, 0x1

    :goto_62
    if-nez v1, :cond_6f

    const/16 v1, 0x31

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v8, 0x28

    sub-long/2addr v4, v8

    goto :goto_57

    :cond_6d
    const/4 v1, 0x0

    goto :goto_62

    :cond_6f
    const/16 v1, 0x32

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v8, 0x50

    sub-long/2addr v4, v8

    goto :goto_57

    :cond_78
    if-eqz v2, :cond_8f

    :goto_7a
    and-int/lit8 v3, v7, 0x7f

    int-to-long v8, v3

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    and-int/lit16 v3, v7, 0x80

    if-eqz v3, :cond_94

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_37

    :cond_8f
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_7a

    :cond_94
    if-nez v1, :cond_a2

    :goto_96
    const/16 v3, 0x2e

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    goto :goto_37

    :cond_a2
    const/16 v1, 0x32

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v4, 0x50

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v1, 0x0

    goto :goto_96
.end method

.method private doOutput(Ljava/io/ByteArrayOutputStream;)V
    .registers 9

    const/16 v6, 0x12

    new-instance v0, Lorg/bouncycastle/asn1/OIDTokenizer;

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/OIDTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x28

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_35

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    :goto_2e
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/OIDTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_3f

    return-void

    :cond_35
    int-to-long v4, v1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-direct {p0, p1, v2, v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_2e

    :cond_3f
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_52

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_2e

    :cond_52
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_2e
.end method

.method static fromOctetString([B)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 6

    array-length v0, p0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_5a

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    aget-byte v0, p0, v0

    and-int/lit16 v1, v0, 0xff

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    and-int/lit8 v2, v0, 0x7f

    sget-object v3, Lorg/bouncycastle/asn1/DERObjectIdentifier;->cache:[[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    monitor-enter v3

    :try_start_15
    sget-object v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;->cache:[[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aget-object v0, v0, v1

    if-eqz v0, :cond_60

    :goto_1b
    aget-object v4, v0, v2

    if-eqz v4, :cond_6c

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_75

    add-int/lit8 v0, v1, 0x1

    and-int/lit16 v1, v0, 0xff

    sget-object v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;->cache:[[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aget-object v0, v0, v1

    if-eqz v0, :cond_77

    :goto_33
    aget-object v1, v0, v2

    if-eqz v1, :cond_80

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v4

    invoke-static {p0, v4}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_89

    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v1, v1, 0x7f

    aget-object v2, v0, v1

    if-eqz v2, :cond_8b

    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_15 .. :try_end_4a} :catchall_69

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_94

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    return-object v0

    :cond_5a
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    return-object v0

    :cond_60
    :try_start_60
    sget-object v4, Lorg/bouncycastle/asn1/DERObjectIdentifier;->cache:[[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v0, 0x80

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v0, v4, v1

    goto :goto_1b

    :catchall_69
    move-exception v0

    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_60 .. :try_end_6b} :catchall_69

    throw v0

    :cond_6c
    :try_start_6c
    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    aput-object v1, v0, v2

    monitor-exit v3

    return-object v1

    :cond_75
    monitor-exit v3

    return-object v4

    :cond_77
    sget-object v4, Lorg/bouncycastle/asn1/DERObjectIdentifier;->cache:[[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v0, 0x80

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v0, v4, v1

    goto :goto_33

    :cond_80
    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    aput-object v1, v0, v2

    monitor-exit v3

    return-object v1

    :cond_89
    monitor-exit v3

    return-object v1

    :cond_8b
    new-instance v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    aput-object v2, v0, v1

    monitor-exit v3
    :try_end_93
    .catchall {:try_start_6c .. :try_end_93} :catchall_69

    return-object v2

    :cond_94
    return-object v2
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 4

    if-nez p0, :cond_5

    :cond_2
    check-cast p0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0

    :cond_5
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-nez v0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-nez v0, :cond_37

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_43

    :cond_11
    instance-of v0, p0, [B

    if-nez v0, :cond_57

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    check-cast p0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_43
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_11

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0

    :cond_57
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->fromOctetString([B)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-eqz p1, :cond_b

    :cond_6
    invoke-static {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0

    :cond_b
    instance-of v1, v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->fromOctetString([B)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method private static isValidBranchID(Ljava/lang/String;I)Z
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_5
    move v1, v2

    :goto_6
    add-int/lit8 v0, v0, -0x1

    if-ge v0, p1, :cond_b

    return v1

    :cond_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-le v4, v3, :cond_18

    :cond_13
    const/16 v4, 0x2e

    if-eq v3, v4, :cond_1e

    return v2

    :cond_18
    const/16 v4, 0x39

    if-gt v3, v4, :cond_13

    const/4 v1, 0x1

    goto :goto_6

    :cond_1e
    if-nez v1, :cond_5

    return v2
.end method

.method private static isValidIdentifier(Ljava/lang/String;)Z
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_9

    :cond_8
    return v2

    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_8

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ge v0, v1, :cond_1b

    :cond_1a
    return v2

    :cond_1b
    const/16 v1, 0x32

    if-gt v0, v1, :cond_1a

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->isValidBranchID(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private writeField(Ljava/io/ByteArrayOutputStream;J)V
    .registers 10

    const/16 v0, 0x8

    const/16 v1, 0x9

    new-array v2, v1, [B

    long-to-int v1, p2

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    :goto_d
    move v1, v0

    const-wide/16 v4, 0x80

    cmp-long v0, p2, v4

    if-gez v0, :cond_25

    const/4 v0, 0x1

    :goto_15
    if-nez v0, :cond_27

    const/4 v0, 0x7

    shr-long/2addr p2, v0

    add-int/lit8 v0, v1, -0x1

    long-to-int v1, p2

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    goto :goto_d

    :cond_25
    const/4 v0, 0x0

    goto :goto_15

    :cond_27
    rsub-int/lit8 v0, v1, 0x9

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method private writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V
    .registers 8

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    div-int/lit8 v1, v0, 0x7

    if-eqz v1, :cond_20

    new-array v2, v1, [B

    add-int/lit8 v0, v1, -0x1

    :goto_f
    if-gez v0, :cond_24

    add-int/lit8 v0, v1, -0x1

    aget-byte v1, v2, v0

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    array-length v0, v2

    invoke-virtual {p1, v2, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_1f
    return-void

    :cond_20
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1f

    :cond_24
    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    const/4 v3, 0x7

    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p2

    add-int/lit8 v0, v0, -0x1

    goto :goto_f
.end method


# virtual methods
.method asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 4

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    check-cast p1, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v1, p1, Lorg/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_10
    return v1
.end method

.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getBody()[B

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    array-length v1, v0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write([B)V

    return-void
.end method

.method encodedLength()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getBody()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method protected declared-synchronized getBody()[B
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/DERObjectIdentifier;->body:[B

    if-eqz v0, :cond_9

    :goto_5
    iget-object v0, p0, Lorg/bouncycastle/asn1/DERObjectIdentifier;->body:[B
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_18

    monitor-exit p0

    return-object v0

    :cond_9
    :try_start_9
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->doOutput(Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/DERObjectIdentifier;->body:[B
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_18

    goto :goto_5

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isConstructed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
