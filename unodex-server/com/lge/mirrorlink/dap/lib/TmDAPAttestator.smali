.class public Lcom/lge/mirrorlink/dap/lib/TmDAPAttestator;
.super Ljava/lang/Object;
.source "TmDAPAttestator.java"

# interfaces
.implements Lcom/lge/mirrorlink/dap/lib/AttestatorInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_DAP"

.field private static final TPMPCRFileName:Ljava/lang/String; = "tpmpcr.bin"


# instance fields
.field private TPMemulator:Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPAttestator;->mContext:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPAttestator;->TPMemulator:Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;

    .line 41
    iput-object p1, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPAttestator;->mContext:Landroid/content/Context;

    .line 43
    const-string/jumbo v0, "MirrorLink_DAP"

    const-string/jumbo v1, "TmDAPAttestator loaded"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static hexToByteArray(Ljava/lang/String;)[B
    .registers 5
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 177
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 178
    :cond_9
    return-object v3

    .line 181
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 182
    .local v0, "ba":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    array-length v2, v0

    if-ge v1, v2, :cond_2c

    .line 183
    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 185
    :cond_2c
    return-object v0
.end method

.method private openSecuredFile(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 10
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v6, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPAttestator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "dirPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_18

    .line 308
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 311
    :cond_18
    const/4 v3, 0x0

    .line 313
    .local v3, "is":Ljava/io/FileInputStream;
    :try_start_19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, "pcrFilePath":Ljava/lang/String;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_36} :catch_38

    .end local v3    # "is":Ljava/io/FileInputStream;
    .local v4, "is":Ljava/io/FileInputStream;
    move-object v3, v4

    .line 319
    .end local v4    # "is":Ljava/io/FileInputStream;
    .end local v5    # "pcrFilePath":Ljava/lang/String;
    :goto_37
    return-object v3

    .line 315
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_38
    move-exception v2

    .line 316
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_37
.end method

.method private openSecuredFileToWrite(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 10
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 326
    iget-object v6, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPAttestator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "dirPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_18

    .line 329
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 332
    :cond_18
    const/4 v3, 0x0

    .line 334
    .local v3, "os":Ljava/io/FileOutputStream;
    :try_start_19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 335
    .local v5, "pcrFilePath":Ljava/lang/String;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_36} :catch_38

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .local v4, "os":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 340
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .end local v5    # "pcrFilePath":Ljava/lang/String;
    :goto_37
    return-object v3

    .line 336
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_38
    move-exception v1

    .line 337
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_37
.end method


# virtual methods
.method public isAttestatorReady()Z
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public loadPCR(Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;Ljava/lang/String;)V
    .registers 15
    .param p1, "emulator"    # Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 78
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 79
    :cond_4
    return-void

    .line 82
    :cond_5
    invoke-virtual {p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->TPM_ResetPCR()V

    .line 84
    invoke-direct {p0, p2}, Lcom/lge/mirrorlink/dap/lib/TmDAPAttestator;->openSecuredFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 85
    .local v3, "is":Ljava/io/InputStream;
    if-nez v3, :cond_2c

    .line 86
    const-string/jumbo v8, "MirrorLink_DAP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[Fatal Error] Fail to read a file for TPM PCR :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/lge/mirrorlink/dap/lib/TmDAPAttestator;->savePCR(Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;Ljava/lang/String;)V

    .line 88
    return-void

    .line 91
    :cond_2c
    const/4 v6, 0x0

    .line 93
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_2d
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_37} :catch_106
    .catchall {:try_start_2d .. :try_end_37} :catchall_e0

    .line 97
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_38
    const/16 v8, 0x18

    if-ge v2, v8, :cond_67

    .line 98
    :try_start_3c
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_79

    .line 100
    invoke-static {v4}, Lcom/lge/mirrorlink/dap/lib/TmDAPAttestator;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 101
    .local v1, "hexval":[B
    if-eqz v1, :cond_6e

    array-length v8, v1

    const/16 v9, 0x14

    if-eq v8, v9, :cond_6e

    .line 102
    const-string/jumbo v8, "MirrorLink_DAP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid PCR value "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_67} :catch_83
    .catchall {:try_start_3c .. :try_end_67} :catchall_103

    .line 120
    .end local v1    # "hexval":[B
    .end local v4    # "line":Ljava/lang/String;
    :cond_67
    :goto_67
    if-eqz v7, :cond_6c

    .line 122
    :try_start_69
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_c4

    :cond_6c
    :goto_6c
    move-object v6, v7

    .line 76
    .end local v2    # "idx":I
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :cond_6d
    :goto_6d
    return-void

    .line 106
    .restart local v1    # "hexval":[B
    .restart local v2    # "idx":I
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_6e
    :try_start_6e
    new-instance v5, Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    invoke-direct {v5, v1}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;-><init>([B)V

    .line 107
    .local v5, "pcrval":Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;
    invoke-virtual {p1, v2, v5}, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->TPM_WritePCR(ILcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;)Z

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 110
    .end local v1    # "hexval":[B
    .end local v5    # "pcrval":Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;
    :cond_79
    const-string/jumbo v8, "MirrorLink_DAP"

    const-string/jumbo v9, "[loadPCR] unexpected end of file"

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_82} :catch_83
    .catchall {:try_start_6e .. :try_end_82} :catchall_103

    goto :goto_67

    .line 116
    .end local v4    # "line":Ljava/lang/String;
    :catch_83
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v6, v7

    .line 117
    .end local v2    # "idx":I
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :goto_85
    :try_start_85
    const-string/jumbo v8, "MirrorLink_DAP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[loadPCR] exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;
    :try_end_a2
    .catchall {:try_start_85 .. :try_end_a2} :catchall_e0

    .line 120
    if-eqz v6, :cond_6d

    .line 122
    :try_start_a4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_6d

    .line 123
    :catch_a8
    move-exception v0

    .line 124
    const-string/jumbo v8, "MirrorLink_DAP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[loadPCR] unexpected exception during reader.close() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "idx":I
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_c4
    move-exception v0

    .line 124
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "MirrorLink_DAP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[loadPCR] unexpected exception during reader.close() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "idx":I
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_e0
    move-exception v8

    .line 120
    :goto_e1
    if-eqz v6, :cond_e6

    .line 122
    :try_start_e3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e6} :catch_e7

    .line 119
    :cond_e6
    :goto_e6
    throw v8

    .line 123
    :catch_e7
    move-exception v0

    .line 124
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "MirrorLink_DAP"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[loadPCR] unexpected exception during reader.close() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e6

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "idx":I
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_103
    move-exception v8

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    goto :goto_e1

    .line 116
    .end local v2    # "idx":I
    .local v6, "reader":Ljava/io/BufferedReader;
    :catch_106
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_85
.end method

