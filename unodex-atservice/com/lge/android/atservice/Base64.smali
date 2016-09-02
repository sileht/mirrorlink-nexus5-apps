.class public Lcom/lge/android/atservice/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# instance fields
.field protected mDecodedCmd:[B

.field protected mEncodedCmd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;)V
    .registers 3
    .param p1, "encodedCmd"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lge/android/atservice/Base64;->mEncodedCmd:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/lge/android/atservice/Base64;->mEncodedCmd:Ljava/lang/String;

    invoke-static {v0}, Lcom/lge/android/atservice/LGATCMDNative;->base64_decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/atservice/Base64;->mDecodedCmd:[B

    .line 15
    return-void
.end method

.method public encode([B)V
    .registers 3
    .param p1, "decodedCmd"    # [B

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lge/android/atservice/Base64;->mDecodedCmd:[B

    .line 22
    iget-object v0, p0, Lcom/lge/android/atservice/Base64;->mDecodedCmd:[B

    invoke-static {v0}, Lcom/lge/android/atservice/LGATCMDNative;->base64_encode([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/atservice/Base64;->mEncodedCmd:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public encodeSize([BI)V
    .registers 4
    .param p1, "decodedCmd"    # [B
    .param p2, "size"    # I

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lge/android/atservice/Base64;->mDecodedCmd:[B

    .line 27
    iget-object v0, p0, Lcom/lge/android/atservice/Base64;->mDecodedCmd:[B

    invoke-static {v0, p2}, Lcom/lge/android/atservice/LGATCMDNative;->base64_encode_size([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/atservice/Base64;->mEncodedCmd:Ljava/lang/String;

    .line 25
    return-void
.end method
