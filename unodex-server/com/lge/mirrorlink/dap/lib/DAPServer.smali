.class public Lcom/lge/mirrorlink/dap/lib/DAPServer;
.super Ljava/lang/Object;
.source "DAPServer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_DAP"


# instance fields
.field private mAttestator:Lcom/lge/mirrorlink/dap/lib/AttestatorInterface;

.field private mCertManager:Lcom/lge/mirrorlink/certificate/CertificateManager;

.field private mContext:Landroid/content/Context;

.field private mIPAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPServer;->mContext:Landroid/content/Context;

    .line 18
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPServer;->mIPAddress:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPServer;->mCertManager:Lcom/lge/mirrorlink/certificate/CertificateManager;

    .line 21
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPServer;->mAttestator:Lcom/lge/mirrorlink/dap/lib/AttestatorInterface;

    .line 26
    iput-object p1, p0, Lcom/lge/mirrorlink/dap/lib/DAPServer;->mContext:Landroid/content/Context;

    .line 27
    invoke-static {p1}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getInstance(Landroid/content/Context;)Lcom/lge/mirrorlink/certificate/CertificateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPServer;->mCertManager:Lcom/lge/mirrorlink/certificate/CertificateManager;

    .line 28
    const-string/jumbo v0, "MirrorLink_DAP"

    const-string/jumbo v1, "DAP_USE_TRUST_ZONE:true"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/lge/mirrorlink/dap/lib/TzAttestator;

    invoke-direct {v0, p1}, Lcom/lge/mirrorlink/dap/lib/TzAttestator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPServer;->mAttestator:Lcom/lge/mirrorlink/dap/lib/AttestatorInterface;

    .line 36
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPServer;->mAttestator:Lcom/lge/mirrorlink/dap/lib/AttestatorInterface;

    invoke-interface {v0}, Lcom/lge/mirrorlink/dap/lib/AttestatorInterface;->startServer()Z

    .line 41
    const-string/jumbo v0, "MirrorLink_DAP"

    const-string/jumbo v1, "DAPServer loaded"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method private IsComponentID(Ljava/lang/String;)Z
    .registers 5
    .param p1, "strID"    # Ljava/lang/String;

    .prologue
    .line 257
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v2, Lcom/lge/mirrorlink/common/ComponentID;->MirrorLinkComponentIDs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_15

    .line 258
    sget-object v2, Lcom/lge/mirrorlink/common/ComponentID;->MirrorLinkComponentIDs:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 259
    .local v0, "compID":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 260
    const/4 v2, 0x1

    return v2

    .line 257
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 264
    .end local v0    # "compID":Ljava/lang/String;
    :cond_15
    const/4 v2, 0x0

    return v2
.end method

.method private getComponentURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "componentID"    # Ljava/lang/String;
    .param p2, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-static {}, Lcom/lge/mirrorlink/common/LaunchedComponent;->getInstance()Lcom/lge/mirrorlink/common/LaunchedComponent;

    move-result-object v1

    .line 243
    .local v1, "urlMap":Lcom/lge/mirrorlink/common/LaunchedComponent;
    invoke-virtual {v1, p1}, Lcom/lge/mirrorlink/common/LaunchedComponent;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 244
    invoke-virtual {v1, p1, p2}, Lcom/lge/mirrorlink/common/LaunchedComponent;->getURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "url":Ljava/lang/String;
    const-string/jumbo v3, "MirrorLink_DAP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launchinfor exists, getComponentURL("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ") "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_44

    const-string/jumbo v2, "null"

    :goto_38
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-object v0

    :cond_44
    move-object v2, v0

    .line 245
    goto :goto_38

    .line 251
    .end local v0    # "url":Ljava/lang/String;
    :cond_46
    const-string/jumbo v2, ""

    return-object v2
.end method

