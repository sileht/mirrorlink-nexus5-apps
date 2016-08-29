.class Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;->this$0:Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receivedHandshakeRecord(I[BII)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xc

    if-lt p4, v1, :cond_4a

    add-int/lit8 v1, p3, 0x9

    invoke-static {p2, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v6

    add-int/lit8 v1, v6, 0xc

    if-ne p4, v1, :cond_4b

    add-int/lit8 v1, p3, 0x4

    invoke-static {p2, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v3

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;->this$0:Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;

    # getter for: Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I
    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->access$100(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;)I

    move-result v1

    if-ge v3, v1, :cond_4c

    invoke-static {p2, p3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v1

    const/16 v2, 0x14

    if-eq v1, v2, :cond_4d

    :goto_25
    if-ne p1, v0, :cond_4f

    add-int/lit8 v0, p3, 0x1

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v2

    add-int/lit8 v0, p3, 0x6

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v5

    add-int v0, v5, v6

    if-gt v0, v2, :cond_50

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;->this$0:Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;

    # getter for: Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->access$200(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;

    if-nez v0, :cond_51

    :cond_49
    :goto_49
    return-void

    :cond_4a
    return-void

    :cond_4b
    return-void

    :cond_4c
    return-void

    :cond_4d
    const/4 v0, 0x1

    goto :goto_25

    :cond_4f
    return-void

    :cond_50
    return-void

    :cond_51
    add-int/lit8 v4, p3, 0xc

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->contributeFragment(SI[BIII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;->this$0:Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;

    # getter for: Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->access$200(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;)Ljava/util/Hashtable;

    move-result-object v0

    # invokes: Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->checkAll(Ljava/util/Hashtable;)Z
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->access$300(Ljava/util/Hashtable;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;->this$0:Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;

    # invokes: Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->resendOutboundFlight()V
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->access$400(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;->this$0:Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;

    # getter for: Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->access$200(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;)Ljava/util/Hashtable;

    move-result-object v0

    # invokes: Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->resetAll(Ljava/util/Hashtable;)V
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->access$500(Ljava/util/Hashtable;)V

    goto :goto_49
.end method
