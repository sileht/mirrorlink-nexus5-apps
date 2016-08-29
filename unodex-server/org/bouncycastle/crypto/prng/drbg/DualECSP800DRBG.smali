.class public Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;


# static fields
.field private static final MAX_ADDITIONAL_INPUT:I = 0x1000

.field private static final MAX_ENTROPY_LENGTH:I = 0x1000

.field private static final MAX_PERSONALIZATION_STRING:I = 0x1000

.field private static final RESEED_MAX:J = 0x80000000L

.field private static final p256_Px:Ljava/math/BigInteger;

.field private static final p256_Py:Ljava/math/BigInteger;

.field private static final p256_Qx:Ljava/math/BigInteger;

.field private static final p256_Qy:Ljava/math/BigInteger;

.field private static final p384_Px:Ljava/math/BigInteger;

.field private static final p384_Py:Ljava/math/BigInteger;

.field private static final p384_Qx:Ljava/math/BigInteger;

.field private static final p384_Qy:Ljava/math/BigInteger;

.field private static final p521_Px:Ljava/math/BigInteger;

.field private static final p521_Py:Ljava/math/BigInteger;

.field private static final p521_Qx:Ljava/math/BigInteger;

.field private static final p521_Qy:Ljava/math/BigInteger;


# instance fields
.field private _P:Lorg/bouncycastle/math/ec/ECPoint;

.field private _Q:Lorg/bouncycastle/math/ec/ECPoint;

.field private _curve:Lorg/bouncycastle/math/ec/ECCurve$Fp;

.field private _digest:Lorg/bouncycastle/crypto/Digest;

.field private _entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

.field private _outlen:I

.field private _reseedCounter:J

