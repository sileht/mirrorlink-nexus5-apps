.class public abstract Lorg/bouncycastle/crypto/digests/LongDigest;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;
.implements Lorg/bouncycastle/util/Memoable;


# static fields
.field private static final BYTE_LENGTH:I = 0x80

.field static final K:[J


# instance fields
.field protected H1:J

.field protected H2:J

.field protected H3:J

.field protected H4:J

.field protected H5:J

.field protected H6:J

.field protected H7:J

.field protected H8:J

.field private W:[J

.field private byteCount1:J

.field private byteCount2:J

.field private wOff:I

.field private xBuf:[B

.field private xBufOff:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x50

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, 0x428a2f98d728ae22L    # 3.5989662528217666E12

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide v2, 0x7137449123ef65cdL    # 2.367405559035152E237

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    const-wide v2, -0x4a3f043013b2c4d1L    # -9.0786554787018E-50

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    const-wide v2, -0x164a245a7e762444L

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    const-wide v2, 0x3956c25bf348b538L

    aput-wide v2, v0, v1

    const/4 v1, 0x5

    const-wide v2, 0x59f111f1b605d019L    # 1.8054860536953294E125

    aput-wide v2, v0, v1

    const/4 v1, 0x6

    const-wide v2, -0x6dc07d5b50e6b065L    # -8.717181310573585E-221

    aput-wide v2, v0, v1

    const/4 v1, 0x7

    const-wide v2, -0x54e3a12a25927ee8L

    aput-wide v2, v0, v1

    const/16 v1, 0x8

    const-wide v2, -0x27f855675cfcfdbeL    # -1.1656291332323638E116

    aput-wide v2, v0, v1

    const/16 v1, 0x9

    const-wide v2, 0x12835b0145706fbeL

    aput-wide v2, v0, v1

    const/16 v1, 0xa

    const-wide v2, 0x243185be4ee4b28cL    # 2.410773468256423E-134

    aput-wide v2, v0, v1

    const/16 v1, 0xb

    const-wide v2, 0x550c7dc3d5ffb4e2L    # 4.985403983718413E101

    aput-wide v2, v0, v1

    const/16 v1, 0xc

    const-wide v2, 0x72be5d74f27b896fL    # 5.183352230240388E244

    aput-wide v2, v0, v1

    const/16 v1, 0xd

    const-wide v2, -0x7f214e01c4e9694fL

    aput-wide v2, v0, v1

    const/16 v1, 0xe

    const-wide v2, -0x6423f958da38edcbL

    aput-wide v2, v0, v1

    const/16 v1, 0xf

    const-wide v2, -0x3e640e8b3096d96cL    # -1.1720222785268623E8

    aput-wide v2, v0, v1

    const/16 v1, 0x10

    const-wide v2, -0x1b64963e610eb52eL    # -4.339261227288659E176

    aput-wide v2, v0, v1

    const/16 v1, 0x11

    const-wide v2, -0x1041b879c7b0da1dL    # -1.836300920646737E230

    aput-wide v2, v0, v1

    const/16 v1, 0x12

    const-wide v2, 0xfc19dc68b8cd5b5L    # 8.864787397362889E-233

    aput-wide v2, v0, v1

    const/16 v1, 0x13

    const-wide v2, 0x240ca1cc77ac9c65L    # 4.924067956729057E-135

    aput-wide v2, v0, v1

    const/16 v1, 0x14

    const-wide v2, 0x2de92c6f592b0275L    # 1.5818166760957606E-87

    aput-wide v2, v0, v1

    const/16 v1, 0x15

    const-wide v2, 0x4a7484aa6ea6e483L    # 4.79798724707082E50

    aput-wide v2, v0, v1

    const/16 v1, 0x16

    const-wide v2, 0x5cb0a9dcbd41fbd4L    # 3.100593885146353E138

    aput-wide v2, v0, v1

    const/16 v1, 0x17

    const-wide v2, 0x76f988da831153b5L    # 1.2864857866870779E265

    aput-wide v2, v0, v1

    const/16 v1, 0x18

    const-wide v2, -0x67c1aead11992055L

    aput-wide v2, v0, v1

    const/16 v1, 0x19

    const-wide v2, -0x57ce3992d24bcdf0L    # -4.511217866312199E-115

    aput-wide v2, v0, v1

    const/16 v1, 0x1a

    const-wide v2, -0x4ffcd8376704dec1L    # -2.0678662886600765E-77

    aput-wide v2, v0, v1

    const/16 v1, 0x1b

    const-wide v2, -0x40a680384110f11cL    # -0.0015563440936014411

    aput-wide v2, v0, v1

    const/16 v1, 0x1c

    const-wide v2, -0x391ff40cc257703eL    # -2.603722742751637E33

    aput-wide v2, v0, v1

    const/16 v1, 0x1d

    const-wide v2, -0x2a586eb86cf558dbL    # -4.222814448133811E104

    aput-wide v2, v0, v1

    const/16 v1, 0x1e

    const-wide v2, 0x6ca6351e003826fL

    aput-wide v2, v0, v1

    const/16 v1, 0x1f

    const-wide v2, 0x142929670a0e6e70L

    aput-wide v2, v0, v1

    const/16 v1, 0x20

    const-wide v2, 0x27b70a8546d22ffcL

    aput-wide v2, v0, v1

    const/16 v1, 0x21

    const-wide v2, 0x2e1b21385c26c926L    # 1.3637893953385892E-86

    aput-wide v2, v0, v1

    const/16 v1, 0x22

    const-wide v2, 0x4d2c6dfc5ac42aedL    # 5.84763610164635E63

    aput-wide v2, v0, v1

    const/16 v1, 0x23

    const-wide v2, 0x53380d139d95b3dfL    # 7.838866619197482E92

    aput-wide v2, v0, v1

    const/16 v1, 0x24

    const-wide v2, 0x650a73548baf63deL    # 5.35921865865203E178

    aput-wide v2, v0, v1

    const/16 v1, 0x25

    const-wide v2, 0x766a0abb3c77b2a8L    # 2.5625906234442426E262

    aput-wide v2, v0, v1

    const/16 v1, 0x26

    const-wide v2, -0x7e3d36d1b812511aL    # -3.506432391784029E-300

    aput-wide v2, v0, v1

    const/16 v1, 0x27

    const-wide v2, -0x6d8dd37aeb7dcac5L    # -8.044358981173315E-220

    aput-wide v2, v0, v1

    const/16 v1, 0x28

    const-wide v2, -0x5d40175eb30efc9cL

    aput-wide v2, v0, v1

    const/16 v1, 0x29

    const-wide v2, -0x57e599b443bdcfffL

    aput-wide v2, v0, v1

    const/16 v1, 0x2a

    const-wide v2, -0x3db4748f2f07686fL    # -2.366070870891841E11

    aput-wide v2, v0, v1

    const/16 v1, 0x2b

    const-wide v2, -0x3893ae5cf9ab41d0L    # -1.17632082693375E36

    aput-wide v2, v0, v1

    const/16 v1, 0x2c

    const-wide v2, -0x2e6d17e62910ade8L    # -9.182337425192181E84

    aput-wide v2, v0, v1

    const/16 v1, 0x2d

    const-wide v2, -0x2966f9dbaa9a56f0L    # -1.4692477645833556E109

    aput-wide v2, v0, v1

    const/16 v1, 0x2e

    const-wide v2, -0xbf1ca7aa88edfd6L

    aput-wide v2, v0, v1

    const/16 v1, 0x2f

    const-wide v2, 0x106aa07032bbd1b8L

    aput-wide v2, v0, v1

    const/16 v1, 0x30

    const-wide v2, 0x19a4c116b8d2d0c8L

    aput-wide v2, v0, v1

    const/16 v1, 0x31

    const-wide v2, 0x1e376c085141ab53L    # 4.067301537801791E-163

    aput-wide v2, v0, v1

    const/16 v1, 0x32

    const-wide v2, 0x2748774cdf8eeb99L    # 1.894937972556452E-119

    aput-wide v2, v0, v1

    const/16 v1, 0x33

    const-wide v2, 0x34b0bcb5e19b48a8L    # 6.82593759724882E-55

    aput-wide v2, v0, v1

    const/16 v1, 0x34

    const-wide v2, 0x391c0cb3c5c95a63L    # 1.3505399862746614E-33

    aput-wide v2, v0, v1

    const/16 v1, 0x35

    const-wide v2, 0x4ed8aa4ae3418acbL    # 6.809319594147137E71

    aput-wide v2, v0, v1

    const/16 v1, 0x36

    const-wide v2, 0x5b9cca4f7763e373L    # 2.0435436325319052E133

    aput-wide v2, v0, v1

    const/16 v1, 0x37

    const-wide v2, 0x682e6ff3d6b2b8a3L    # 6.943421982965376E193

    aput-wide v2, v0, v1

    const/16 v1, 0x38

    const-wide v2, 0x748f82ee5defb2fcL    # 2.887850816088868E253

    aput-wide v2, v0, v1

    const/16 v1, 0x39

    const-wide v2, 0x78a5636f43172f60L    # 1.4463210820003646E273

    aput-wide v2, v0, v1

    const/16 v1, 0x3a

    const-wide v2, -0x7b3787eb5e0f548eL

    aput-wide v2, v0, v1

    const/16 v1, 0x3b

    const-wide v2, -0x7338fdf7e59bc614L

    aput-wide v2, v0, v1

    const/16 v1, 0x3c

    const-wide v2, -0x6f410005dc9ce1d8L    # -5.111680914909667E-228

    aput-wide v2, v0, v1

    const/16 v1, 0x3d

    const-wide v2, -0x5baf9314217d4217L    # -9.03940504491957E-134

    aput-wide v2, v0, v1

    const/16 v1, 0x3e

    const-wide v2, -0x41065c084d3986ebL    # -2.445268471406536E-5

    aput-wide v2, v0, v1

    const/16 v1, 0x3f

    const-wide v2, -0x398e870d1c8dacd5L    # -2.2148969568888243E31

    aput-wide v2, v0, v1

    const/16 v1, 0x40

    const-wide v2, -0x35d8c13115d99e64L    # -1.6986554718624063E49

    aput-wide v2, v0, v1

    const/16 v1, 0x41

    const-wide v2, -0x2e794738de3f3df9L    # -5.517613964471652E84

    aput-wide v2, v0, v1

    const/16 v1, 0x42

    const-wide v2, -0x15258229321f14e2L    # -5.315750124715331E206

    aput-wide v2, v0, v1

    const/16 v1, 0x43

    const-wide v2, -0xa82b08011912e88L    # -8.801976642581914E257

    aput-wide v2, v0, v1

    const/16 v1, 0x44

    const-wide v2, 0x6f067aa72176fbaL

    aput-wide v2, v0, v1

    const/16 v1, 0x45

    const-wide v2, 0xa637dc5a2c898a6L

    aput-wide v2, v0, v1

    const/16 v1, 0x46

    const-wide v2, 0x113f9804bef90daeL

    aput-wide v2, v0, v1

    const/16 v1, 0x47

    const-wide v2, 0x1b710b35131c471bL

    aput-wide v2, v0, v1

    const/16 v1, 0x48

    const-wide v2, 0x28db77f523047d84L    # 7.138679721560702E-112

    aput-wide v2, v0, v1

    const/16 v1, 0x49

    const-wide v2, 0x32caab7b40c72493L    # 5.064907242937011E-64

    aput-wide v2, v0, v1

    const/16 v1, 0x4a

    const-wide v2, 0x3c9ebe0a15c9bebcL    # 1.0665892261952011E-16

    aput-wide v2, v0, v1

    const/16 v1, 0x4b

    const-wide v2, 0x431d67c49c100d4cL    # 2.069217113539411E15

    aput-wide v2, v0, v1

    const/16 v1, 0x4c

    const-wide v2, 0x4cc5d4becb3e42b6L    # 7.016224550123326E61

    aput-wide v2, v0, v1

    const/16 v1, 0x4d

    const-wide v2, 0x597f299cfc657e2aL    # 1.2875119238090917E123

    aput-wide v2, v0, v1

    const/16 v1, 0x4e

    const-wide v2, 0x5fcb6fab3ad6faecL    # 2.873901462601813E153

    aput-wide v2, v0, v1

    const/16 v1, 0x4f

    const-wide v2, 0x6c44198c4a475817L    # 3.3832852265175575E213

    aput-wide v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->reset()V

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/digests/LongDigest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/LongDigest;->copyIn(Lorg/bouncycastle/crypto/digests/LongDigest;)V

    return-void
.end method

.method private Ch(JJJ)J
    .registers 12

    and-long v0, p1, p3

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    and-long/2addr v2, p5

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Maj(JJJ)J
    .registers 12

    and-long v0, p1, p3

    and-long v2, p1, p5

    xor-long/2addr v0, v2

    and-long v2, p3, p5

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Sigma0(J)J
    .registers 10

    const/16 v0, 0x3f

    shl-long v0, p1, v0

    const/4 v2, 0x1

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x38

    shl-long v2, p1, v2

    const/16 v4, 0x8

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Sigma1(J)J
    .registers 10

    const/16 v0, 0x2d

    shl-long v0, p1, v0

    const/16 v2, 0x13

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/4 v2, 0x3

    shl-long v2, p1, v2

    const/16 v4, 0x3d

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 v2, 0x6

    ushr-long v2, p1, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Sum0(J)J
    .registers 10

    const/16 v0, 0x24

    shl-long v0, p1, v0

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x1e

    shl-long v2, p1, v2

    const/16 v4, 0x22

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x19

    shl-long v2, p1, v2

    const/16 v4, 0x27

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Sum1(J)J
    .registers 10

    const/16 v0, 0x32

    shl-long v0, p1, v0

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x2e

    shl-long v2, p1, v2

    const/16 v4, 0x12

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x17

    shl-long v2, p1, v2

    const/16 v4, 0x29

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private adjustByteCounts()V
    .registers 9

    const-wide v6, 0x1fffffffffffffffL

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_1e

    const/4 v0, 0x1

    :goto_c
    if-nez v0, :cond_1d

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const/16 v4, 0x3d

    ushr-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    and-long/2addr v0, v6

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    :cond_1d
    return-void

    :cond_1e
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method protected copyIn(Lorg/bouncycastle/crypto/digests/LongDigest;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->H1:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H1:J

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->H2:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H2:J

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->H3:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H3:J

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->H4:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H4:J

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->H5:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H5:J

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->H6:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H6:J

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->H7:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H7:J

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->H8:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H8:J

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    return-void
.end method

.method public finish()V
    .registers 7

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->adjustByteCounts()V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    const/16 v4, -0x80

    invoke-virtual {p0, v4}, Lorg/bouncycastle/crypto/digests/LongDigest;->update(B)V

    :goto_f
    iget v4, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    if-nez v4, :cond_1a

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/LongDigest;->processLength(JJ)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->processBlock()V

    return-void

    :cond_1a
    invoke-virtual {p0, v5}, Lorg/bouncycastle/crypto/digests/LongDigest;->update(B)V

    goto :goto_f
.end method

.method public getByteLength()I
    .registers 2

    const/16 v0, 0x80

    return v0
.end method

.method protected processBlock()V
    .registers 33

    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->adjustByteCounts()V

    const/16 v4, 0x10

    :goto_5
    const/16 v5, 0x4f

    if-le v4, v5, :cond_90

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H1:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H2:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H3:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H4:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H5:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H6:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H7:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H8:J

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-wide/from16 v20, v14

    move-wide v14, v12

    move v12, v5

    :goto_35
    const/16 v5, 0xa

    if-lt v4, v5, :cond_c9

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H1:J

    add-long/2addr v4, v14

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H1:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H2:J

    add-long v4, v4, v16

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H2:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H3:J

    add-long v4, v4, v18

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H3:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H4:J

    add-long v4, v4, v22

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H4:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H5:J

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H5:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H6:J

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H6:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H7:J

    add-long/2addr v4, v10

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H7:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H8:J

    add-long v4, v4, v20

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H8:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    const/4 v4, 0x0

    :goto_8b
    const/16 v5, 0x10

    if-lt v4, v5, :cond_281

    return-void

    :cond_90
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v7, v4, -0x2

    aget-wide v6, v6, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sigma1(J)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v9, v4, -0x7

    aget-wide v8, v8, v9

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v9, v4, -0xf

    aget-wide v8, v8, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sigma0(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v9, v4, -0x10

    aget-wide v8, v8, v9

    add-long/2addr v6, v8

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    :cond_c9
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v24

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lorg/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v26

    add-long v24, v24, v26

    sget-object v5, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v26, v5, v12

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v28, v12, 0x1

    aget-wide v12, v5, v12

    add-long v12, v12, v24

    add-long v20, v20, v12

    add-long v22, v22, v20

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v24

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v19}, Lorg/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v12

    add-long v12, v12, v24

    add-long v12, v12, v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v30

    move-object/from16 v21, p0

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    invoke-direct/range {v21 .. v27}, Lorg/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v20

    add-long v20, v20, v30

    sget-object v5, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v24, v5, v28

    add-long v20, v20, v24

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v26, v28, 0x1

    aget-wide v24, v5, v28

    add-long v20, v20, v24

    add-long v24, v10, v20

    add-long v20, v18, v24

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v18

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v17}, Lorg/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v10

    add-long v10, v10, v18

    add-long v10, v10, v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v28

    move-object/from16 v19, p0

    move-wide/from16 v24, v6

    invoke-direct/range {v19 .. v25}, Lorg/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v18

    add-long v18, v18, v28

    sget-object v5, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v24, v5, v26

    add-long v18, v18, v24

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v24, v26, 0x1

    aget-wide v26, v5, v26

    add-long v18, v18, v26

    add-long v26, v8, v18

    add-long v18, v16, v26

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v16

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v15}, Lorg/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v8

    add-long v8, v8, v16

    add-long v8, v8, v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v26

    move-object/from16 v17, p0

    invoke-direct/range {v17 .. v23}, Lorg/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v16

    add-long v16, v16, v26

    sget-object v5, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v26, v5, v24

    add-long v16, v16, v26

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v25, v24, 0x1

    aget-wide v26, v5, v24

    add-long v16, v16, v26

    add-long v26, v6, v16

    add-long v16, v14, v26

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v14

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lorg/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v6

    add-long/2addr v6, v14

    add-long v6, v6, v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v26

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v21}, Lorg/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v14

    add-long v14, v14, v26

    sget-object v5, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v26, v5, v25

    add-long v14, v14, v26

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v24, v25, 0x1

    aget-wide v26, v5, v25

    add-long v14, v14, v26

    add-long v22, v22, v14

    add-long v14, v12, v22

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v12

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lorg/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v26

    add-long v12, v12, v26

    add-long v22, v22, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v26

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v19}, Lorg/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v12

    add-long v12, v12, v26

    sget-object v5, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v26, v5, v24

    add-long v12, v12, v26

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v28, v24, 0x1

    aget-wide v24, v5, v24

    add-long v12, v12, v24

    add-long v30, v20, v12

    add-long v12, v10, v30

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v10

    move-object/from16 v21, p0

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    invoke-direct/range {v21 .. v27}, Lorg/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v20

    add-long v10, v10, v20

    add-long v20, v30, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v24

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v17}, Lorg/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v10

    add-long v10, v10, v24

    sget-object v5, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v24, v5, v28

    add-long v10, v10, v24

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v26, v28, 0x1

    aget-wide v24, v5, v28

    add-long v10, v10, v24

    add-long v28, v18, v10

    add-long v10, v8, v28

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v8

    move-object/from16 v19, p0

    move-wide/from16 v24, v6

    invoke-direct/range {v19 .. v25}, Lorg/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v18

    add-long v8, v8, v18

    add-long v18, v28, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v24

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v15}, Lorg/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v8

    add-long v8, v8, v24

    sget-object v5, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v24, v5, v26

    add-long v8, v8, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    move-object/from16 v24, v0

    add-int/lit8 v5, v26, 0x1

    aget-wide v24, v24, v26

    add-long v8, v8, v24

    add-long v8, v8, v16

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v24

    move-object/from16 v17, p0

    invoke-direct/range {v17 .. v23}, Lorg/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v16

    add-long v16, v16, v24

    add-long v8, v8, v16

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v16, v18

    move-wide/from16 v18, v20

    move-wide/from16 v20, v14

    move-wide v14, v8

    move-wide v8, v10

    move-wide v10, v12

    move v12, v5

    goto/16 :goto_35

    :cond_281
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8b
.end method

