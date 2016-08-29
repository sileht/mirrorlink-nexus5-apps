.class public Lorg/bouncycastle/asn1/x500/style/BCStrictStyle;
.super Lorg/bouncycastle/asn1/x500/style/BCStyle;
.source "Unknown"


# static fields
.field public static final INSTANCE:Lorg/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/bouncycastle/asn1/x500/style/BCStrictStyle;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x500/style/BCStrictStyle;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/BCStrictStyle;->INSTANCE:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/x500/style/BCStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public areEqual(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x500/X500Name;)Z
    .registers 9

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object v2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object v3

    array-length v0, v2

    array-length v4, v3

    if-ne v0, v4, :cond_13

    move v0, v1

    :goto_e
    array-length v4, v2

    if-ne v0, v4, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_13
    return v1

    :cond_14
    aget-object v4, v2, v0

    aget-object v5, v3, v0

    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/asn1/x500/style/BCStrictStyle;->rdnAreEqual(Lorg/bouncycastle/asn1/x500/RDN;Lorg/bouncycastle/asn1/x500/RDN;)Z

    move-result v4

    if-eqz v4, :cond_21

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_21
    return v1
.end method