.method private waitForAttestatorReady()Z
    .registers 6

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "cnt":I
    :goto_1
    iget-object v2, p0, Lcom/lge/mirrorlink/dap/lib/DAPServer;->mAttestator:Lcom/lge/mirrorlink/dap/lib/AttestatorInterface;

    invoke-interface {v2}, Lcom/lge/mirrorlink/dap/lib/AttestatorInterface;->isAttestatorReady()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 272
    const/16 v2, 0x12c

    if-le v0, v2, :cond_18

    .line 273
    :try_start_d
    const-string/jumbo v2, "MirrorLink_DAP"

    const-string/jumbo v3, "[sleep] isAttestatorReady(), FAIL ! "

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v2, 0x0

    return v2

    .line 276
    :cond_18
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    .line 278
    const-string/jumbo v2, "MirrorLink_DAP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[sleep] wait for isAttestatorReady(), cnt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_39} :catch_3a

    goto :goto_1

    .line 279
    :catch_3a
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 284
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_3f
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public getProtocolURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "componentID"    # Ljava/lang/String;

    .prologue
    .line 218
    const-string/jumbo v1, ""

    .line 219
    .local v1, "strURL":Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPServer;->mIPAddress:Ljava/lang/String;

    .line 221
    .local v0, "strIP":Ljava/lang/String;
    const-string/jumbo v2, "TerminalMode:UPnP-Server"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 222
    const-string/jumbo v2, "TerminalMode:VNC-Server"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 221
    if-nez v2, :cond_20

    .line 223
    const-string/jumbo v2, "TerminalMode:RTP-Server"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 221
    if-eqz v2, :cond_2e

    .line 224
    :cond_20
    const-string/jumbo v2, "MirrorLink_DAP"

    const-string/jumbo v3, "COMPID_TM_UPNP_SERVER, VNC, RTP"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0, p1, v0}, Lcom/lge/mirrorlink/dap/lib/DAPServer;->getComponentURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 226
    :cond_2e
    const-string/jumbo v2, "MirrorLink:Device"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 227
    const-string/jumbo v2, "MirrorLink_DAP"

    const-string/jumbo v3, "COMPID_TM_DEVICE"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string/jumbo v2, ""

    return-object v2

    .line 236
    :cond_44
    const-string/jumbo v2, "MirrorLink_DAP"

    const-string/jumbo v3, "ProtocolURL is null"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string/jumbo v2, ""

    return-object v2
.end method

