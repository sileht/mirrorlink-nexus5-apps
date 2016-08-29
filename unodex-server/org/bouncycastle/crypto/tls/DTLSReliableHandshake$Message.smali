.class Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Message"
.end annotation


# instance fields
.field private final body:[B

.field private final message_seq:I

.field private final msg_type:S


# direct methods
.method private constructor <init>(IS[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->message_seq:I

    int-to-short v0, p2

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->msg_type:S

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->body:[B

    return-void
.end method

.method synthetic constructor <init>(IS[BLorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;-><init>(IS[B)V

    return-void
.end method


# virtual methods
.method public getBody()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->body:[B

    return-object v0
.end method

.method public getSeq()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->message_seq:I

    return v0
.end method

.method public getType()S
    .registers 2

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->msg_type:S

    return v0
.end method
