.class Lcom/lge/wifi/impl/aggregation/HttpConnectionHelper;
.super Ljava/lang/Object;
.source "HttpConnectionHelper.java"


# static fields
.field public static final HTTP_REQUEST_GET:I = 0x0

.field public static final HTTP_REQUEST_MAX:I = 0x2

.field public static final HTTP_REQUEST_POST:I = 0x1

.field private static final HTTP_REQUEST_TIMEOUT_MS:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "WiFiAggregation"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 341
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const-string v1, ""

    .line 342
    .local v1, "line":Ljava/lang/String;
    const-string v2, ""

    .line 343
    .local v2, "result":Ljava/lang/String;
    :goto_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    .line 347
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 348
    return-object v2

    .line 344
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_e
.end method

.method public static convertStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 360
    if-eqz p0, :cond_35

    .line 362
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 364
    .local v3, "writer":Ljava/io/Writer;
    const/16 v4, 0x400

    new-array v0, v4, [C

    .line 367
    .local v0, "buffer":[C
    :try_start_b
    new-instance v2, Ljava/io/BufferedReader;

    .line 368
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 367
    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 370
    .local v2, "reader":Ljava/io/Reader;
    :goto_15
    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_18} :catch_29
    .catchall {:try_start_b .. :try_end_18} :catchall_30

    move-result v1

    .local v1, "n":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_24

    .line 383
    :try_start_1c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_3c

    .line 387
    :goto_1f
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 391
    .end local v0    # "buffer":[C
    .end local v1    # "n":I
    .end local v2    # "reader":Ljava/io/Reader;
    .end local v3    # "writer":Ljava/io/Writer;
    :goto_23
    return-object v4

    .line 372
    .restart local v0    # "buffer":[C
    .restart local v1    # "n":I
    .restart local v2    # "reader":Ljava/io/Reader;
    .restart local v3    # "writer":Ljava/io/Writer;
    :cond_24
    const/4 v4, 0x0

    :try_start_25
    invoke-virtual {v3, v0, v4, v1}, Ljava/io/Writer;->write([CII)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29
    .catchall {:try_start_25 .. :try_end_28} :catchall_30

    goto :goto_15

    .end local v1    # "n":I
    .end local v2    # "reader":Ljava/io/Reader;
    :catch_29
    move-exception v4

    .line 383
    :try_start_2a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_38

    .line 377
    :goto_2d
    const-string v4, ""

    goto :goto_23

    .line 380
    :catchall_30
    move-exception v4

    .line 383
    :try_start_31
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_3a

    .line 386
    :goto_34
    throw v4

    .line 391
    .end local v0    # "buffer":[C
    .end local v3    # "writer":Ljava/io/Writer;
    :cond_35
    const-string v4, ""

    goto :goto_23

    .restart local v0    # "buffer":[C
    .restart local v3    # "writer":Ljava/io/Writer;
    :catch_38
    move-exception v4

    goto :goto_2d

    :catch_3a
    move-exception v5

    goto :goto_34

    .restart local v1    # "n":I
    .restart local v2    # "reader":Ljava/io/Reader;
    :catch_3c
    move-exception v4

    goto :goto_1f
.end method

.method static httpRequest(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Ljavax/net/ssl/HostnameVerifier;)Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;
    .registers 21
    .param p0, "targetURL"    # Ljava/lang/String;
    .param p1, "httpRequestType"    # I
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "parameterName"    # [Ljava/lang/String;
    .param p4, "parameterValue"    # [Ljava/lang/String;
    .param p6, "verifier"    # Ljavax/net/ssl/HostnameVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/net/ssl/HostnameVerifier;",
            ")",
            "Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;"
        }
    .end annotation

    .prologue
    .line 54
    .local p5, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;

    invoke-direct {v9}, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;-><init>()V

    .line 55
    .local v9, "result":Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;
    const/4 v5, 0x0

    .line 56
    .local v5, "isHttpsConnection":Z
    const/4 v2, 0x0

    .line 57
    .local v2, "httpConnection":Ljava/net/URLConnection;
    const/4 v3, 0x0

    .line 58
    .local v3, "httpsConnection":Ljavax/net/ssl/HttpsURLConnection;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v7, "query":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 72
    .local v8, "responseStream":Ljava/io/InputStream;
    if-eqz p3, :cond_18

    if-eqz p4, :cond_18

    move-object/from16 v0, p3

    array-length v10, v0

    move-object/from16 v0, p4

    array-length v10, v0

    .line 77
    :cond_18
    if-nez p2, :cond_1c

    .line 79
    const-string p2, "UTF-8"

    .line 82
    :cond_1c
    if-nez p6, :cond_23

    .line 84
    new-instance p6, Lcom/lge/wifi/impl/aggregation/VerizoneHostnameVerifier;

    .end local p6    # "verifier":Ljavax/net/ssl/HostnameVerifier;
    invoke-direct/range {p6 .. p6}, Lcom/lge/wifi/impl/aggregation/VerizoneHostnameVerifier;-><init>()V

    .line 87
    .restart local p6    # "verifier":Ljavax/net/ssl/HostnameVerifier;
    :cond_23
    if-eqz p0, :cond_2e

    .line 88
    const-string v10, "https"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2e

    .line 90
    const/4 v5, 0x1

    .line 95
    :cond_2e
    if-eqz p3, :cond_36

    .line 99
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_31
    :try_start_31
    move-object/from16 v0, p3

    array-length v10, v0
    :try_end_34
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_31 .. :try_end_34} :catch_cb

    if-lt v4, v10, :cond_95

    .line 115
    .end local v4    # "i":I
    :cond_36
    if-nez v5, :cond_17c

    .line 118
    if-nez p1, :cond_fd

    .line 122
    :try_start_3a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_d1

    .line 124
    new-instance v10, Ljava/net/URL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 132
    :goto_65
    const/16 v10, 0x7530

    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 133
    const/16 v10, 0x7530

    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 135
    const-string v10, "Accept-Charset"

    move-object/from16 v0, p2

    invoke-virtual {v2, v10, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    if-eqz p5, :cond_82

    .line 138
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_db

    .line 144
    :cond_82
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_85
    .catch Ljava/net/MalformedURLException; {:try_start_3a .. :try_end_85} :catch_f1
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_85} :catch_f7

    move-result-object v8

    .line 290
    :cond_86
    :goto_86
    sget v10, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->RESULT_CODE_NORMAL:I

    iput v10, v9, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->resultCode:I

    .line 292
    if-eqz v8, :cond_94

    .line 293
    const-string v10, "UTF-8"

    invoke-static {v8, v10}, Lcom/lge/wifi/impl/aggregation/HttpConnectionHelper;->convertStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->responsePage:Ljava/lang/String;

    .line 295
    :cond_94
    :goto_94
    return-object v9

    .line 101
    .restart local v4    # "i":I
    :cond_95
    :try_start_95
    aget-object v10, p3, v4

    if-eqz v10, :cond_c7

    .line 102
    const-string v10, "%s=%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v13, p3, v4

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aget-object v13, p4, v4

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    move-object/from16 v0, p3

    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    if-ge v4, v10, :cond_c7

    .line 104
    const/16 v10, 0x26

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_c7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_95 .. :try_end_c7} :catch_cb

    .line 99
    :cond_c7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_31

    .line 110
    :catch_cb
    move-exception v10

    sget v10, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->RESULT_CODE_UNSUPPORTED_ENCODING:I

    iput v10, v9, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->resultCode:I

    goto :goto_94

    .line 128
    .end local v4    # "i":I
    :cond_d1
    :try_start_d1
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    goto :goto_65

    .line 138
    :cond_db
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    .local v1, "cookie":Ljava/lang/String;
    const-string v11, "Cookie"

    const-string v12, ";"

    const/4 v13, 0x2

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v2, v11, v12}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f0
    .catch Ljava/net/MalformedURLException; {:try_start_d1 .. :try_end_f0} :catch_f1
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_f0} :catch_f7

    goto :goto_7c

    .line 149
    .end local v1    # "cookie":Ljava/lang/String;
    :catch_f1
    move-exception v10

    sget v10, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->RESULT_CODE_INVALID_URL:I

    iput v10, v9, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->resultCode:I

    goto :goto_94

    .line 154
    :catch_f7
    move-exception v10

    sget v10, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->RESULT_CODE_CANNOT_CONNECT_URL:I

    iput v10, v9, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->resultCode:I

    goto :goto_94

    .line 160
    :cond_fd
    const/4 v10, 0x1

    if-ne p1, v10, :cond_86

    .line 164
    const/4 v6, 0x0

    .line 166
    .local v6, "output":Ljava/io/OutputStream;
    :try_start_101
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 167
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 168
    const-string v10, "Accept-Charset"

    move-object/from16 v0, p2

    invoke-virtual {v2, v10, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    if-eqz p5, :cond_121

    .line 171
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_11b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_158

    .line 176
    :cond_121
    const-string v10, "Content-Type"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "application/x-www-form-urlencoded;charset="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/16 v10, 0x7530

    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 180
    const/16 v10, 0x7530

    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 183
    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 184
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/OutputStream;->write([B)V

    .line 185
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    goto/16 :goto_86

    .line 171
    :cond_158
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 173
    .restart local v1    # "cookie":Ljava/lang/String;
    const-string v11, "Cookie"

    const-string v12, ";"

    const/4 v13, 0x2

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v2, v11, v12}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16d
    .catch Ljava/net/MalformedURLException; {:try_start_101 .. :try_end_16d} :catch_16e
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_16d} :catch_175

    goto :goto_11b

    .line 189
    .end local v1    # "cookie":Ljava/lang/String;
    :catch_16e
    move-exception v10

    sget v10, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->RESULT_CODE_INVALID_URL:I

    iput v10, v9, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->resultCode:I

    goto/16 :goto_94

    .line 194
    :catch_175
    move-exception v10

    sget v10, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->RESULT_CODE_CANNOT_CONNECT_URL:I

    iput v10, v9, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->resultCode:I

    goto/16 :goto_94

    .line 201
    .end local v6    # "output":Ljava/io/OutputStream;
    :cond_17c
    if-nez p6, :cond_184

    .line 203
    sget v10, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->RESULT_CODE_NEED_VERIFIER:I

    iput v10, v9, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->resultCode:I

    goto/16 :goto_94

    .line 208
    :cond_184
    if-nez p1, :cond_20f

    .line 212
    :try_start_186
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_1dd

    .line 214
    new-instance v10, Ljava/net/URL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v3, v0

    .line 221
    :goto_1b5
    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 222
    const-string v10, "Accept-Charset"

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    if-eqz p5, :cond_1cd

    .line 225
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1c7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1eb

    .line 232
    :cond_1cd
    const/16 v10, 0x7530

    invoke-virtual {v3, v10}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 233
    const/16 v10, 0x7530

    invoke-virtual {v3, v10}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 235
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    goto/16 :goto_86

    .line 218
    :cond_1dd
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v3, v0

    goto :goto_1b5

    .line 225
    :cond_1eb
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 227
    .restart local v1    # "cookie":Ljava/lang/String;
    const-string v11, "Cookie"

    const-string v12, ";"

    const/4 v13, 0x2

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v3, v11, v12}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_200
    .catch Ljava/net/MalformedURLException; {:try_start_186 .. :try_end_200} :catch_201
    .catch Ljava/io/IOException; {:try_start_186 .. :try_end_200} :catch_208

    goto :goto_1c7

    .line 239
    .end local v1    # "cookie":Ljava/lang/String;
    :catch_201
    move-exception v10

    sget v10, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->RESULT_CODE_INVALID_URL:I

    iput v10, v9, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->resultCode:I

    goto/16 :goto_94

    .line 244
    :catch_208
    move-exception v10

    sget v10, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->RESULT_CODE_CANNOT_CONNECT_URL:I

    iput v10, v9, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->resultCode:I

    goto/16 :goto_94

    .line 249
    :cond_20f
    const/4 v10, 0x1

    if-ne p1, v10, :cond_86

    .line 253
    const/4 v6, 0x0

    .line 255
    .restart local v6    # "output":Ljava/io/OutputStream;
    :try_start_213
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v3, v0

    .line 256
    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 257
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 258
    const-string v10, "POST"

    invoke-virtual {v3, v10}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 259
    const-string v10, "Accept-Charset"

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    if-eqz p5, :cond_241

    .line 262
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_23b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_278

    .line 267
    :cond_241
    const-string v10, "Content-Type"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "application/x-www-form-urlencoded;charset="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const/16 v10, 0x7530

    invoke-virtual {v3, v10}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 271
    const/16 v10, 0x7530

    invoke-virtual {v3, v10}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 273
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 274
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/OutputStream;->write([B)V

    .line 275
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    goto/16 :goto_86

    .line 262
    :cond_278
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 264
    .restart local v1    # "cookie":Ljava/lang/String;
    const-string v11, "Cookie"

    const-string v12, ";"

    const/4 v13, 0x2

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v3, v11, v12}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28d
    .catch Ljava/net/MalformedURLException; {:try_start_213 .. :try_end_28d} :catch_28e
    .catch Ljava/io/IOException; {:try_start_213 .. :try_end_28d} :catch_295

    goto :goto_23b

    .line 279
    .end local v1    # "cookie":Ljava/lang/String;
    :catch_28e
    move-exception v10

    sget v10, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->RESULT_CODE_INVALID_URL:I

    iput v10, v9, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->resultCode:I

    goto/16 :goto_94

    .line 284
    :catch_295
    move-exception v10

    sget v10, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->RESULT_CODE_CANNOT_CONNECT_URL:I

    iput v10, v9, Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;->resultCode:I

    goto/16 :goto_94