.method public handleRequest(Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;)Ljava/lang/String;
    .registers 22
    .param p1, "request"    # Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;

    .prologue
    .line 61
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "[START] handleRequest()"

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    if-nez p1, :cond_e

    .line 63
    const/16 v17, 0x0

    return-object v17

    .line 66
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/dap/lib/DAPServer;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getInstance(Landroid/content/Context;)Lcom/lge/mirrorlink/certificate/CertificateManager;

    move-result-object v4

    .line 67
    .local v4, "certManager":Lcom/lge/mirrorlink/certificate/CertificateManager;
    const/4 v14, 0x0

    .line 68
    .local v14, "response":Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;
    const/16 v16, 0x0

    .line 69
    .local v16, "strAttestationMsg":Ljava/lang/String;
    const/4 v15, 0x0

    .line 70
    .local v15, "resultValue":I
    move-object/from16 v0, p1

    iget v10, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->majorVersion:I

    .line 71
    .local v10, "majorVersion":I
    move-object/from16 v0, p1

    iget v12, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->minorVersion:I

    .line 72
    .local v12, "minorVersion":I
    const/4 v2, 0x0

    .line 74
    .local v2, "ImplementedComponentIDs":[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/lge/mirrorlink/dap/lib/DAPServer;->waitForAttestatorReady()Z

    move-result v17

    if-nez v17, :cond_42

    .line 75
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "can\'t access trustzone interface"

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v15, 0x5

    .line 77
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v10, v12, v0, v1}, Lcom/lge/mirrorlink/dap/lib/DapXMLParser;->makeAttestationResponseMessage(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    return-object v17

    .line 80
    :cond_42
    invoke-virtual/range {p1 .. p1}, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->hasValidNonce()Z

    move-result v17

    if-eqz v17, :cond_51

    .line 81
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->nonce:[B

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/lge/mirrorlink/certificate/CertificateManager;->setDAPNonce([B)V

    .line 85
    :cond_51
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->trustRoot:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/lge/mirrorlink/certificate/CertificateManager;->checkTrustRootHashValue([B)Z

    move-result v17

    if-nez v17, :cond_a1

    .line 86
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "[FAIL] handleRequest : invalid trust root"

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v17, "MirrorLink_DAP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "request TRUSTROOT = ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->trustRoot:[B

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/lge/mirrorlink/common/ExtLog;->BytesToHexString([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v15, 0x3

    .line 90
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v10, v12, v0, v1}, Lcom/lge/mirrorlink/dap/lib/DapXMLParser;->makeAttestationResponseMessage(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    return-object v17

    .line 93
    :cond_a1
    const-string/jumbo v17, "MirrorLink_DAP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "TRUSTROOT = ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->trustRoot:[B

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/lge/mirrorlink/common/ExtLog;->BytesToHexString([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v4}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getEncodedManufacturerCertificate()[B

    move-result-object v11

    .line 97
    .local v11, "manufactCert":[B
    if-nez v11, :cond_e9

    .line 98
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "[FAIL] handleRequest: manufactCert is null"

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v15, 0x5

    .line 100
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v10, v12, v0, v1}, Lcom/lge/mirrorlink/dap/lib/DapXMLParser;->makeAttestationResponseMessage(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    return-object v17

    .line 104
    :cond_e9
    invoke-virtual {v4}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getEncodedDeviceCertificate()[B

    move-result-object v6

    .line 105
    .local v6, "deviceCert":[B
    if-nez v6, :cond_106

    .line 106
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "[FAIL] handleRequest : deviceCert is null"

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v15, 0x5

    .line 108
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v10, v12, v0, v1}, Lcom/lge/mirrorlink/dap/lib/DapXMLParser;->makeAttestationResponseMessage(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    return-object v17

    .line 111
    :cond_106
    const-string/jumbo v17, "*"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->componentID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_20a

    .line 112
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "[START] * wildcard "

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v16, ""

    .line 115
    .local v16, "strAttestationMsg":Ljava/lang/String;
    if-nez v12, :cond_1a1

    .line 116
    sget-object v2, Lcom/lge/mirrorlink/common/ComponentID;->ImplementedComponentIDs1_0:[Ljava/lang/String;

    .line 120
    .local v2, "ImplementedComponentIDs":[Ljava/lang/String;
    :goto_125
    if-eqz v2, :cond_1bb

    .line 121
    const/4 v9, 0x0

    .end local v14    # "response":Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;
    .local v9, "j":I
    :goto_128
    array-length v0, v2

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_1bb

    .line 122
    aget-object v17, v2, v9

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->componentID:Ljava/lang/String;

    .line 123
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->componentID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/dap/lib/DAPServer;->getProtocolURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 124
    .local v13, "protocolURL":Ljava/lang/String;
    if-eqz v13, :cond_14d

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_166

    .line 125
    :cond_14d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->componentID:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "MirrorLink:Device"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a4

    .line 126
    const/4 v15, 0x0

    .line 127
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "[SUCCESS] DEVICE"

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_166
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->componentID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getApplicationPublicKey(Ljava/lang/String;)[B

    move-result-object v3

    .line 136
    .local v3, "appPublicKey":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/dap/lib/DAPServer;->mAttestator:Lcom/lge/mirrorlink/dap/lib/AttestatorInterface;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v13, v3}, Lcom/lge/mirrorlink/dap/lib/AttestatorInterface;->makeAttestationResponse(Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;Ljava/lang/String;[B)Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;

    move-result-object v8

    .line 137
    .local v8, "eachResp":Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;
    invoke-static {v8, v3}, Lcom/lge/mirrorlink/dap/lib/DapXMLParser;->makeAttestationOfComponent(Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;[B)Ljava/lang/String;

    move-result-object v7

    .line 138
    .local v7, "eachAttestationMsg":Ljava/lang/String;
    if-eqz v7, :cond_19e

    .line 139
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 140
    move-object v14, v8

    .line 121
    :cond_19e
    add-int/lit8 v9, v9, 0x1

    goto :goto_128

    .line 118
    .end local v3    # "appPublicKey":[B
    .end local v7    # "eachAttestationMsg":Ljava/lang/String;
    .end local v8    # "eachResp":Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;
    .end local v9    # "j":I
    .end local v13    # "protocolURL":Ljava/lang/String;
    .local v2, "ImplementedComponentIDs":[Ljava/lang/String;
    .restart local v14    # "response":Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;
    :cond_1a1
    sget-object v2, Lcom/lge/mirrorlink/common/ComponentID;->ImplementedComponentIDs1_1:[Ljava/lang/String;

    .local v2, "ImplementedComponentIDs":[Ljava/lang/String;
    goto :goto_125

    .line 129
    .end local v14    # "response":Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;
    .restart local v9    # "j":I
    .restart local v13    # "protocolURL":Ljava/lang/String;
    :cond_1a4
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "[FAIL] COMPONENT NOT EXIST"

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v15, 0x1

    .line 131
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v10, v12, v0, v1}, Lcom/lge/mirrorlink/dap/lib/DapXMLParser;->makeAttestationResponseMessage(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    return-object v17

    .line 144
    .end local v9    # "j":I
    .end local v13    # "protocolURL":Ljava/lang/String;
    :cond_1bb
    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c5

    .line 145
    const/4 v15, 0x5

    .line 180
    .end local v2    # "ImplementedComponentIDs":[Ljava/lang/String;
    :cond_1c5
    :goto_1c5
    if-nez v14, :cond_1cc

    .line 181
    new-instance v14, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;

    invoke-direct {v14}, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;-><init>()V

    .line 183
    :cond_1cc
    iput-object v11, v14, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->manufacturerCertificate:[B

    .line 184
    iput-object v6, v14, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->deviceCertificate:[B

    .line 186
    invoke-virtual {v14}, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->isValid()Z

    move-result v17

    if-nez v17, :cond_1e5

    .line 187
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "makeCertificateResponse : fail to validate response data"

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/16 v17, 0x5

    move/from16 v0, v17

    iput v0, v14, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->result:I

    .line 192
    :cond_1e5
    const/4 v5, 0x0

    .line 193
    .local v5, "certMsg":Ljava/lang/String;
    if-nez v15, :cond_1fd

    .line 194
    iget-object v0, v14, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->manufacturerCertificate:[B

    move-object/from16 v17, v0

    iget-object v0, v14, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->deviceCertificate:[B

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/dap/lib/DapXMLParser;->makeCertificateResponse([B[B)Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "certMsg":Ljava/lang/String;
    if-eqz v5, :cond_1fc

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_1fd

    .line 196
    :cond_1fc
    const/4 v15, 0x5

    .line 201
    .end local v5    # "certMsg":Ljava/lang/String;
    :cond_1fd
    if-eqz v14, :cond_203

    .line 202
    iget v10, v14, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->majorVersion:I

    .line 203
    iget v12, v14, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->minorVersion:I

    .line 207
    :cond_203
    move-object/from16 v0, v16

    invoke-static {v15, v10, v12, v0, v5}, Lcom/lge/mirrorlink/dap/lib/DapXMLParser;->makeAttestationResponseMessage(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    return-object v17

    .line 149
    .local v2, "ImplementedComponentIDs":[Ljava/lang/String;
    .restart local v14    # "response":Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;
    .local v16, "strAttestationMsg":Ljava/lang/String;
    :cond_20a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->componentID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/dap/lib/DAPServer;->getProtocolURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 150
    .restart local v13    # "protocolURL":Ljava/lang/String;
    const-string/jumbo v17, "MirrorLink_DAP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "componentID: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->componentID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    if-eqz v13, :cond_240

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_259

    .line 152
    :cond_240
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->componentID:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "MirrorLink:Device"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_27d

    .line 153
    const/4 v15, 0x0

    .line 154
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "[SUCCESS] DEVICE"

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_259
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->componentID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getApplicationPublicKey(Ljava/lang/String;)[B

    move-result-object v3

    .line 165
    .restart local v3    # "appPublicKey":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/dap/lib/DAPServer;->mAttestator:Lcom/lge/mirrorlink/dap/lib/AttestatorInterface;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v13, v3}, Lcom/lge/mirrorlink/dap/lib/AttestatorInterface;->makeAttestationResponse(Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;Ljava/lang/String;[B)Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;

    move-result-object v14

    .line 167
    .local v14, "response":Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;
    invoke-static {v14, v3}, Lcom/lge/mirrorlink/dap/lib/DapXMLParser;->makeAttestationOfComponent(Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;[B)Ljava/lang/String;

    move-result-object v7

    .line 168
    .restart local v7    # "eachAttestationMsg":Ljava/lang/String;
    if-eqz v7, :cond_294

    .line 169
    move-object/from16 v16, v7

    .local v16, "strAttestationMsg":Ljava/lang/String;
    goto/16 :goto_1c5

    .line 156
    .end local v3    # "appPublicKey":[B
    .end local v7    # "eachAttestationMsg":Ljava/lang/String;
    .local v14, "response":Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;
    .local v16, "strAttestationMsg":Ljava/lang/String;
    :cond_27d
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "[FAIL] COMPONENT NOT EXIST"

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v15, 0x1

    .line 158
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v10, v12, v0, v1}, Lcom/lge/mirrorlink/dap/lib/DapXMLParser;->makeAttestationResponseMessage(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    return-object v17

    .line 171
    .restart local v3    # "appPublicKey":[B
    .restart local v7    # "eachAttestationMsg":Ljava/lang/String;
    .local v14, "response":Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;
    :cond_294
    const-string/jumbo v16, ""

    .line 172
    .local v16, "strAttestationMsg":Ljava/lang/String;
    if-eqz v14, :cond_29d

    .line 173
    iget v15, v14, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->result:I

    goto/16 :goto_1c5

    .line 175
    :cond_29d
    const/4 v15, 0x5

    goto/16 :goto_1c5
.end method

.method public setIPAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lge/mirrorlink/dap/lib/DAPServer;->mIPAddress:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public startServer()Z
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPServer;->mAttestator:Lcom/lge/mirrorlink/dap/lib/AttestatorInterface;

    invoke-interface {v0}, Lcom/lge/mirrorlink/dap/lib/AttestatorInterface;->startServer()Z

    move-result v0

    return v0
.end method

.method public stopServer()V
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/DAPServer;->mAttestator:Lcom/lge/mirrorlink/dap/lib/AttestatorInterface;

    invoke-interface {v0}, Lcom/lge/mirrorlink/dap/lib/AttestatorInterface;->stopServer()V

    .line 49
    return-void
.end method