.method public makeAttestationResponse(Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;Ljava/lang/String;[B)Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;
    .registers 21
    .param p1, "request"    # Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .param p2, "protocolURL"    # Ljava/lang/String;
    .param p3, "applicationPublicKey"    # [B

    .prologue
    .line 190
    if-nez p1, :cond_d

    .line 191
    const-string/jumbo v14, "MirrorLink_DAP"

    const-string/jumbo v15, "makeAttestationResponse : unable to start, no request data"

    invoke-static {v14, v15}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v14, 0x0

    return-object v14

    .line 195
    :cond_d
    new-instance v12, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;

    invoke-direct {v12}, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;-><init>()V

    .line 196
    .local v12, "response":Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;
    new-instance v12, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;

    .end local v12    # "response":Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;
    invoke-direct {v12}, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;-><init>()V

    .line 197
    .restart local v12    # "response":Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;
    move-object/from16 v0, p1

    iget v14, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->majorVersion:I

    iput v14, v12, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->majorVersion:I

    .line 198
    move-object/from16 v0, p1

    iget v14, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->minorVersion:I

    iput v14, v12, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->minorVersion:I

    .line 199
    const/4 v14, 0x5

    iput v14, v12, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->result:I

    .line 200
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->componentID:Ljava/lang/String;

    iput-object v14, v12, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->componentID:Ljava/lang/String;

    .line 202
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPAttestator;->TPMemulator:Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;

    .line 203
    .local v4, "emulator":Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;
    if-nez v4, :cond_3c

    .line 204
    const-string/jumbo v14, "MirrorLink_DAP"

    const-string/jumbo v15, "makeAttestationResponse : unable to start, TPM emulator is not initialized"

    invoke-static {v14, v15}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-object v12

    .line 208
    :cond_3c
    invoke-virtual/range {p1 .. p1}, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->isValid()I

    move-result v13

    .line 209
    .local v13, "validity":I
    if-eqz v13, :cond_5f

    .line 210
    const-string/jumbo v14, "MirrorLink_DAP"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "makeAttestationResponse : unable to start, invalid request data "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iput v13, v12, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->result:I

    .line 212
    return-object v12

    .line 215
    :cond_5f
    const-string/jumbo v14, "MirrorLink_DAP"

    const-string/jumbo v15, "makeAttestationResponse-------------------------------"

    invoke-static {v14, v15}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string/jumbo v14, "MirrorLink_DAP"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "componentID : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->componentID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/16 v14, 0xa

    invoke-virtual {v4, v14}, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->TPM_ReadPCR(I)Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    move-result-object v10

    .line 221
    .local v10, "pcrValue":Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    if-nez v10, :cond_9a

    .line 222
    const-string/jumbo v14, "MirrorLink_DAP"

    const-string/jumbo v15, "makeAttestationResponse : Fail to read PCR[10]"

    invoke-static {v14, v15}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-object v12

    .line 225
    :cond_9a
    new-instance v9, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;

    invoke-virtual {v10}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->toBytes()[B

    move-result-object v14

    invoke-direct {v9, v14}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;-><init>([B)V

    .line 227
    .local v9, "oldValue":Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    const-string/jumbo v14, "MirrorLink_DAP"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "oldValue = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->toBytes()[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/lge/mirrorlink/common/ExtLog;->BytesToHexString([B)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string/jumbo v14, "TPM_Verification"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "TPM_Extend oldValue="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->toBytes()[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/lge/mirrorlink/common/ExtLog;->BytesToHexString([B)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v1, 0x0

    .line 238
    .local v1, "H1":[B
    if-eqz p3, :cond_fa

    .line 239
    :try_start_ea
    const-string/jumbo v14, "SHA-1"

    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 240
    .local v7, "md":Ljava/security/MessageDigest;
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 241
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 244
    .end local v1    # "H1":[B
    .end local v7    # "md":Ljava/security/MessageDigest;
    :cond_fa
    const-string/jumbo v14, "SHA-1"

    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 245
    .restart local v7    # "md":Ljava/security/MessageDigest;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->componentID:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/security/MessageDigest;->update([B)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/security/MessageDigest;->update([B)V

    .line 247
    if-eqz v1, :cond_118

    .line 248
    invoke-virtual {v7, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 250
    :cond_118
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 252
    .local v2, "digest":[B
    const-string/jumbo v14, "TPM_Verification"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "TPM_Extend inDigest="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v2}, Lcom/lge/mirrorlink/common/ExtLog;->BytesToHexString([B)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    array-length v14, v2

    const/16 v15, 0x14

    if-ne v14, v15, :cond_1ae

    .line 255
    new-instance v6, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;

    invoke-direct {v6, v2}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;-><init>([B)V

    .line 256
    .local v6, "inDigest":Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    const/16 v14, 0xa

    invoke-virtual {v4, v14, v6}, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->TPM_Extend(ILcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;)Z

    .line 258
    const/16 v14, 0xa

    invoke-virtual {v4, v14}, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->TPM_ReadPCR(I)Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    move-result-object v8

    .line 259
    .local v8, "newValue":Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    const-string/jumbo v14, "MirrorLink_DAP"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "TPM_Extend[2] = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->toBytes()[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/lge/mirrorlink/common/ExtLog;->BytesToHexString([B)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string/jumbo v14, "TPM_Verification"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "TPM_Extend result="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->toBytes()[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/lge/mirrorlink/common/ExtLog;->BytesToHexString([B)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_193
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ea .. :try_end_193} :catch_1b8

    .line 273
    new-instance v5, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->nonce:[B

    invoke-direct {v5, v14}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;-><init>([B)V

    .line 274
    .local v5, "externalData":Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    const/16 v14, 0xa

    invoke-virtual {v4, v14, v5}, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->TPM_Quote(ILcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;)Lcom/lge/mirrorlink/dap/tpm/TPM_QUOTE_INFO;

    move-result-object v11

    .line 275
    .local v11, "quoteResult":Lcom/lge/mirrorlink/dap/tpm/TPM_QUOTE_INFO;
    if-nez v11, :cond_1c6

    .line 276
    const-string/jumbo v14, "MirrorLink_DAP"

    const-string/jumbo v15, "TPM_Quote failed (Please check the private key file)"

    invoke-static {v14, v15}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-object v12

    .line 262
    .end local v5    # "externalData":Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    .end local v6    # "inDigest":Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    .end local v8    # "newValue":Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    .end local v11    # "quoteResult":Lcom/lge/mirrorlink/dap/tpm/TPM_QUOTE_INFO;
    :cond_1ae
    :try_start_1ae
    const-string/jumbo v14, "MirrorLink_DAP"

    const-string/jumbo v15, "calculateDigest : Unexpected Error - SHA-1 Digest length is not 20"

    invoke-static {v14, v15}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1ae .. :try_end_1b7} :catch_1b8

    .line 263
    return-object v12

    .line 265
    .end local v2    # "digest":[B
    .end local v7    # "md":Ljava/security/MessageDigest;
    :catch_1b8
    move-exception v3

    .line 266
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v14, "MirrorLink_DAP"

    const-string/jumbo v15, "calculateDigest : Unexpected Error - SHA-1 Not supported"

    invoke-static {v14, v15}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 268
    return-object v12

    .line 282
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v2    # "digest":[B
    .restart local v5    # "externalData":Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    .restart local v6    # "inDigest":Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    .restart local v7    # "md":Ljava/security/MessageDigest;
    .restart local v8    # "newValue":Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    .restart local v11    # "quoteResult":Lcom/lge/mirrorlink/dap/tpm/TPM_QUOTE_INFO;
    :cond_1c6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPAttestator;->TPMemulator:Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;

    const-string/jumbo v15, "tpmpcr.bin"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/lge/mirrorlink/dap/lib/TmDAPAttestator;->savePCR(Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;Ljava/lang/String;)V

    .line 288
    move-object/from16 v0, p1

    iget v14, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->majorVersion:I

    iput v14, v12, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->majorVersion:I

    .line 289
    move-object/from16 v0, p1

    iget v14, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->minorVersion:I

    iput v14, v12, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->minorVersion:I

    .line 290
    const/4 v14, 0x0

    iput v14, v12, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->result:I

    .line 291
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->componentID:Ljava/lang/String;

    iput-object v14, v12, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->componentID:Ljava/lang/String;

    .line 292
    invoke-virtual {v9}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->toBytes()[B

    move-result-object v14

    iput-object v14, v12, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->oldvalue:[B

    .line 293
    iget-object v14, v11, Lcom/lge/mirrorlink/dap/tpm/TPM_QUOTE_INFO;->quoteInfo:[B

    iput-object v14, v12, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->quoteInfo:[B

    .line 294
    iget-object v14, v11, Lcom/lge/mirrorlink/dap/tpm/TPM_QUOTE_INFO;->quoteSignature:[B

    iput-object v14, v12, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->quoteSignature:[B

    .line 295
    move-object/from16 v0, p2

    iput-object v0, v12, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->protocolURL:Ljava/lang/String;

    .line 296
    const-string/jumbo v14, "MirrorLink_DAP"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "protolURL:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-object v12
.end method

.method public savePCR(Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;Ljava/lang/String;)V
    .registers 14
    .param p1, "emulator"    # Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 133
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 134
    :cond_4
    return-void

    .line 137
    :cond_5
    invoke-direct {p0, p2}, Lcom/lge/mirrorlink/dap/lib/TmDAPAttestator;->openSecuredFileToWrite(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v3

    .line 138
    .local v3, "os":Ljava/io/OutputStream;
    if-nez v3, :cond_26

    .line 139
    const-string/jumbo v7, "MirrorLink_DAP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[Fatal Error] Fail to create a file for TPM PCR :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void

    .line 143
    :cond_26
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 147
    .local v6, "writer":Ljava/io/BufferedWriter;
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_31
    const/16 v7, 0x18

    if-ge v2, v7, :cond_4e

    .line 148
    :try_start_35
    invoke-virtual {p1, v2}, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->TPM_ReadPCR(I)Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    move-result-object v4

    .line 149
    .local v4, "pcrval":Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;
    if-eqz v4, :cond_4b

    .line 150
    invoke-virtual {v4}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;->toBytes()[B

    move-result-object v1

    .line 151
    .local v1, "hexval":[B
    invoke-static {v1}, Lcom/lge/mirrorlink/common/ExtLog;->BytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, "str":Ljava/lang/String;
    if-eqz v5, :cond_4b

    .line 153
    invoke-virtual {v6, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 147
    .end local v1    # "hexval":[B
    .end local v5    # "str":Ljava/lang/String;
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 158
    .end local v4    # "pcrval":Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;
    :cond_4e
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_51} :catch_73
    .catchall {:try_start_35 .. :try_end_51} :catchall_b3

    .line 163
    if-eqz v6, :cond_56

    .line 165
    :try_start_53
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_57

    .line 131
    :cond_56
    :goto_56
    return-void

    .line 166
    :catch_57
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "MirrorLink_DAP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[savePCR] unexpected exception during writer.close() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    .line 159
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_73
    move-exception v0

    .line 160
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_74
    const-string/jumbo v7, "MirrorLink_DAP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[savePCR] unexpected exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;
    :try_end_91
    .catchall {:try_start_74 .. :try_end_91} :catchall_b3

    .line 163
    if-eqz v6, :cond_56

    .line 165
    :try_start_93
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_56

    .line 166
    :catch_97
    move-exception v0

    .line 167
    const-string/jumbo v7, "MirrorLink_DAP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[savePCR] unexpected exception during writer.close() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    .line 162
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_b3
    move-exception v7

    .line 163
    if-eqz v6, :cond_b9

    .line 165
    :try_start_b6
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b9} :catch_ba

    .line 162
    :cond_b9
    :goto_b9
    throw v7

    .line 166
    :catch_ba
    move-exception v0

    .line 167
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "MirrorLink_DAP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[savePCR] unexpected exception during writer.close() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b9
.end method

.method public setupTPMEmulator()Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;
    .registers 4

    .prologue
    .line 66
    iget-object v2, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPAttestator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getInstance(Landroid/content/Context;)Lcom/lge/mirrorlink/certificate/CertificateManager;

    move-result-object v0

    .line 68
    .local v0, "certManager":Lcom/lge/mirrorlink/certificate/CertificateManager;
    new-instance v1, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;

    invoke-direct {v1}, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;-><init>()V

    .line 69
    .local v1, "emulator":Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;
    const-string/jumbo v2, "tpmpcr.bin"

    invoke-virtual {p0, v1, v2}, Lcom/lge/mirrorlink/dap/lib/TmDAPAttestator;->loadPCR(Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getDevicePrivateKey()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->setDevicePrivateKey(Ljava/security/PrivateKey;)V

    .line 73
    return-object v1
.end method

.method public startServer()Z
    .registers 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/lge/mirrorlink/dap/lib/TmDAPAttestator;->setupTPMEmulator()Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPAttestator;->TPMemulator:Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public stopServer()V
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPAttestator;->TPMemulator:Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;

    const-string/jumbo v1, "tpmpcr.bin"

    invoke-virtual {p0, v0, v1}, Lcom/lge/mirrorlink/dap/lib/TmDAPAttestator;->savePCR(Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;Ljava/lang/String;)V

    .line 54
    return-void
.end method
