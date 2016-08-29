.class public Lcom/lge/mirrorlink/dap/lib/DapXMLParser;
.super Ljava/lang/Object;
.source "DapXMLParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_DAP"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeAttestationOfComponent(Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;[B)Ljava/lang/String;
    .registers 16
    .param p0, "response"    # Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;
    .param p1, "applicationPublicKey"    # [B

    .prologue
    const/4 v13, 0x0

    .line 188
    if-eqz p0, :cond_7

    iget v10, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->result:I

    if-eqz v10, :cond_11

    .line 189
    :cond_7
    const-string/jumbo v10, "MirrorLink_DAP"

    const-string/jumbo v11, "makeAttestationOfComponent : invalid response data"

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-object v13

    .line 203
    :cond_11
    const/4 v3, 0x0

    .line 204
    .local v3, "strOldValueEncoded":Ljava/lang/String;
    const/4 v5, 0x0

    .line 205
    .local v5, "strQuoteInfoEncoded":Ljava/lang/String;
    const/4 v7, 0x0

    .line 209
    .local v7, "strQuoteSignatureEncoded":Ljava/lang/String;
    :try_start_14
    new-instance v4, Ljava/lang/String;

    new-instance v10, Lcom/lge/mirrorlink/misc/LineFeedRemover;

    invoke-direct {v10}, Lcom/lge/mirrorlink/misc/LineFeedRemover;-><init>()V

    iget-object v11, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->oldvalue:[B

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/lge/mirrorlink/misc/LineFeedRemover;->remove([B)[B

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/String;-><init>([B)V
    :try_end_29
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_29} :catch_5b

    .line 210
    .local v4, "strOldValueEncoded":Ljava/lang/String;
    :try_start_29
    new-instance v6, Ljava/lang/String;

    .end local v3    # "strOldValueEncoded":Ljava/lang/String;
    new-instance v10, Lcom/lge/mirrorlink/misc/LineFeedRemover;

    invoke-direct {v10}, Lcom/lge/mirrorlink/misc/LineFeedRemover;-><init>()V

    iget-object v11, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->quoteInfo:[B

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/lge/mirrorlink/misc/LineFeedRemover;->remove([B)[B

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>([B)V
    :try_end_3e
    .catch Ljava/lang/NullPointerException; {:try_start_29 .. :try_end_3e} :catch_1e1

    .line 211
    .local v6, "strQuoteInfoEncoded":Ljava/lang/String;
    :try_start_3e
    new-instance v8, Ljava/lang/String;

    .end local v5    # "strQuoteInfoEncoded":Ljava/lang/String;
    new-instance v10, Lcom/lge/mirrorlink/misc/LineFeedRemover;

    invoke-direct {v10}, Lcom/lge/mirrorlink/misc/LineFeedRemover;-><init>()V

    iget-object v11, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->quoteSignature:[B

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/lge/mirrorlink/misc/LineFeedRemover;->remove([B)[B

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>([B)V
    :try_end_53
    .catch Ljava/lang/NullPointerException; {:try_start_3e .. :try_end_53} :catch_1e5

    .end local v7    # "strQuoteSignatureEncoded":Ljava/lang/String;
    .local v8, "strQuoteSignatureEncoded":Ljava/lang/String;
    move-object v7, v8

    .end local v8    # "strQuoteSignatureEncoded":Ljava/lang/String;
    .local v7, "strQuoteSignatureEncoded":Ljava/lang/String;
    move-object v5, v6

    .end local v6    # "strQuoteInfoEncoded":Ljava/lang/String;
    .local v5, "strQuoteInfoEncoded":Ljava/lang/String;
    move-object v3, v4

    .line 217
    .end local v4    # "strOldValueEncoded":Ljava/lang/String;
    .end local v5    # "strQuoteInfoEncoded":Ljava/lang/String;
    .end local v7    # "strQuoteSignatureEncoded":Ljava/lang/String;
    :goto_56
    iget v10, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->result:I

    if-eqz v10, :cond_69

    .line 218
    return-object v13

    .line 212
    .restart local v3    # "strOldValueEncoded":Ljava/lang/String;
    .local v5, "strQuoteInfoEncoded":Ljava/lang/String;
    .local v7, "strQuoteSignatureEncoded":Ljava/lang/String;
    :catch_5b
    move-exception v2

    .line 213
    .end local v3    # "strOldValueEncoded":Ljava/lang/String;
    .end local v5    # "strQuoteInfoEncoded":Ljava/lang/String;
    .local v2, "e":Ljava/lang/NullPointerException;
    :goto_5c
    const/4 v10, 0x5

    iput v10, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->result:I

    .line 214
    const-string/jumbo v10, "MirrorLink_DAP"

    const-string/jumbo v11, "NullPointerException happens !"

    invoke-static {v10, v11, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_56

    .line 224
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .end local v7    # "strQuoteSignatureEncoded":Ljava/lang/String;
    :cond_69
    const-string/jumbo v9, "<attestation>\n"

    .line 226
    .local v9, "strRespMsg":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "<componentID>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->componentID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "</componentID>\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 228
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "<oldValue>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 229
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 230
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "</oldValue>\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 232
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "<quoteInfo>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 233
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 234
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "</quoteInfo>\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 236
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "<quoteSignature>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 237
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 238
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "</quoteSignature>\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 240
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "<URL>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 241
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->protocolURL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 242
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "</URL>\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 244
    const-string/jumbo v10, "TerminalMode:VNC-Server"

    iget-object v11, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->componentID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_189

    .line 245
    const-string/jumbo v10, "TerminalMode:UPnP-Server"

    iget-object v11, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->componentID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 244
    if-eqz v10, :cond_1c1

    .line 246
    :cond_189
    if-eqz p1, :cond_1c1

    .line 247
    const/4 v0, 0x0

    .line 249
    .local v0, "applicationPublicKeyBase64":Ljava/lang/String;
    :try_start_18c
    new-instance v1, Ljava/lang/String;

    new-instance v10, Lcom/lge/mirrorlink/misc/LineFeedRemover;

    invoke-direct {v10}, Lcom/lge/mirrorlink/misc/LineFeedRemover;-><init>()V

    const/4 v11, 0x0

    invoke-static {p1, v11}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/lge/mirrorlink/misc/LineFeedRemover;->remove([B)[B

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/lang/String;-><init>([B)V
    :try_end_19f
    .catch Ljava/lang/NullPointerException; {:try_start_18c .. :try_end_19f} :catch_1d6

    .end local v0    # "applicationPublicKeyBase64":Ljava/lang/String;
    .local v1, "applicationPublicKeyBase64":Ljava/lang/String;
    move-object v0, v1

    .line 253
    .end local v1    # "applicationPublicKeyBase64":Ljava/lang/String;
    :goto_1a0
    if-eqz v0, :cond_1c1

    .line 254
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "<applicationPublicKey>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "</applicationPublicKey>\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 259
    :cond_1c1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "</attestation>\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 261
    return-object v9

    .line 250
    .restart local v0    # "applicationPublicKeyBase64":Ljava/lang/String;
    :catch_1d6
    move-exception v2

    .line 251
    .restart local v2    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v10, "MirrorLink_DAP"

    const-string/jumbo v11, "NullPointerException happens !"

    invoke-static {v10, v11, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a0

    .line 212
    .end local v0    # "applicationPublicKeyBase64":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .end local v9    # "strRespMsg":Ljava/lang/String;
    .restart local v4    # "strOldValueEncoded":Ljava/lang/String;
    .restart local v5    # "strQuoteInfoEncoded":Ljava/lang/String;
    .restart local v7    # "strQuoteSignatureEncoded":Ljava/lang/String;
    :catch_1e1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/NullPointerException;
    move-object v3, v4

    .end local v4    # "strOldValueEncoded":Ljava/lang/String;
    .local v3, "strOldValueEncoded":Ljava/lang/String;
    goto/16 :goto_5c

    .end local v2    # "e":Ljava/lang/NullPointerException;
    .end local v3    # "strOldValueEncoded":Ljava/lang/String;
    .end local v5    # "strQuoteInfoEncoded":Ljava/lang/String;
    .restart local v4    # "strOldValueEncoded":Ljava/lang/String;
    .restart local v6    # "strQuoteInfoEncoded":Ljava/lang/String;
    :catch_1e5
    move-exception v2

    .restart local v2    # "e":Ljava/lang/NullPointerException;
    move-object v5, v6

    .end local v6    # "strQuoteInfoEncoded":Ljava/lang/String;
    .local v5, "strQuoteInfoEncoded":Ljava/lang/String;
    move-object v3, v4

    .end local v4    # "strOldValueEncoded":Ljava/lang/String;
    .restart local v3    # "strOldValueEncoded":Ljava/lang/String;
    goto/16 :goto_5c
.end method

.method public static makeAttestationResponseMessage(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "result"    # I
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I
    .param p3, "attestationResults"    # Ljava/lang/String;
    .param p4, "certificateMsg"    # Ljava/lang/String;

    .prologue
    .line 161
    const-string/jumbo v0, "<attestationResponse>\n"

    .line 162
    .local v0, "strRespMsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<version>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<majorVersion>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</majorVersion>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<minorVersion>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</minorVersion>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</version>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<result>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</result>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    if-nez p0, :cond_b0

    .line 170
    if-eqz p3, :cond_9d

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_9d
    if-eqz p4, :cond_b0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_b0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</attestationResponse>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string/jumbo v1, "MirrorLink_DAP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeAttestationResponseMessage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-object v0
.end method

.method public static makeCertificateResponse([B[B)Ljava/lang/String;
    .registers 9
    .param p0, "encodedManufactureCert"    # [B
    .param p1, "encodedDeviceCert"    # [B

    .prologue
    .line 266
    const/4 v2, 0x0

    .line 267
    .local v2, "strManufactureCert":Ljava/lang/String;
    const/4 v1, 0x0

    .line 269
    .local v1, "strDeviceCert":Ljava/lang/String;
    :try_start_2
    new-instance v3, Ljava/lang/String;

    new-instance v5, Lcom/lge/mirrorlink/misc/LineFeedRemover;

    invoke-direct {v5}, Lcom/lge/mirrorlink/misc/LineFeedRemover;-><init>()V

    const/4 v6, 0x0

    invoke-static {p0, v6}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/mirrorlink/misc/LineFeedRemover;->remove([B)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_15} :catch_8a

    .line 270
    .local v3, "strManufactureCert":Ljava/lang/String;
    :try_start_15
    new-instance v1, Ljava/lang/String;

    .end local v1    # "strDeviceCert":Ljava/lang/String;
    .end local v2    # "strManufactureCert":Ljava/lang/String;
    new-instance v5, Lcom/lge/mirrorlink/misc/LineFeedRemover;

    invoke-direct {v5}, Lcom/lge/mirrorlink/misc/LineFeedRemover;-><init>()V

    const/4 v6, 0x0

    invoke-static {p1, v6}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/mirrorlink/misc/LineFeedRemover;->remove([B)[B

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_28
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_28} :catch_96

    .line 278
    .local v1, "strDeviceCert":Ljava/lang/String;
    const-string/jumbo v4, "<deviceCertificate>"

    .line 279
    .local v4, "strRespMsg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 280
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</deviceCertificate>\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 282
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "<manufacturerCertificate>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</manufacturerCertificate>\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 286
    return-object v4

    .line 271
    .end local v3    # "strManufactureCert":Ljava/lang/String;
    .end local v4    # "strRespMsg":Ljava/lang/String;
    .local v1, "strDeviceCert":Ljava/lang/String;
    .restart local v2    # "strManufactureCert":Ljava/lang/String;
    :catch_8a
    move-exception v0

    .line 272
    .end local v1    # "strDeviceCert":Ljava/lang/String;
    .end local v2    # "strManufactureCert":Ljava/lang/String;
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_8b
    const-string/jumbo v5, "MirrorLink_DAP"

    const-string/jumbo v6, "NullPointerException happens !"

    invoke-static {v5, v6, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    const/4 v5, 0x0

    return-object v5

    .line 271
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "strManufactureCert":Ljava/lang/String;
    :catch_96
    move-exception v0

    .restart local v0    # "e":Ljava/lang/NullPointerException;
    move-object v2, v3

    .end local v3    # "strManufactureCert":Ljava/lang/String;
    .local v2, "strManufactureCert":Ljava/lang/String;
    goto :goto_8b
.end method

.method public static parseRequestMessage(Ljava/io/Reader;)Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .registers 21
    .param p0, "src"    # Ljava/io/Reader;

    .prologue
    .line 25
    const/4 v9, 0x0

    .line 27
    .local v9, "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    const/4 v12, 0x0

    .line 28
    .local v12, "strMajorVersion":Ljava/lang/String;
    const/4 v13, 0x0

    .line 29
    .local v13, "strMinorVersion":Ljava/lang/String;
    const/4 v15, 0x0

    .line 30
    .local v15, "strTrustRoot":Ljava/lang/String;
    const/4 v14, 0x0

    .line 31
    .local v14, "strNonce":Ljava/lang/String;
    const/4 v11, 0x0

    .line 33
    .local v11, "strComponentID":Ljava/lang/String;
    :try_start_6
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    .line 34
    .local v7, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 35
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v16

    .line 37
    .local v16, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 39
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .local v6, "eventType":I
    move-object v10, v9

    .line 40
    .end local v9    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .end local v11    # "strComponentID":Ljava/lang/String;
    .end local v12    # "strMajorVersion":Ljava/lang/String;
    .end local v13    # "strMinorVersion":Ljava/lang/String;
    .end local v14    # "strNonce":Ljava/lang/String;
    .end local v15    # "strTrustRoot":Ljava/lang/String;
    .local v10, "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    :goto_21
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_1b3

    .line 41
    if-nez v6, :cond_30

    :cond_29
    move-object v9, v10

    .line 143
    .end local v10    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .local v9, "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    :goto_2a
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_2d} :catch_3de
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_2d} :catch_3e1

    move-result v6

    move-object v10, v9

    .end local v9    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .restart local v10    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    goto :goto_21

    .line 43
    :cond_30
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_29

    .line 45
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v6, v0, :cond_177

    .line 46
    :try_start_3c
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 47
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v17, "MirrorLink_DAP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "parseXML : START_TAG : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string/jumbo v17, "attestationRequest"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7b

    .line 49
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "<attestationRequest>"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v9, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;

    invoke-direct {v9}, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;-><init>()V

    .line 53
    .end local v10    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .restart local v9    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    const/4 v12, 0x0

    .line 54
    .restart local v12    # "strMajorVersion":Ljava/lang/String;
    const/4 v13, 0x0

    .line 55
    .restart local v13    # "strMinorVersion":Ljava/lang/String;
    const/4 v15, 0x0

    .line 56
    .restart local v15    # "strTrustRoot":Ljava/lang/String;
    const/4 v14, 0x0

    .line 57
    .restart local v14    # "strNonce":Ljava/lang/String;
    const/4 v11, 0x0

    .restart local v11    # "strComponentID":Ljava/lang/String;
    goto :goto_2a

    .line 58
    .end local v9    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .end local v11    # "strComponentID":Ljava/lang/String;
    .end local v12    # "strMajorVersion":Ljava/lang/String;
    .end local v13    # "strMinorVersion":Ljava/lang/String;
    .end local v14    # "strNonce":Ljava/lang/String;
    .end local v15    # "strTrustRoot":Ljava/lang/String;
    .restart local v10    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    :cond_7b
    const-string/jumbo v17, "Version"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_91

    .line 59
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "<Version>"

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v10

    .end local v10    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .restart local v9    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    goto :goto_2a

    .line 61
    .end local v9    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .restart local v10    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    :cond_91
    const-string/jumbo v17, "majorVersion"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_bf

    .line 62
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    .line 63
    .local v12, "strMajorVersion":Ljava/lang/String;
    const-string/jumbo v17, "MirrorLink_DAP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "<majorVersion>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v10

    .end local v10    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .restart local v9    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    goto/16 :goto_2a

    .line 64
    .end local v9    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .end local v12    # "strMajorVersion":Ljava/lang/String;
    .restart local v10    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    :cond_bf
    const-string/jumbo v17, "minorVersion"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_ed

    .line 65
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    .line 66
    .local v13, "strMinorVersion":Ljava/lang/String;
    const-string/jumbo v17, "MirrorLink_DAP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "<minorVersion>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v10

    .end local v10    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .restart local v9    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    goto/16 :goto_2a

    .line 67
    .end local v9    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .end local v13    # "strMinorVersion":Ljava/lang/String;
    .restart local v10    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    :cond_ed
    const-string/jumbo v17, "trustRoot"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11b

    .line 68
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 69
    .local v15, "strTrustRoot":Ljava/lang/String;
    const-string/jumbo v17, "MirrorLink_DAP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "<trustRoot>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v10

    .end local v10    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .restart local v9    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    goto/16 :goto_2a

    .line 70
    .end local v9    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .end local v15    # "strTrustRoot":Ljava/lang/String;
    .restart local v10    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    :cond_11b
    const-string/jumbo v17, "nonce"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_149

    .line 71
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    .line 72
    .local v14, "strNonce":Ljava/lang/String;
    const-string/jumbo v17, "MirrorLink_DAP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "<nonce>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v10

    .end local v10    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .restart local v9    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    goto/16 :goto_2a

    .line 73
    .end local v9    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .end local v14    # "strNonce":Ljava/lang/String;
    .restart local v10    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    :cond_149
    const-string/jumbo v17, "componentID"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_29

    .line 74
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    .line 75
    .local v11, "strComponentID":Ljava/lang/String;
    const-string/jumbo v17, "MirrorLink_DAP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "<componentID>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v10

    .end local v10    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .restart local v9    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    goto/16 :goto_2a

    .line 78
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .end local v11    # "strComponentID":Ljava/lang/String;
    .restart local v10    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    :cond_177
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v6, v0, :cond_386

    .line 79
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 80
    .restart local v8    # "name":Ljava/lang/String;
    const-string/jumbo v17, "MirrorLink_DAP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "parseXML : END_TAG : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v17, "attestationRequest"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_29

    .line 82
    if-nez v10, :cond_1b4

    .line 83
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "missing attestationRequest start TAG"

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .end local v8    # "name":Ljava/lang/String;
    :cond_1b3
    :goto_1b3
    return-object v10

    .line 84
    .restart local v8    # "name":Ljava/lang/String;
    :cond_1b4
    if-eqz v12, :cond_1b8

    if-nez v13, :cond_1d4

    .line 87
    :cond_1b8
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "missing DAP request parameters"

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3c .. :try_end_1c1} :catch_1c2
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_1c1} :catch_355

    goto :goto_1b3

    .line 146
    .end local v8    # "name":Ljava/lang/String;
    :catch_1c2
    move-exception v5

    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v9, v10

    .line 147
    .end local v6    # "eventType":I
    .end local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v10    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .end local v16    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :goto_1c4
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "parseApp : XmlPullParserException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    const/16 v17, 0x0

    return-object v17

    .line 85
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6    # "eventType":I
    .restart local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v10    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .restart local v16    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1d4
    if-eqz v15, :cond_1b8

    if-eqz v14, :cond_1b8

    if-eqz v11, :cond_1b8

    .line 92
    :try_start_1da
    iput-object v11, v10, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->componentID:Ljava/lang/String;

    .line 94
    invoke-static {v12}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->majorVersion:I

    .line 95
    invoke-static {v13}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->minorVersion:I
    :try_end_1f4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1da .. :try_end_1f4} :catch_1c2
    .catch Ljava/io/IOException; {:try_start_1da .. :try_end_1f4} :catch_355

    .line 97
    if-eqz v15, :cond_28b

    .line 99
    :try_start_1f6
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 100
    .local v2, "bytesBase64":[B
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->trustRoot:[B

    .line 102
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "[parsRequestMessage : trust root] -----------------------"

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string/jumbo v17, "MirrorLink_DAP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "base64:["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "---------------------------------------------------------"

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v17, "MirrorLink_DAP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "request.trustroot:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v10, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->trustRoot:[B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string/jumbo v17, "MirrorLink_DAP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "bytes:["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v10, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->trustRoot:[B

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

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "---------------------------------------------------------"

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f6 .. :try_end_28b} :catch_367
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f6 .. :try_end_28b} :catch_1c2
    .catch Ljava/io/IOException; {:try_start_1f6 .. :try_end_28b} :catch_355

    .line 115
    .end local v2    # "bytesBase64":[B
    :cond_28b
    :goto_28b
    if-eqz v14, :cond_1b3

    .line 117
    :try_start_28d
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 118
    .restart local v2    # "bytesBase64":[B
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->nonce:[B

    .line 120
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "[makeAttestationRequestMsg : nonce] ---------------------"

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "<Base64 encoded>"

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string/jumbo v17, "MirrorLink_DAP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "length="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v17, "MirrorLink_DAP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "contents=\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "---------------------------------------------------------"

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "<Base64 decoded>"

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string/jumbo v17, "MirrorLink_DAP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "bytes=\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v10, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->nonce:[B

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/lge/mirrorlink/common/ExtLog;->BytesToHexString([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "---------------------------------------------------------"

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_334
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28d .. :try_end_334} :catch_336
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28d .. :try_end_334} :catch_1c2
    .catch Ljava/io/IOException; {:try_start_28d .. :try_end_334} :catch_355

    goto/16 :goto_1b3

    .line 129
    .end local v2    # "bytesBase64":[B
    :catch_336
    move-exception v4

    .line 130
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_337
    const-string/jumbo v17, "MirrorLink_DAP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "IllegalArgumentException : Base64 decoding failure "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_353
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_337 .. :try_end_353} :catch_1c2
    .catch Ljava/io/IOException; {:try_start_337 .. :try_end_353} :catch_355

    goto/16 :goto_1b3

    .line 149
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "name":Ljava/lang/String;
    :catch_355
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    move-object v9, v10

    .line 150
    .end local v6    # "eventType":I
    .end local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v10    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .end local v16    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :goto_357
    const-string/jumbo v17, "MirrorLink_DAP"

    const-string/jumbo v18, "parseApp : IOException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    const/16 v17, 0x0

    return-object v17

    .line 109
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "eventType":I
    .restart local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v10    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .restart local v16    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_367
    move-exception v4

    .line 110
    .restart local v4    # "e":Ljava/lang/IllegalArgumentException;
    :try_start_368
    const-string/jumbo v17, "MirrorLink_DAP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "IllegalArgumentException : Base64 decoding failure "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28b

    .line 137
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "name":Ljava/lang/String;
    :cond_386
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v6, v0, :cond_3b8

    .line 138
    const-string/jumbo v17, "MirrorLink_DAP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "parseXML : TEXT("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v10

    .end local v10    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .restart local v9    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    goto/16 :goto_2a

    .line 140
    .end local v9    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .restart local v10    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    :cond_3b8
    const-string/jumbo v17, "MirrorLink_DAP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "parseXML : unknown tag("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3db
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_368 .. :try_end_3db} :catch_1c2
    .catch Ljava/io/IOException; {:try_start_368 .. :try_end_3db} :catch_355

    move-object v9, v10

    .end local v10    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .restart local v9    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    goto/16 :goto_2a

    .line 146
    .end local v6    # "eventType":I
    .end local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v9    # "request":Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .end local v16    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3de
    move-exception v5

    .restart local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto/16 :goto_1c4

    .line 149
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3e1
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_357
.end method
