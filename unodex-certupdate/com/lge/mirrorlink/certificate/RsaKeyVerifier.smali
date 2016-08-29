.class public abstract Lcom/lge/mirrorlink/certificate/RsaKeyVerifier;
.super Ljava/lang/Object;
.source "RsaKeyVerifier.java"


# static fields
.field static final CT_LEN:I = 0x100


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDeviceCertImporter:Lcom/lge/mirrorlink/certificate/DeviceCertImporter;

.field public mPlainText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/lge/mirrorlink/certificate/RsaKeyVerifier;->mContext:Landroid/content/Context;

    .line 11
    iput-object v0, p0, Lcom/lge/mirrorlink/certificate/RsaKeyVerifier;->mDeviceCertImporter:Lcom/lge/mirrorlink/certificate/DeviceCertImporter;

    .line 6
    return-void
.end method


# virtual methods
.method public abstract makeCTPacket()[B
.end method

.method public makePTPacketWithLength()[B
    .registers 4

    .prologue
    .line 19
    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/RsaKeyVerifier;->mPlainText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 20
    .local v1, "plainTextByte":[B
    array-length v2, v1

    add-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 21
    .local v0, "bb":Ljava/nio/ByteBuffer;
    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 22
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 23
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public setPlainText(Ljava/lang/String;)V
    .registers 2
    .param p1, "plainText"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/lge/mirrorlink/certificate/RsaKeyVerifier;->mPlainText:Ljava/lang/String;

    .line 13
    return-void
.end method