.method protected processLength(JJ)V
    .registers 8

    const/16 v1, 0xe

    iget v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    if-gt v0, v1, :cond_11

    :goto_6
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    aput-wide p3, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    const/16 v1, 0xf

    aput-wide p1, v0, v1

    return-void

    :cond_11
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->processBlock()V

    goto :goto_6
.end method

.method protected processWord([BI)V
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    iget v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_15

    :goto_14
    return-void

    :cond_15
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->processBlock()V

    goto :goto_14
.end method

.method public reset()V
    .registers 7

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    iput v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    move v0, v1

    :goto_a
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v2, v2

    if-lt v0, v2, :cond_17

    iput v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    :goto_11
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    array-length v0, v0

    if-ne v1, v0, :cond_1e

    return-void

    :cond_17
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1e
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    aput-wide v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public update(B)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v1, v1

    if-eq v0, v1, :cond_1b

    :goto_13
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    return-void

    :cond_1b
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    invoke-virtual {p0, v0, v3}, Lorg/bouncycastle/crypto/digests/LongDigest;->processWord([BI)V

    iput v3, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    goto :goto_13
.end method

.method public update([BII)V
    .registers 8

    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    if-nez v0, :cond_c

    :cond_4
    :goto_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v0, v0

    if-gt p3, v0, :cond_18

    :goto_9
    if-gtz p3, :cond_2d

    return-void

    :cond_c
    if-lez p3, :cond_4

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/LongDigest;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_18
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/digests/LongDigest;->processWord([BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v0, v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    goto :goto_4

    :cond_2d
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/LongDigest;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_9
.end method
