.class public Lorg/bouncycastle/crypto/tls/SupplementalDataEntry;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private data:[B

.field private supp_data_type:I


# direct methods
.method public constructor <init>(I[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/tls/SupplementalDataEntry;->supp_data_type:I

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/SupplementalDataEntry;->data:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SupplementalDataEntry;->data:[B

    return-object v0
.end method

.method public getDataType()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/tls/SupplementalDataEntry;->supp_data_type:I

    return v0
.end method