.field private _s:[B

.field private _sLength:I

.field private _securityStrength:I

.field private _seedlen:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v2, 0x10

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v1, "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p256_Px:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v1, "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p256_Py:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v1, "c97445f45cdef9f0d3e05e1e585fc297235b82b5be8ff3efca67c59852018192"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p256_Qx:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v1, "b28ef557ba31dfcbdd21ac46e2a91e3c304f44cb87058ada2cb815151e610046"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p256_Qy:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v1, "aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p384_Px:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v1, "3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p384_Py:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v1, "8e722de3125bddb05580164bfe20b8b432216a62926c57502ceede31c47816edd1e89769124179d0b695106428815065"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p384_Qx:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v1, "023b1660dd701d0839fd45eec36f9ee7b32e13b315dc02610aa1b636e346df671f790f84c5e09b05674dbb7e45c803dd"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p384_Qy:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v1, "c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p521_Px:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v1, "11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p521_Py:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v1, "1b9fa3e518d683c6b65763694ac8efbaec6fab44f2276171a42726507dd08add4c3b3f4c1ebc5b1222ddba077f722943b24c3edfa0f85fe24d0c8c01591f0be6f63"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p521_Qx:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v1, "1f3bdba585295d9a1110d1df1f9430ef8442c5018976ff3437ef91b81dc0b8132c8d5c39c32d0e004a3092b7d327c0e7a4d26d2c7b69b58f9066652911e457779de"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p521_Qy:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/prng/EntropySource;[B[B)V
    .registers 13

    const/16 v5, 0x1000

    const/16 v4, 0xc0

    const/16 v3, 0x80

    const/16 v2, 0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    iput-object p3, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    iput p2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_securityStrength:I

    const/16 v0, 0x200

    invoke-static {p4, v0}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->isTooLarge([BI)Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-interface {p3}, Lorg/bouncycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v0

    if-ge v0, p2, :cond_54

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EntropySource must provide between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bits"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Personalization string too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    invoke-interface {p3}, Lorg/bouncycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v0

    if-gt v0, v5, :cond_1f

    invoke-interface {p3}, Lorg/bouncycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v0

    invoke-static {v0, p5, p4}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v1

    if-le p2, v3, :cond_71

    if-le p2, v4, :cond_ef

    if-le p2, v2, :cond_15a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "security strength cannot be greater than 256 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_71
    invoke-static {p1}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->getMaxSecurityStrength(Lorg/bouncycastle/crypto/Digest;)I

    move-result v0

    if-lt v0, v3, :cond_e6

    iput v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_seedlen:I

    const/16 v0, 0x1e

    iput v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    const-string/jumbo v0, "P-256"

    invoke-static {v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_curve:Lorg/bouncycastle/math/ec/ECCurve$Fp;

    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_curve:Lorg/bouncycastle/math/ec/ECCurve$Fp;

    new-instance v3, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_curve:Lorg/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p256_Px:Ljava/math/BigInteger;

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v4, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_curve:Lorg/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p256_Py:Ljava/math/BigInteger;

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_P:Lorg/bouncycastle/math/ec/ECPoint;

    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_curve:Lorg/bouncycastle/math/ec/ECCurve$Fp;

    new-instance v3, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_curve:Lorg/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p256_Qx:Ljava/math/BigInteger;

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v4, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_curve:Lorg/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p256_Qy:Ljava/math/BigInteger;

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    :goto_d0
    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_Q:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_seedlen:I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->hash_df(Lorg/bouncycastle/crypto/Digest;[BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    array-length v0, v0

    iput v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_sLength:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_reseedCounter:J

    return-void

    :cond_e6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Requested security strength is not supported by digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ef
    invoke-static {p1}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->getMaxSecurityStrength(Lorg/bouncycastle/crypto/Digest;)I

    move-result v0

    if-lt v0, v4, :cond_151

    const/16 v0, 0x180

    iput v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_seedlen:I

    const/16 v0, 0x2e

    iput v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    const-string/jumbo v0, "P-384"

    invoke-static {v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_curve:Lorg/bouncycastle/math/ec/ECCurve$Fp;

    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_curve:Lorg/bouncycastle/math/ec/ECCurve$Fp;

    new-instance v3, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_curve:Lorg/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p384_Px:Ljava/math/BigInteger;

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v4, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_curve:Lorg/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p384_Py:Ljava/math/BigInteger;

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_P:Lorg/bouncycastle/math/ec/ECPoint;

    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_curve:Lorg/bouncycastle/math/ec/ECCurve$Fp;

    new-instance v3, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_curve:Lorg/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p384_Qx:Ljava/math/BigInteger;

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v4, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_curve:Lorg/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p384_Qy:Ljava/math/BigInteger;

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    goto :goto_d0

    :cond_151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Requested security strength is not supported by digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15a
    invoke-static {p1}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->getMaxSecurityStrength(Lorg/bouncycastle/crypto/Digest;)I

    move-result v0

    if-lt v0, v2, :cond_1bd

    const/16 v0, 0x209

    iput v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_seedlen:I

    const/16 v0, 0x3f

    iput v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    const-string/jumbo v0, "P-521"

    invoke-static {v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_curve:Lorg/bouncycastle/math/ec/ECCurve$Fp;

    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_curve:Lorg/bouncycastle/math/ec/ECCurve$Fp;

    new-instance v3, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_curve:Lorg/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p521_Px:Ljava/math/BigInteger;

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v4, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_curve:Lorg/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p521_Py:Ljava/math/BigInteger;

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_P:Lorg/bouncycastle/math/ec/ECPoint;

    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_curve:Lorg/bouncycastle/math/ec/ECCurve$Fp;

    new-instance v3, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_curve:Lorg/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p521_Qx:Ljava/math/BigInteger;

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v4, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_curve:Lorg/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p521_Qy:Ljava/math/BigInteger;

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    goto/16 :goto_d0

    :cond_1bd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Requested security strength is not supported by digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private pad8([BI)[B
    .registers 9

    const/4 v1, 0x0

    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_f

    rem-int/lit8 v0, p2, 0x8

    rsub-int/lit8 v3, v0, 0x8

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-gez v0, :cond_10

    return-object p1

    :cond_f
    return-object p1

    :cond_10
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int v4, v2, v3

    rsub-int/lit8 v5, v3, 0x8

    shr-int/2addr v1, v5

    or-int/2addr v1, v4

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    goto :goto_c
.end method

.method private xor([B[B)[B
    .registers 7

    if-eqz p2, :cond_a

    array-length v0, p1

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_6
    array-length v2, v1

    if-ne v0, v2, :cond_b

    return-object v1

    :cond_a
    return-object p1

    :cond_b
    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method


# virtual methods
.method public generate([B[BZ)I
    .registers 16

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    array-length v0, p1

    mul-int/lit8 v5, v0, 0x8

    array-length v0, p1

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    div-int v6, v0, v2

    const/16 v0, 0x200

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->isTooLarge([BI)Z

    move-result v0

    if-nez v0, :cond_25

    iget-wide v8, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_reseedCounter:J

    int-to-long v10, v6

    add-long/2addr v8, v10

    const-wide v10, 0x80000000L

    cmp-long v0, v8, v10

    if-gtz v0, :cond_2e

    move v0, v4

    :goto_21
    if-nez v0, :cond_30

    const/4 v0, -0x1

    return v0

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Additional input too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    move v0, v1

    goto :goto_21

    :cond_30
    if-nez p3, :cond_5d

    move-object v0, p2

    :goto_33
    if-nez v0, :cond_62

    :goto_35
    move-object v2, v0

    move v0, v1

    :goto_37
    if-lt v0, v6, :cond_6b

    iget v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    mul-int/2addr v0, v6

    array-length v3, p1

    if-lt v0, v3, :cond_cd

    :goto_3f
    iget v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_sLength:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_P:Lorg/bouncycastle/math/ec/ECPoint;

    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getX()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    return v5

    :cond_5d
    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->reseed([B)V

    move-object v0, v3

    goto :goto_33

    :cond_62
    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    iget v7, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_seedlen:I

    invoke-static {v2, v0, v7}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->hash_df(Lorg/bouncycastle/crypto/Digest;[BI)[B

    move-result-object v0

    goto :goto_35

    :cond_6b
    new-instance v7, Ljava/math/BigInteger;

    iget-object v8, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    invoke-direct {p0, v8, v2}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->xor([B[B)[B

    move-result-object v2

    invoke-direct {v7, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_P:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v2, v7}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECPoint;->getX()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_Q:Lorg/bouncycastle/math/ec/ECPoint;

    new-instance v7, Ljava/math/BigInteger;

    iget-object v8, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    invoke-direct {v7, v4, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v2, v7}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECPoint;->getX()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    array-length v7, v2

    iget v8, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    if-gt v7, v8, :cond_c0

    iget v7, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    mul-int/2addr v7, v0

    iget v8, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    array-length v9, v2

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    array-length v8, v2

    invoke-static {v2, v1, p1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_b4
    iget-wide v8, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_reseedCounter:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_reseedCounter:J

    add-int/lit8 v0, v0, 0x1

    move-object v2, v3

    goto/16 :goto_37

    :cond_c0
    array-length v7, v2

    iget v8, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    sub-int/2addr v7, v8

    iget v8, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    mul-int/2addr v8, v0

    iget v9, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    invoke-static {v2, v7, p1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b4

    :cond_cd
    new-instance v0, Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    invoke-direct {p0, v3, v2}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->xor([B[B)[B

    move-result-object v2

    invoke-direct {v0, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_P:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getX()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_Q:Lorg/bouncycastle/math/ec/ECPoint;

    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getX()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    mul-int/2addr v2, v6

    array-length v3, p1

    iget v7, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    mul-int/2addr v6, v7

    sub-int/2addr v3, v6

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_3f
.end method

.method public reseed([B)V
    .registers 5

    const/16 v0, 0x200

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->isTooLarge([BI)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_seedlen:I

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->pad8([BI)[B

    move-result-object v1

    invoke-static {v1, v0, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_seedlen:I

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->hash_df(Lorg/bouncycastle/crypto/Digest;[BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_reseedCounter:J

    return-void

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Additional input string too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