.end method

.method static httpRequestGet(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 300
    const/4 v4, 0x0

    .line 301
    .local v4, "inputStream":Ljava/io/InputStream;
    const-string v5, ""

    .line 305
    .local v5, "result":Ljava/lang/String;
    :try_start_3
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 306
    .local v3, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 307
    .local v1, "httpParams":Lorg/apache/http/params/HttpParams;
    const/16 v7, 0x7530

    invoke-static {v1, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 309
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-direct {v3, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 312
    .restart local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v7, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 315
    .local v2, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 318
    if-eqz v4, :cond_30

    .line 319
    invoke-static {v4}, Lcom/lge/wifi/impl/aggregation/HttpConnectionHelper;->convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .end local v1    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    :goto_2e
    move-object v6, v5

    .line 336
    .end local v5    # "result":Ljava/lang/String;
    .local v6, "result":Ljava/lang/String;
    :goto_2f
    return-object v6

    .line 321
    .end local v6    # "result":Ljava/lang/String;
    .restart local v1    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_30
    const-string v5, "Did not work!"
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_32} :catch_33

    goto :goto_2e

    .line 324
    .end local v1    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    :catch_33
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    if-nez v0, :cond_3f

    .line 326
    const-string v7, "WiFiAggregation"

    const-string v8, "e is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .line 327
    .end local v5    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    goto :goto_2f

    .line 329
    .end local v6    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4e

    .line 330
    const-string v7, "WiFiAggregation"

    const-string v8, "e.getLocalizedMessage() is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .line 331
    .end local v5    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    goto :goto_2f

    .line 333
    .end local v6    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_4e
    const-string v7, "WiFiAggregation"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method
