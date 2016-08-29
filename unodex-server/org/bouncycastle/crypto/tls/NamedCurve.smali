.class public Lorg/bouncycastle/crypto/tls/NamedCurve;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final arbitrary_explicit_char2_curves:I = 0xff02

.field public static final arbitrary_explicit_prime_curves:I = 0xff01

.field public static final secp160k1:I = 0xf

.field public static final secp160r1:I = 0x10

.field public static final secp160r2:I = 0x11

.field public static final secp192k1:I = 0x12

.field public static final secp192r1:I = 0x13

.field public static final secp224k1:I = 0x14

.field public static final secp224r1:I = 0x15

.field public static final secp256k1:I = 0x16

.field public static final secp256r1:I = 0x17

.field public static final secp384r1:I = 0x18

.field public static final secp521r1:I = 0x19

.field public static final sect163k1:I = 0x1

.field public static final sect163r1:I = 0x2

.field public static final sect163r2:I = 0x3

.field public static final sect193r1:I = 0x4

.field public static final sect193r2:I = 0x5

.field public static final sect233k1:I = 0x6

.field public static final sect233r1:I = 0x7

.field public static final sect239k1:I = 0x8

.field public static final sect283k1:I = 0x9

.field public static final sect283r1:I = 0xa

.field public static final sect409k1:I = 0xb

.field public static final sect409r1:I = 0xc

.field public static final sect571k1:I = 0xd

.field public static final sect571r1:I = 0xe


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static refersToASpecificNamedCurve(I)Z
    .registers 2

    packed-switch p0, :pswitch_data_8

    const/4 v0, 0x1

    return v0

    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0xff01
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
