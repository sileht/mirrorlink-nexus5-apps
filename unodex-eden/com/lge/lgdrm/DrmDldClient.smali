.class public final Lcom/lge/lgdrm/DrmDldClient;
.super Ljava/lang/Thread;
.source "DrmDldClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lgdrm/DrmDldClient$FailInfo;
    }
.end annotation


# static fields
.field public static final ERROR_CONNECT:I = 0x3

.field public static final ERROR_HTTP_404:I = 0x2

.field public static final ERROR_INTERNAL:I = 0x1

.field public static final ERROR_INTERRUPTED:I = 0x7

.field public static final ERROR_MIME_MISMATCHED:I = 0x6

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_OUT_OF_STORAGE:I = 0x5

.field public static final ERROR_RO_CORRUPTED:I = 0x4

.field private static final PREVIOUS_VERSION:Ljava/lang/String; = "3.1"

.field private static final READ_UNIT:I = 0x1000

.field public static final STATUS_ERROR:I = 0x3

.field public static final STATUS_GET_CONFIRM:I = 0x1

.field public static final STATUS_PROGRESS:I = 0x2

.field public static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DrmDldClient"

.field private static cachedUA:Ljava/lang/String;

.field private static sLocale:Ljava/util/Locale;

.field private static sLockForLocaleSettings:Ljava/lang/Object;


# instance fields
.field private final HTTP_TIMEOUT:I

.field private context:Landroid/content/Context;

.field private errorCode:I

.field private failInfo:Lcom/lge/lgdrm/DrmDldClient$FailInfo;

.field private filename:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private interrupted:Z

.field private mimeType:Ljava/lang/String;

.field private nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

.field private objSession:Lcom/lge/lgdrm/DrmObjectSession;

.field private userAgent:Ljava/lang/String;

.field private userConfirm:I


# direct methods
.method public constructor <init>(Lcom/lge/lgdrm/DrmDldRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 8
    .param p1, "request"    # Lcom/lge/lgdrm/DrmDldRequest;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 47
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 57
    const/16 v0, 0x1e

    iput v0, p0, Lcom/lge/lgdrm/DrmDldClient;->HTTP_TIMEOUT:I

    .line 71
    iput v1, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    .line 171
    iput-object p1, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 172
    iput-object p2, p0, Lcom/lge/lgdrm/DrmDldClient;->filename:Ljava/lang/String;

    .line 173
    iput-object p3, p0, Lcom/lge/lgdrm/DrmDldClient;->mimeType:Ljava/lang/String;

    .line 174
    iput-object p4, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    .line 175
    iput-object p5, p0, Lcom/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    .line 176
    return-void
.end method

.method protected constructor <init>(Lcom/lge/lgdrm/DrmObjectSession;Lcom/lge/lgdrm/DrmDldRequest;Landroid/content/Context;)V
    .registers 6
    .param p1, "objSession"    # Lcom/lge/lgdrm/DrmObjectSession;
    .param p2, "request"    # Lcom/lge/lgdrm/DrmDldRequest;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 47
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 57
    const/16 v0, 0x1e

    iput v0, p0, Lcom/lge/lgdrm/DrmDldClient;->HTTP_TIMEOUT:I

    .line 71
    iput v1, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    .line 133
    iput-object p1, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    .line 134
    iput-object p2, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 135
    iput-object p3, p0, Lcom/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    .line 136
    return-void
.end method

.method public constructor <init>(Lcom/lge/lgdrm/DrmObjectSession;Lcom/lge/lgdrm/DrmDldRequest;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 7
    .param p1, "objSession"    # Lcom/lge/lgdrm/DrmObjectSession;
    .param p2, "request"    # Lcom/lge/lgdrm/DrmDldRequest;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 47
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 57
    const/16 v0, 0x1e

    iput v0, p0, Lcom/lge/lgdrm/DrmDldClient;->HTTP_TIMEOUT:I

    .line 71
    iput v1, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    .line 150
    iput-object p1, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    .line 151
    iput-object p2, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 152
    iput-object p3, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    .line 153
    iput-object p4, p0, Lcom/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    .line 154
    return-void
.end method

.method private checkMimeType()I
    .registers 15

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v13, 0x0

    .line 242
    iget-object v9, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iget-object v9, v9, Lcom/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    if-nez v9, :cond_12

    .line 243
    :cond_d
    invoke-direct {p0, v11, v13, v13}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    move v9, v10

    .line 323
    :goto_11
    return v9

    .line 247
    :cond_12
    iget-object v9, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iget-object v6, v9, Lcom/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    .line 248
    .local v6, "sUrl":Ljava/lang/String;
    const/4 v8, 0x0

    .line 251
    .local v8, "url":Ljava/net/URL;
    :try_start_17
    new-instance v8, Ljava/net/URL;

    .end local v8    # "url":Ljava/net/URL;
    invoke-direct {v8, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/net/MalformedURLException; {:try_start_17 .. :try_end_1c} :catch_4f

    .line 258
    .restart local v8    # "url":Ljava/net/URL;
    const/4 v1, 0x0

    .line 262
    .local v1, "conn":Ljava/net/HttpURLConnection;
    :try_start_1d
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 263
    const/16 v9, 0x7530

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 264
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 265
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 267
    const/4 v7, 0x0

    .line 268
    .local v7, "status":I
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 270
    const/16 v9, 0xc8

    if-eq v7, v9, :cond_70

    const/16 v9, 0x1f6

    if-eq v7, v9, :cond_70

    .line 271
    const/16 v9, 0x194

    if-ne v7, v9, :cond_58

    .line 272
    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v9, v11, v12}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_48} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_48} :catch_10d
    .catchall {:try_start_1d .. :try_end_48} :catchall_11f

    .line 317
    :goto_48
    if-eqz v1, :cond_4d

    .line 318
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4d
    move v9, v10

    .line 276
    goto :goto_11

    .line 252
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "status":I
    .end local v8    # "url":Ljava/net/URL;
    :catch_4f
    move-exception v2

    .line 253
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 254
    invoke-direct {p0, v11, v13, v13}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    move v9, v10

    .line 255
    goto :goto_11

    .line 274
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "status":I
    .restart local v8    # "url":Ljava/net/URL;
    :cond_58
    const/4 v9, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    :try_start_5b
    invoke-direct {p0, v9, v11, v12}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_10d
    .catchall {:try_start_5b .. :try_end_5e} :catchall_11f

    goto :goto_48

    .line 308
    .end local v7    # "status":I
    :catch_5f
    move-exception v2

    .line 309
    .local v2, "e":Ljava/io/IOException;
    :try_start_60
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 310
    const/4 v9, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v9, v11, v12}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_11f

    .line 317
    if-eqz v1, :cond_6e

    .line 318
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6e
    move v9, v10

    .line 311
    goto :goto_11

    .line 279
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v7    # "status":I
    :cond_70
    :try_start_70
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 281
    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v3, :cond_83

    .line 282
    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v9, v11, v12}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_7c} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_7c} :catch_10d
    .catchall {:try_start_70 .. :try_end_7c} :catchall_11f

    .line 317
    if-eqz v1, :cond_81

    .line 318
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_81
    move v9, v10

    .line 283
    goto :goto_11

    .line 286
    :cond_83
    :try_start_83
    const-string v9, "content-type"

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 288
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_95

    .line 289
    const-string v9, "Content-Type"

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v5, Ljava/util/List;

    .line 291
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_95
    if-nez v5, :cond_9f

    .line 292
    const-string v9, "Content-type"

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v5, Ljava/util/List;

    .line 295
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9f
    if-nez v5, :cond_af

    .line 296
    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v9, v11, v12}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_a7} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_a7} :catch_10d
    .catchall {:try_start_83 .. :try_end_a7} :catchall_11f

    .line 317
    if-eqz v1, :cond_ac

    .line 318
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ac
    move v9, v10

    .line 297
    goto/16 :goto_11

    .line 300
    :cond_af
    :try_start_af
    const-string v9, "application/vnd.oma.drm.message"

    iput-object v9, p0, Lcom/lge/lgdrm/DrmDldClient;->mimeType:Ljava/lang/String;

    .line 302
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b4
    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b7} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b7} :catch_10d
    .catchall {:try_start_af .. :try_end_b7} :catchall_11f

    move-result v9

    if-lt v4, v9, :cond_c6

    .line 317
    if-eqz v1, :cond_bf

    .line 318
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 322
    :cond_bf
    const/4 v9, 0x6

    invoke-direct {p0, v9, v13, v13}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    move v9, v10

    .line 323
    goto/16 :goto_11

    .line 303
    :cond_c6
    :try_start_c6
    const-string v11, "DrmDldClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v9, p0, Lcom/lge/lgdrm/DrmDldClient;->mimeType:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_ff} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_ff} :catch_10d
    .catchall {:try_start_c6 .. :try_end_ff} :catchall_11f

    move-result v9

    if-eqz v9, :cond_10a

    .line 317
    if-eqz v1, :cond_107

    .line 318
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 305
    :cond_107
    const/4 v9, 0x0

    goto/16 :goto_11

    .line 302
    :cond_10a
    add-int/lit8 v4, v4, 0x1

    goto :goto_b4

    .line 312
    .end local v3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "i":I
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "status":I
    :catch_10d
    move-exception v2

    .line 313
    .local v2, "e":Ljava/lang/Exception;
    :try_start_10e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 314
    const/4 v9, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v9, v11, v12}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_117
    .catchall {:try_start_10e .. :try_end_117} :catchall_11f

    .line 317
    if-eqz v1, :cond_11c

    .line 318
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11c
    move v9, v10

    .line 315
    goto/16 :goto_11

    .line 316
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_11f
    move-exception v9

    .line 317
    if-eqz v1, :cond_125

    .line 318
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 320
    :cond_125
    throw v9
.end method

.method private static convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "langCode"    # Ljava/lang/String;

    .prologue
    .line 875
    if-nez p0, :cond_4

    .line 876
    const/4 p0, 0x0

    .line 888
    .end local p0    # "langCode":Ljava/lang/String;
    :cond_3
    :goto_3
    return-object p0

    .line 878
    .restart local p0    # "langCode":Ljava/lang/String;
    :cond_4
    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 880
    const-string p0, "he"

    goto :goto_3

    .line 881
    :cond_f
    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 883
    const-string p0, "id"

    goto :goto_3

    .line 884
    :cond_1a
    const-string v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 886
    const-string p0, "yi"

    goto :goto_3
.end method

.method private declared-synchronized getCurrentUserAgent()Ljava/lang/String;
    .registers 12

    .prologue
    .line 893
    monitor-enter p0

    :try_start_1
    sget-object v5, Lcom/lge/lgdrm/DrmDldClient;->sLocale:Ljava/util/Locale;

    .line 895
    .local v5, "locale":Ljava/util/Locale;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 897
    .local v1, "buffer":Ljava/lang/StringBuffer;
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 898
    .local v8, "version":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_ac

    .line 899
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_a2

    .line 901
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 911
    :goto_1e
    const-string v9, "; "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 912
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 913
    .local v4, "language":Ljava/lang/String;
    if-eqz v4, :cond_b3

    .line 914
    invoke-static {v4}, Lcom/lge/lgdrm/DrmDldClient;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 915
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 916
    .local v2, "country":Ljava/lang/String;
    if-eqz v2, :cond_42

    .line 917
    const-string v9, "-"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 918
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 924
    .end local v2    # "country":Ljava/lang/String;
    :cond_42
    :goto_42
    const-string v9, ";"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 926
    const-string v9, "REL"

    sget-object v10, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    .line 927
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 928
    .local v7, "model":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_61

    .line 929
    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 930
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 933
    .end local v7    # "model":Ljava/lang/String;
    :cond_61
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 934
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_71

    .line 935
    const-string v9, " Build/"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 936
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 938
    :cond_71
    iget-object v9, p0, Lcom/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 939
    const v10, 0x10402e5

    .line 938
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 939
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 940
    .local v6, "mobile":Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 941
    const v10, 0x10402e4

    .line 940
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 941
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "base":Ljava/lang/String;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_9f
    .catchall {:try_start_1 .. :try_end_9f} :catchall_a9

    move-result-object v9

    monitor-exit p0

    return-object v9

    .line 905
    .end local v0    # "base":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "language":Ljava/lang/String;
    .end local v6    # "mobile":Ljava/lang/String;
    :cond_a2
    :try_start_a2
    const-string v9, "3.1"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_a7
    .catchall {:try_start_a2 .. :try_end_a7} :catchall_a9

    goto/16 :goto_1e

    .line 893
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v5    # "locale":Ljava/util/Locale;
    .end local v8    # "version":Ljava/lang/String;
    :catchall_a9
    move-exception v9

    monitor-exit p0

    throw v9

    .line 909
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    .restart local v5    # "locale":Ljava/util/Locale;
    .restart local v8    # "version":Ljava/lang/String;
    :cond_ac
    :try_start_ac
    const-string v9, "1.0"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1e

    .line 922
    .restart local v4    # "language":Ljava/lang/String;
    :cond_b3
    const-string v9, "en"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_b8
    .catchall {:try_start_ac .. :try_end_b8} :catchall_a9

    goto :goto_42
.end method

.method private getSOAPActionHeader(I)Ljava/lang/String;
    .registers 4
    .param p1, "requestType"    # I

    .prologue
    .line 954
    const/4 v0, 0x0

    .line 956
    .local v0, "retVal":Ljava/lang/String;
    const/4 v1, 0x4

    if-ne p1, v1, :cond_7

    .line 957
    const-string v0, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"

    .line 970
    :cond_6
    :goto_6
    return-object v0

    .line 958
    :cond_7
    const/4 v1, 0x5

    if-ne p1, v1, :cond_d

    .line 959
    const-string v0, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcknowledgeLicense"

    .line 960
    goto :goto_6

    :cond_d
    const/4 v1, 0x6

    if-ne p1, v1, :cond_13

    .line 961
    const-string v0, "http://schemas.microsoft.com/DRM/2007/03/protocols/JoinDomain"

    .line 962
    goto :goto_6

    :cond_13
    const/4 v1, 0x7

    if-ne p1, v1, :cond_19

    .line 963
    const-string v0, "http://schemas.microsoft.com/DRM/2007/03/protocols/LeaveDomain"

    .line 964
    goto :goto_6

    :cond_19
    const/16 v1, 0x8

    if-ne p1, v1, :cond_20

    .line 965
    const-string v0, "http://schemas.microsoft.com/DRM/2007/03/protocols/ProcessMeteringData"

    .line 966
    goto :goto_6

    :cond_20
    const/16 v1, 0x9

    if-ne p1, v1, :cond_6

    .line 967
    const-string v0, "http://schemas.microsoft.com/DRM/2007/03/protocols/GetMeteringCertificate"

    goto :goto_6
.end method

.method private getUserAgentString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 856
    sget-object v1, Lcom/lge/lgdrm/DrmDldClient;->sLockForLocaleSettings:Ljava/lang/Object;

    if-nez v1, :cond_11

    .line 857
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/lge/lgdrm/DrmDldClient;->sLockForLocaleSettings:Ljava/lang/Object;

    .line 858
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Lcom/lge/lgdrm/DrmDldClient;->sLocale:Ljava/util/Locale;

    .line 861
    :cond_11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 862
    .local v0, "currentLocale":Ljava/util/Locale;
    sget-object v1, Lcom/lge/lgdrm/DrmDldClient;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, Lcom/lge/lgdrm/DrmDldClient;->cachedUA:Ljava/lang/String;

    if-nez v1, :cond_29

    .line 863
    :cond_21
    sput-object v0, Lcom/lge/lgdrm/DrmDldClient;->sLocale:Ljava/util/Locale;

    .line 864
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lge/lgdrm/DrmDldClient;->cachedUA:Ljava/lang/String;

    .line 867
    :cond_29
    sget-object v1, Lcom/lge/lgdrm/DrmDldClient;->cachedUA:Ljava/lang/String;

    return-object v1
.end method

.method private httpTransaction(Lcom/lge/lgdrm/DrmDldRequest;)I
    .registers 23
    .param p1, "request"    # Lcom/lge/lgdrm/DrmDldRequest;

    .prologue
    .line 335
    const/16 v16, 0x0

    .line 336
    .local v16, "url":Ljava/net/URL;
    const/4 v6, 0x0

    .line 337
    .local v6, "content":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 338
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/4 v13, -0x1

    .line 341
    .local v13, "retVal":I
    :try_start_5
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_10} :catch_6b

    .line 349
    .end local v16    # "url":Ljava/net/URL;
    .local v17, "url":Ljava/net/URL;
    :try_start_10
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 350
    const/16 v18, 0x7530

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 351
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 353
    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/lgdrm/DrmDldRequest;->httpMethod:I

    move/from16 v18, v0

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_83

    .line 355
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 356
    const-string v18, "GET"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 364
    :goto_41
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1}, Lcom/lge/lgdrm/DrmDldClient;->setHttpHeader(Ljava/net/HttpURLConnection;Lcom/lge/lgdrm/DrmDldRequest;)I

    move-result v18

    if-eqz v18, :cond_e0

    .line 366
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/net/ProtocolException; {:try_start_10 .. :try_end_5c} :catch_99
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_5c} :catch_4b3
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_5c} :catch_4fc
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_5c} :catch_53e
    .catchall {:try_start_10 .. :try_end_5c} :catchall_580

    .line 507
    if-eqz v6, :cond_61

    .line 509
    :try_start_5e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_c4
    .catchall {:try_start_5e .. :try_end_61} :catchall_d9

    .line 516
    :cond_61
    if-eqz v5, :cond_66

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 367
    :cond_66
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .line 522
    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    :goto_6a
    return v18

    .line 342
    :catch_6b
    move-exception v9

    .line 343
    .local v9, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v9}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 344
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 345
    const/16 v18, -0x1

    goto :goto_6a

    .line 359
    .end local v9    # "e":Ljava/net/MalformedURLException;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :cond_83
    const/16 v18, 0x1

    :try_start_85
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 360
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 361
    const-string v18, "POST"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/net/ProtocolException; {:try_start_85 .. :try_end_98} :catch_99
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_98} :catch_4b3
    .catch Ljava/lang/IllegalStateException; {:try_start_85 .. :try_end_98} :catch_4fc
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_98} :catch_53e
    .catchall {:try_start_85 .. :try_end_98} :catchall_580

    goto :goto_41

    .line 487
    :catch_99
    move-exception v9

    .line 488
    .local v9, "e":Ljava/net/ProtocolException;
    :try_start_9a
    invoke-virtual {v9}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 489
    const-string v18, "DrmDldClient"

    const-string v19, "Protocol Error."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_b5
    .catchall {:try_start_9a .. :try_end_b5} :catchall_580

    .line 507
    if-eqz v6, :cond_ba

    .line 509
    :try_start_b7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_496
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_4ac

    .line 516
    :cond_ba
    if-eqz v5, :cond_bf

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 491
    :cond_bf
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto :goto_6a

    .line 511
    .end local v9    # "e":Ljava/net/ProtocolException;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catch_c4
    move-exception v9

    .line 512
    .local v9, "e":Ljava/io/IOException;
    :try_start_c5
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 513
    const-string v18, "DrmDldClient"

    const-string v19, "IOException occured when closing the input stream."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cf
    .catchall {:try_start_c5 .. :try_end_cf} :catchall_d9

    .line 516
    if-eqz v5, :cond_d4

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 514
    :cond_d4
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto :goto_6a

    .line 515
    .end local v9    # "e":Ljava/io/IOException;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catchall_d9
    move-exception v18

    .line 516
    if-eqz v5, :cond_df

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 519
    :cond_df
    throw v18

    .line 370
    :cond_e0
    :try_start_e0
    invoke-direct/range {p0 .. p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v18

    if-eqz v18, :cond_124

    .line 371
    const/16 v18, 0x7

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_f7
    .catch Ljava/net/ProtocolException; {:try_start_e0 .. :try_end_f7} :catch_99
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_f7} :catch_4b3
    .catch Ljava/lang/IllegalStateException; {:try_start_e0 .. :try_end_f7} :catch_4fc
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_f7} :catch_53e
    .catchall {:try_start_e0 .. :try_end_f7} :catchall_580

    .line 507
    if-eqz v6, :cond_fc

    .line 509
    :try_start_f9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_107
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_11d

    .line 516
    :cond_fc
    if-eqz v5, :cond_101

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 372
    :cond_101
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 511
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catch_107
    move-exception v9

    .line 512
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_108
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 513
    const-string v18, "DrmDldClient"

    const-string v19, "IOException occured when closing the input stream."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_112
    .catchall {:try_start_108 .. :try_end_112} :catchall_11d

    .line 516
    if-eqz v5, :cond_117

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 514
    :cond_117
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 515
    .end local v9    # "e":Ljava/io/IOException;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catchall_11d
    move-exception v18

    .line 516
    if-eqz v5, :cond_123

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 519
    :cond_123
    throw v18

    .line 376
    :cond_124
    :try_start_124
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v18

    const-string v19, "POST"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_142

    .line 377
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    .line 378
    .local v12, "out":Ljava/io/OutputStream;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldRequest;->data:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/io/OutputStream;->write([B)V

    .line 379
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 383
    .end local v12    # "out":Ljava/io/OutputStream;
    :cond_142
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    .line 384
    .local v14, "status":I
    const-string v18, "DrmDldClient"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "httpTransaction() : Status code + "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    sparse-switch v14, :sswitch_data_5c6

    .line 412
    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_170
    .catch Ljava/net/ProtocolException; {:try_start_124 .. :try_end_170} :catch_99
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_170} :catch_4b3
    .catch Ljava/lang/IllegalStateException; {:try_start_124 .. :try_end_170} :catch_4fc
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_170} :catch_53e
    .catchall {:try_start_124 .. :try_end_170} :catchall_580

    .line 507
    if-eqz v6, :cond_175

    .line 509
    :try_start_172
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_175
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_175} :catch_231
    .catchall {:try_start_172 .. :try_end_175} :catchall_247

    .line 516
    :cond_175
    if-eqz v5, :cond_17a

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 413
    :cond_17a
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 395
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :sswitch_180
    :try_start_180
    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1b5

    .line 417
    :sswitch_18e
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    .line 419
    .local v10, "hdr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v10, :cond_26b

    .line 420
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1a5
    .catch Ljava/net/ProtocolException; {:try_start_180 .. :try_end_1a5} :catch_99
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_1a5} :catch_4b3
    .catch Ljava/lang/IllegalStateException; {:try_start_180 .. :try_end_1a5} :catch_4fc
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_1a5} :catch_53e
    .catchall {:try_start_180 .. :try_end_1a5} :catchall_580

    .line 507
    if-eqz v6, :cond_1aa

    .line 509
    :try_start_1a7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1aa
    .catch Ljava/io/IOException; {:try_start_1a7 .. :try_end_1aa} :catch_24e
    .catchall {:try_start_1a7 .. :try_end_1aa} :catchall_264

    .line 516
    :cond_1aa
    if-eqz v5, :cond_1af

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 421
    :cond_1af
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 402
    .end local v10    # "hdr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :cond_1b5
    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    :try_start_1bb
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1c6
    .catch Ljava/net/ProtocolException; {:try_start_1bb .. :try_end_1c6} :catch_99
    .catch Ljava/io/IOException; {:try_start_1bb .. :try_end_1c6} :catch_4b3
    .catch Ljava/lang/IllegalStateException; {:try_start_1bb .. :try_end_1c6} :catch_4fc
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1c6} :catch_53e
    .catchall {:try_start_1bb .. :try_end_1c6} :catchall_580

    .line 507
    if-eqz v6, :cond_1cb

    .line 509
    :try_start_1c8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1cb
    .catch Ljava/io/IOException; {:try_start_1c8 .. :try_end_1cb} :catch_1d6
    .catchall {:try_start_1c8 .. :try_end_1cb} :catchall_1ec

    .line 516
    :cond_1cb
    if-eqz v5, :cond_1d0

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 403
    :cond_1d0
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 511
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catch_1d6
    move-exception v9

    .line 512
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_1d7
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 513
    const-string v18, "DrmDldClient"

    const-string v19, "IOException occured when closing the input stream."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e1
    .catchall {:try_start_1d7 .. :try_end_1e1} :catchall_1ec

    .line 516
    if-eqz v5, :cond_1e6

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 514
    :cond_1e6
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 515
    .end local v9    # "e":Ljava/io/IOException;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catchall_1ec
    move-exception v18

    .line 516
    if-eqz v5, :cond_1f2

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 519
    :cond_1f2
    throw v18

    .line 407
    :sswitch_1f3
    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    :try_start_1f9
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_204
    .catch Ljava/net/ProtocolException; {:try_start_1f9 .. :try_end_204} :catch_99
    .catch Ljava/io/IOException; {:try_start_1f9 .. :try_end_204} :catch_4b3
    .catch Ljava/lang/IllegalStateException; {:try_start_1f9 .. :try_end_204} :catch_4fc
    .catch Ljava/lang/Exception; {:try_start_1f9 .. :try_end_204} :catch_53e
    .catchall {:try_start_1f9 .. :try_end_204} :catchall_580

    .line 507
    if-eqz v6, :cond_209

    .line 509
    :try_start_206
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_209
    .catch Ljava/io/IOException; {:try_start_206 .. :try_end_209} :catch_214
    .catchall {:try_start_206 .. :try_end_209} :catchall_22a

    .line 516
    :cond_209
    if-eqz v5, :cond_20e

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 408
    :cond_20e
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 511
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catch_214
    move-exception v9

    .line 512
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_215
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 513
    const-string v18, "DrmDldClient"

    const-string v19, "IOException occured when closing the input stream."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21f
    .catchall {:try_start_215 .. :try_end_21f} :catchall_22a

    .line 516
    if-eqz v5, :cond_224

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 514
    :cond_224
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 515
    .end local v9    # "e":Ljava/io/IOException;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catchall_22a
    move-exception v18

    .line 516
    if-eqz v5, :cond_230

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 519
    :cond_230
    throw v18

    .line 511
    :catch_231
    move-exception v9

    .line 512
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_232
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 513
    const-string v18, "DrmDldClient"

    const-string v19, "IOException occured when closing the input stream."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23c
    .catchall {:try_start_232 .. :try_end_23c} :catchall_247

    .line 516
    if-eqz v5, :cond_241

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 514
    :cond_241
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 515
    .end local v9    # "e":Ljava/io/IOException;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catchall_247
    move-exception v18

    .line 516
    if-eqz v5, :cond_24d

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 519
    :cond_24d
    throw v18

    .line 511
    .restart local v10    # "hdr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :catch_24e
    move-exception v9

    .line 512
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_24f
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 513
    const-string v18, "DrmDldClient"

    const-string v19, "IOException occured when closing the input stream."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_259
    .catchall {:try_start_24f .. :try_end_259} :catchall_264

    .line 516
    if-eqz v5, :cond_25e

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 514
    :cond_25e
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 515
    .end local v9    # "e":Ljava/io/IOException;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catchall_264
    move-exception v18

    .line 516
    if-eqz v5, :cond_26a

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 519
    :cond_26a
    throw v18

    .line 425
    :cond_26b
    :try_start_26b
    const-string v18, "content-type"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 426
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 428
    .local v8, "contentType":Ljava/lang/String;
    if-nez v11, :cond_282

    .line 429
    const-string v18, "Content-Type"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v11, Ljava/util/List;

    .line 431
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_282
    if-nez v11, :cond_28e

    .line 432
    const-string v18, "Content-type"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v11, Ljava/util/List;

    .line 435
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_28e
    if-nez v11, :cond_2ce

    .line 436
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2a1
    .catch Ljava/net/ProtocolException; {:try_start_26b .. :try_end_2a1} :catch_99
    .catch Ljava/io/IOException; {:try_start_26b .. :try_end_2a1} :catch_4b3
    .catch Ljava/lang/IllegalStateException; {:try_start_26b .. :try_end_2a1} :catch_4fc
    .catch Ljava/lang/Exception; {:try_start_26b .. :try_end_2a1} :catch_53e
    .catchall {:try_start_26b .. :try_end_2a1} :catchall_580

    .line 507
    if-eqz v6, :cond_2a6

    .line 509
    :try_start_2a3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2a6
    .catch Ljava/io/IOException; {:try_start_2a3 .. :try_end_2a6} :catch_2b1
    .catchall {:try_start_2a3 .. :try_end_2a6} :catchall_2c7

    .line 516
    :cond_2a6
    if-eqz v5, :cond_2ab

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 437
    :cond_2ab
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 511
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catch_2b1
    move-exception v9

    .line 512
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_2b2
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 513
    const-string v18, "DrmDldClient"

    const-string v19, "IOException occured when closing the input stream."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2bc
    .catchall {:try_start_2b2 .. :try_end_2bc} :catchall_2c7

    .line 516
    if-eqz v5, :cond_2c1

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 514
    :cond_2c1
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 515
    .end local v9    # "e":Ljava/io/IOException;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catchall_2c7
    move-exception v18

    .line 516
    if-eqz v5, :cond_2cd

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 519
    :cond_2cd
    throw v18

    .line 440
    :cond_2ce
    const/16 v18, 0x0

    :try_start_2d0
    move/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "contentType":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 441
    .restart local v8    # "contentType":Ljava/lang/String;
    const-string v18, "DrmDldClient"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "contentType#1: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string v18, "[;]"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 445
    .local v15, "subs":[Ljava/lang/String;
    if-nez v15, :cond_336

    .line 446
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_309
    .catch Ljava/net/ProtocolException; {:try_start_2d0 .. :try_end_309} :catch_99
    .catch Ljava/io/IOException; {:try_start_2d0 .. :try_end_309} :catch_4b3
    .catch Ljava/lang/IllegalStateException; {:try_start_2d0 .. :try_end_309} :catch_4fc
    .catch Ljava/lang/Exception; {:try_start_2d0 .. :try_end_309} :catch_53e
    .catchall {:try_start_2d0 .. :try_end_309} :catchall_580

    .line 507
    if-eqz v6, :cond_30e

    .line 509
    :try_start_30b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_30e
    .catch Ljava/io/IOException; {:try_start_30b .. :try_end_30e} :catch_319
    .catchall {:try_start_30b .. :try_end_30e} :catchall_32f

    .line 516
    :cond_30e
    if-eqz v5, :cond_313

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 447
    :cond_313
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 511
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catch_319
    move-exception v9

    .line 512
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_31a
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 513
    const-string v18, "DrmDldClient"

    const-string v19, "IOException occured when closing the input stream."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_324
    .catchall {:try_start_31a .. :try_end_324} :catchall_32f

    .line 516
    if-eqz v5, :cond_329

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 514
    :cond_329
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 515
    .end local v9    # "e":Ljava/io/IOException;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catchall_32f
    move-exception v18

    .line 516
    if-eqz v5, :cond_335

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 519
    :cond_335
    throw v18

    .line 449
    :cond_336
    const/16 v18, 0x0

    :try_start_338
    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 451
    const-string v18, "DrmDldClient"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "contentType#2: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-direct/range {p0 .. p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v18

    if-eqz v18, :cond_398

    .line 455
    const/16 v18, 0x7

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_36b
    .catch Ljava/net/ProtocolException; {:try_start_338 .. :try_end_36b} :catch_99
    .catch Ljava/io/IOException; {:try_start_338 .. :try_end_36b} :catch_4b3
    .catch Ljava/lang/IllegalStateException; {:try_start_338 .. :try_end_36b} :catch_4fc
    .catch Ljava/lang/Exception; {:try_start_338 .. :try_end_36b} :catch_53e
    .catchall {:try_start_338 .. :try_end_36b} :catchall_580

    .line 507
    if-eqz v6, :cond_370

    .line 509
    :try_start_36d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_370
    .catch Ljava/io/IOException; {:try_start_36d .. :try_end_370} :catch_37b
    .catchall {:try_start_36d .. :try_end_370} :catchall_391

    .line 516
    :cond_370
    if-eqz v5, :cond_375

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 456
    :cond_375
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 511
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catch_37b
    move-exception v9

    .line 512
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_37c
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 513
    const-string v18, "DrmDldClient"

    const-string v19, "IOException occured when closing the input stream."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_386
    .catchall {:try_start_37c .. :try_end_386} :catchall_391

    .line 516
    if-eqz v5, :cond_38b

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 514
    :cond_38b
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 515
    .end local v9    # "e":Ljava/io/IOException;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catchall_391
    move-exception v18

    .line 516
    if-eqz v5, :cond_397

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 519
    :cond_397
    throw v18

    .line 459
    :cond_398
    :try_start_398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    move-object/from16 v18, v0

    if-nez v18, :cond_401

    .line 461
    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/lge/lgdrm/DrmObjectSession;->newInstance(ILandroid/content/Context;I)Lcom/lge/lgdrm/DrmObjectSession;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    move-object/from16 v18, v0

    if-nez v18, :cond_401

    .line 463
    const-string v18, "DrmDldClient"

    const-string v19, "Failed to create DRM object session"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3d4
    .catch Ljava/net/ProtocolException; {:try_start_398 .. :try_end_3d4} :catch_99
    .catch Ljava/io/IOException; {:try_start_398 .. :try_end_3d4} :catch_4b3
    .catch Ljava/lang/IllegalStateException; {:try_start_398 .. :try_end_3d4} :catch_4fc
    .catch Ljava/lang/Exception; {:try_start_398 .. :try_end_3d4} :catch_53e
    .catchall {:try_start_398 .. :try_end_3d4} :catchall_580

    .line 507
    if-eqz v6, :cond_3d9

    .line 509
    :try_start_3d6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3d9
    .catch Ljava/io/IOException; {:try_start_3d6 .. :try_end_3d9} :catch_3e4
    .catchall {:try_start_3d6 .. :try_end_3d9} :catchall_3fa

    .line 516
    :cond_3d9
    if-eqz v5, :cond_3de

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 465
    :cond_3de
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 511
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catch_3e4
    move-exception v9

    .line 512
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_3e5
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 513
    const-string v18, "DrmDldClient"

    const-string v19, "IOException occured when closing the input stream."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3ef
    .catchall {:try_start_3e5 .. :try_end_3ef} :catchall_3fa

    .line 516
    if-eqz v5, :cond_3f4

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 514
    :cond_3f4
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 515
    .end local v9    # "e":Ljava/io/IOException;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catchall_3fa
    move-exception v18

    .line 516
    if-eqz v5, :cond_400

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 519
    :cond_400
    throw v18

    .line 470
    :cond_401
    :try_start_401
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 472
    const-string v18, "gzip"

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_417

    .line 473
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v6    # "content":Ljava/io/InputStream;
    .local v7, "content":Ljava/io/InputStream;
    move-object v6, v7

    .line 476
    .end local v7    # "content":Ljava/io/InputStream;
    .restart local v6    # "content":Ljava/io/InputStream;
    :cond_417
    const/4 v4, 0x0

    .line 477
    .local v4, "attribute":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_428

    .line 478
    const/16 v4, 0x8

    .line 481
    :cond_428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldClient;->filename:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v8, v1, v4}, Lcom/lge/lgdrm/DrmObjectSession;->processInit(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_47c

    .line 482
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_44f
    .catch Ljava/net/ProtocolException; {:try_start_401 .. :try_end_44f} :catch_99
    .catch Ljava/io/IOException; {:try_start_401 .. :try_end_44f} :catch_4b3
    .catch Ljava/lang/IllegalStateException; {:try_start_401 .. :try_end_44f} :catch_4fc
    .catch Ljava/lang/Exception; {:try_start_401 .. :try_end_44f} :catch_53e
    .catchall {:try_start_401 .. :try_end_44f} :catchall_580

    .line 507
    if-eqz v6, :cond_454

    .line 509
    :try_start_451
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_454
    .catch Ljava/io/IOException; {:try_start_451 .. :try_end_454} :catch_45f
    .catchall {:try_start_451 .. :try_end_454} :catchall_475

    .line 516
    :cond_454
    if-eqz v5, :cond_459

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 483
    :cond_459
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 511
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catch_45f
    move-exception v9

    .line 512
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_460
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 513
    const-string v18, "DrmDldClient"

    const-string v19, "IOException occured when closing the input stream."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46a
    .catchall {:try_start_460 .. :try_end_46a} :catchall_475

    .line 516
    if-eqz v5, :cond_46f

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 514
    :cond_46f
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 515
    .end local v9    # "e":Ljava/io/IOException;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catchall_475
    move-exception v18

    .line 516
    if-eqz v5, :cond_47b

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 519
    :cond_47b
    throw v18

    .line 486
    :cond_47c
    const-wide/16 v18, 0x0

    :try_start_47e
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v6, v1, v2}, Lcom/lge/lgdrm/DrmDldClient;->processData(Ljava/io/InputStream;J)I
    :try_end_485
    .catch Ljava/net/ProtocolException; {:try_start_47e .. :try_end_485} :catch_99
    .catch Ljava/io/IOException; {:try_start_47e .. :try_end_485} :catch_4b3
    .catch Ljava/lang/IllegalStateException; {:try_start_47e .. :try_end_485} :catch_4fc
    .catch Ljava/lang/Exception; {:try_start_47e .. :try_end_485} :catch_53e
    .catchall {:try_start_47e .. :try_end_485} :catchall_580

    move-result v13

    .line 507
    if-eqz v6, :cond_48b

    .line 509
    :try_start_488
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_48b
    .catch Ljava/io/IOException; {:try_start_488 .. :try_end_48b} :catch_5a9
    .catchall {:try_start_488 .. :try_end_48b} :catchall_5bf

    .line 516
    :cond_48b
    if-eqz v5, :cond_490

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_490
    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    move/from16 v18, v13

    .line 522
    goto/16 :goto_6a

    .line 511
    .end local v4    # "attribute":I
    .end local v8    # "contentType":Ljava/lang/String;
    .end local v10    # "hdr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "status":I
    .end local v15    # "subs":[Ljava/lang/String;
    .end local v16    # "url":Ljava/net/URL;
    .local v9, "e":Ljava/net/ProtocolException;
    .restart local v17    # "url":Ljava/net/URL;
    :catch_496
    move-exception v9

    .line 512
    .local v9, "e":Ljava/io/IOException;
    :try_start_497
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 513
    const-string v18, "DrmDldClient"

    const-string v19, "IOException occured when closing the input stream."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a1
    .catchall {:try_start_497 .. :try_end_4a1} :catchall_4ac

    .line 516
    if-eqz v5, :cond_4a6

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 514
    :cond_4a6
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 515
    .end local v9    # "e":Ljava/io/IOException;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catchall_4ac
    move-exception v18

    .line 516
    if-eqz v5, :cond_4b2

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 519
    :cond_4b2
    throw v18

    .line 492
    :catch_4b3
    move-exception v9

    .line 493
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_4b4
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 494
    const-string v18, "DrmDldClient"

    const-string v19, "Unknown Network Error/ Proceed to retry scheme>>"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4cf
    .catchall {:try_start_4b4 .. :try_end_4cf} :catchall_580

    .line 507
    if-eqz v6, :cond_4d4

    .line 509
    :try_start_4d1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4d4
    .catch Ljava/io/IOException; {:try_start_4d1 .. :try_end_4d4} :catch_4df
    .catchall {:try_start_4d1 .. :try_end_4d4} :catchall_4f5

    .line 516
    :cond_4d4
    if-eqz v5, :cond_4d9

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 496
    :cond_4d9
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 511
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catch_4df
    move-exception v9

    .line 512
    :try_start_4e0
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 513
    const-string v18, "DrmDldClient"

    const-string v19, "IOException occured when closing the input stream."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4ea
    .catchall {:try_start_4e0 .. :try_end_4ea} :catchall_4f5

    .line 516
    if-eqz v5, :cond_4ef

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 514
    :cond_4ef
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 515
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catchall_4f5
    move-exception v18

    .line 516
    if-eqz v5, :cond_4fb

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 519
    :cond_4fb
    throw v18

    .line 497
    .end local v9    # "e":Ljava/io/IOException;
    :catch_4fc
    move-exception v9

    .line 498
    .local v9, "e":Ljava/lang/IllegalStateException;
    :try_start_4fd
    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 499
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_511
    .catchall {:try_start_4fd .. :try_end_511} :catchall_580

    .line 507
    if-eqz v6, :cond_516

    .line 509
    :try_start_513
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_516
    .catch Ljava/io/IOException; {:try_start_513 .. :try_end_516} :catch_521
    .catchall {:try_start_513 .. :try_end_516} :catchall_537

    .line 516
    :cond_516
    if-eqz v5, :cond_51b

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 500
    :cond_51b
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 511
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catch_521
    move-exception v9

    .line 512
    .local v9, "e":Ljava/io/IOException;
    :try_start_522
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 513
    const-string v18, "DrmDldClient"

    const-string v19, "IOException occured when closing the input stream."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52c
    .catchall {:try_start_522 .. :try_end_52c} :catchall_537

    .line 516
    if-eqz v5, :cond_531

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 514
    :cond_531
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 515
    .end local v9    # "e":Ljava/io/IOException;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catchall_537
    move-exception v18

    .line 516
    if-eqz v5, :cond_53d

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 519
    :cond_53d
    throw v18

    .line 501
    :catch_53e
    move-exception v9

    .line 502
    .local v9, "e":Ljava/lang/Exception;
    :try_start_53f
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 503
    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_553
    .catchall {:try_start_53f .. :try_end_553} :catchall_580

    .line 507
    if-eqz v6, :cond_558

    .line 509
    :try_start_555
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_558
    .catch Ljava/io/IOException; {:try_start_555 .. :try_end_558} :catch_563
    .catchall {:try_start_555 .. :try_end_558} :catchall_579

    .line 516
    :cond_558
    if-eqz v5, :cond_55d

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 504
    :cond_55d
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 511
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catch_563
    move-exception v9

    .line 512
    .local v9, "e":Ljava/io/IOException;
    :try_start_564
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 513
    const-string v18, "DrmDldClient"

    const-string v19, "IOException occured when closing the input stream."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56e
    .catchall {:try_start_564 .. :try_end_56e} :catchall_579

    .line 516
    if-eqz v5, :cond_573

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 514
    :cond_573
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 515
    .end local v9    # "e":Ljava/io/IOException;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catchall_579
    move-exception v18

    .line 516
    if-eqz v5, :cond_57f

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 519
    :cond_57f
    throw v18

    .line 505
    :catchall_580
    move-exception v18

    .line 507
    if-eqz v6, :cond_586

    .line 509
    :try_start_583
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_586
    .catch Ljava/io/IOException; {:try_start_583 .. :try_end_586} :catch_58c
    .catchall {:try_start_583 .. :try_end_586} :catchall_5a2

    .line 516
    :cond_586
    if-eqz v5, :cond_58b

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 520
    :cond_58b
    throw v18

    .line 511
    :catch_58c
    move-exception v9

    .line 512
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_58d
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 513
    const-string v18, "DrmDldClient"

    const-string v19, "IOException occured when closing the input stream."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_597
    .catchall {:try_start_58d .. :try_end_597} :catchall_5a2

    .line 516
    if-eqz v5, :cond_59c

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 514
    :cond_59c
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 515
    .end local v9    # "e":Ljava/io/IOException;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catchall_5a2
    move-exception v18

    .line 516
    if-eqz v5, :cond_5a8

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 519
    :cond_5a8
    throw v18

    .line 511
    .restart local v4    # "attribute":I
    .restart local v8    # "contentType":Ljava/lang/String;
    .restart local v10    # "hdr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "status":I
    .restart local v15    # "subs":[Ljava/lang/String;
    :catch_5a9
    move-exception v9

    .line 512
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_5aa
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 513
    const-string v18, "DrmDldClient"

    const-string v19, "IOException occured when closing the input stream."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b4
    .catchall {:try_start_5aa .. :try_end_5b4} :catchall_5bf

    .line 516
    if-eqz v5, :cond_5b9

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 514
    :cond_5b9
    const/16 v18, -0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_6a

    .line 515
    .end local v9    # "e":Ljava/io/IOException;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catchall_5bf
    move-exception v18

    .line 516
    if-eqz v5, :cond_5c5

    .line 517
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 519
    :cond_5c5
    throw v18

    .line 386
    :sswitch_data_5c6
    .sparse-switch
        0xc8 -> :sswitch_18e
        0x194 -> :sswitch_1f3
        0x1f4 -> :sswitch_180
        0x1f6 -> :sswitch_18e
    .end sparse-switch
.end method

.method private isInterrupt()Z
    .registers 3

    .prologue
    .line 751
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    if-eqz v0, :cond_17

    .line 752
    :cond_e
    const-string v0, "DrmDldClient"

    const-string v1, "Thread was interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v0, 0x1

    .line 755
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private processData(Ljava/io/InputStream;J)I
    .registers 14
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # J

    .prologue
    .line 587
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 590
    .local v0, "data":[B
    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-nez v6, :cond_2f

    .line 593
    :cond_a
    :try_start_a
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 594
    .local v3, "readLen":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1f

    .line 625
    .end local v3    # "readLen":I
    :cond_11
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v6

    if-eqz v6, :cond_56

    .line 626
    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 627
    const/4 v6, -0x1

    .line 701
    :goto_1e
    return v6

    .line 599
    .restart local v3    # "readLen":I
    :cond_1f
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6, v0, v3}, Lcom/lge/lgdrm/DrmObjectSession;->processUpdate([BI)I

    move-result v6

    if-eqz v6, :cond_a

    .line 601
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 602
    const/4 v6, -0x1

    goto :goto_1e

    .line 606
    .end local v3    # "readLen":I
    :cond_2f
    const/4 v2, 0x0

    .line 607
    .local v2, "index":I
    :goto_30
    int-to-long v6, v2

    cmp-long v6, v6, p2

    if-gez v6, :cond_11

    .line 608
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 609
    .restart local v3    # "readLen":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_44

    .line 611
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 612
    const/4 v6, -0x1

    goto :goto_1e

    .line 615
    :cond_44
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6, v0, v3}, Lcom/lge/lgdrm/DrmObjectSession;->processUpdate([BI)I

    move-result v6

    if-eqz v6, :cond_54

    .line 617
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 618
    const/4 v6, -0x1

    goto :goto_1e

    .line 620
    :cond_54
    add-int/2addr v2, v3

    goto :goto_30

    .line 630
    .end local v2    # "index":I
    .end local v3    # "readLen":I
    :cond_56
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6}, Lcom/lge/lgdrm/DrmObjectSession;->processStatus()I

    move-result v4

    .line 631
    .local v4, "retVal":I
    const/4 v5, 0x2

    .line 632
    .local v5, "userResponse":I
    packed-switch v4, :pswitch_data_fe

    .line 662
    :goto_60
    :pswitch_60
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    move-result v4

    .line 663
    const/4 v6, -0x1

    if-ne v4, v6, :cond_f0

    .line 664
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6}, Lcom/lge/lgdrm/DrmObjectSession;->getFailReason()I

    move-result v6

    packed-switch v6, :pswitch_data_10c

    .line 682
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 685
    :goto_79
    const/4 v6, -0x1

    goto :goto_1e

    .line 634
    :pswitch_7b
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 635
    const/4 v6, -0x1

    goto :goto_1e

    .line 639
    :pswitch_83
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    if-eqz v6, :cond_c6

    .line 641
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V

    .line 643
    :goto_8b
    iget v6, p0, Lcom/lge/lgdrm/DrmDldClient;->userConfirm:I

    if-eqz v6, :cond_a1

    .line 648
    iget v6, p0, Lcom/lge/lgdrm/DrmDldClient;->userConfirm:I

    if-eqz v6, :cond_98

    iget v6, p0, Lcom/lge/lgdrm/DrmDldClient;->userConfirm:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b4

    .line 650
    :cond_98
    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 651
    const/4 v6, -0x1

    goto/16 :goto_1e

    .line 646
    :cond_a1
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a6
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a6} :catch_a7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a6} :catch_b9

    goto :goto_8b

    .line 691
    .end local v4    # "retVal":I
    .end local v5    # "userResponse":I
    :catch_a7
    move-exception v6

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 692
    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 693
    const/4 v6, -0x1

    goto/16 :goto_1e

    .line 654
    .restart local v4    # "retVal":I
    .restart local v5    # "userResponse":I
    :cond_b4
    const/4 v6, 0x2

    :try_start_b5
    invoke-direct {p0, v6}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V
    :try_end_b8
    .catch Ljava/lang/InterruptedException; {:try_start_b5 .. :try_end_b8} :catch_a7
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_b9

    goto :goto_60

    .line 694
    .end local v4    # "retVal":I
    .end local v5    # "userResponse":I
    :catch_b9
    move-exception v1

    .line 695
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 697
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 698
    const/4 v6, -0x1

    goto/16 :goto_1e

    .line 657
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "retVal":I
    .restart local v5    # "userResponse":I
    :cond_c6
    const/4 v5, 0x1

    goto :goto_60

    .line 666
    :pswitch_c8
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_cb
    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_79

    .line 671
    :pswitch_cf
    const/4 v6, 0x1

    .line 672
    iget-object v7, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/lge/lgdrm/DrmObjectSession;->getFailInfo(I)Ljava/lang/String;

    move-result-object v7

    .line 673
    iget-object v8, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/lge/lgdrm/DrmObjectSession;->getFailInfo(I)Ljava/lang/String;

    move-result-object v8

    .line 671
    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_79

    .line 676
    :pswitch_e2
    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_79

    .line 679
    :pswitch_e9
    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_79

    .line 686
    :cond_f0
    const/4 v6, 0x4

    if-ne v4, v6, :cond_fb

    .line 688
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6}, Lcom/lge/lgdrm/DrmObjectSession;->getNextRequest()Lcom/lge/lgdrm/DrmDldRequest;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;
    :try_end_fb
    .catch Ljava/lang/InterruptedException; {:try_start_cb .. :try_end_fb} :catch_a7
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_fb} :catch_b9

    .line 701
    :cond_fb
    const/4 v6, 0x0

    goto/16 :goto_1e

    .line 632
    :pswitch_data_fe
    .packed-switch -0x1
        :pswitch_7b
        :pswitch_60
        :pswitch_60
        :pswitch_83
        :pswitch_83
    .end packed-switch

    .line 664
    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_c8
        :pswitch_cf
        :pswitch_cf
        :pswitch_e2
        :pswitch_cf
        :pswitch_e9
    .end packed-switch
.end method

.method private processRequest()I
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 209
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V

    .line 212
    iget-object v3, p0, Lcom/lge/lgdrm/DrmDldClient;->mimeType:Ljava/lang/String;

    if-eqz v3, :cond_12

    .line 213
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->checkMimeType()I

    move-result v3

    if-eqz v3, :cond_12

    .line 232
    :goto_11
    return v1

    .line 218
    :cond_12
    const/4 v0, 0x0

    .line 219
    .local v0, "currentRequest":Lcom/lge/lgdrm/DrmDldRequest;
    :cond_13
    iget-object v3, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    if-nez v3, :cond_24

    .line 228
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    if-eqz v1, :cond_22

    .line 229
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v1, v2}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 230
    iput-object v4, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    :cond_22
    move v1, v2

    .line 232
    goto :goto_11

    .line 220
    :cond_24
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 221
    iput-object v4, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 223
    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmDldClient;->httpTransaction(Lcom/lge/lgdrm/DrmDldRequest;)I

    move-result v3

    if-ne v1, v3, :cond_13

    goto :goto_11
.end method

.method private sendStatus(I)V
    .registers 8
    .param p1, "processStatus"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 768
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    if-nez v1, :cond_9

    .line 799
    :cond_8
    :goto_8
    return-void

    .line 773
    :cond_9
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v1

    if-nez v1, :cond_8

    .line 777
    if-nez p1, :cond_17

    .line 778
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_8

    .line 779
    :cond_17
    if-ne p1, v3, :cond_1f

    .line 780
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_8

    .line 781
    :cond_1f
    if-ne p1, v2, :cond_27

    .line 782
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_8

    .line 783
    :cond_27
    if-ne p1, v5, :cond_8

    .line 784
    iget v1, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    if-eqz v1, :cond_8

    .line 788
    const/4 v0, 0x0

    .line 789
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->failInfo:Lcom/lge/lgdrm/DrmDldClient$FailInfo;

    if-eqz v1, :cond_42

    .line 791
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    iget v2, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    iget-object v3, p0, Lcom/lge/lgdrm/DrmDldClient;->failInfo:Lcom/lge/lgdrm/DrmDldClient$FailInfo;

    invoke-virtual {v1, v5, v2, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 797
    :goto_3c
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8

    .line 793
    :cond_42
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    iget v2, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    invoke-virtual {v1, v5, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    goto :goto_3c
.end method

.method private setError(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "redirectURL"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 722
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    if-eqz v0, :cond_25

    .line 723
    const-string v0, "DrmDldClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setError() : Destroy session errCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    if-ne p1, v3, :cond_2a

    .line 725
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 731
    :goto_22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    .line 734
    :cond_25
    iget v0, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    if-eqz v0, :cond_38

    .line 743
    :cond_29
    :goto_29
    return-void

    .line 726
    :cond_2a
    if-ne p1, v4, :cond_32

    .line 727
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v0, v3}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    goto :goto_22

    .line 729
    :cond_32
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v0, v4}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    goto :goto_22

    .line 739
    :cond_38
    iput p1, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    .line 740
    if-eqz p2, :cond_29

    .line 741
    new-instance v0, Lcom/lge/lgdrm/DrmDldClient$FailInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lge/lgdrm/DrmDldClient$FailInfo;-><init>(Lcom/lge/lgdrm/DrmDldClient;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->failInfo:Lcom/lge/lgdrm/DrmDldClient$FailInfo;

    goto :goto_29
.end method

.method private setHttpHeader(Ljava/net/HttpURLConnection;Lcom/lge/lgdrm/DrmDldRequest;)I
    .registers 7
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .param p2, "request"    # Lcom/lge/lgdrm/DrmDldRequest;

    .prologue
    const/4 v3, 0x1

    .line 536
    iget v1, p2, Lcom/lge/lgdrm/DrmDldRequest;->httpMethod:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3c

    .line 538
    iget v1, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    if-ne v1, v3, :cond_34

    .line 539
    const-string v1, "Accept"

    const-string v2, "application/vnd.oma.drm.roap-trigger+xml, application/vnd.oma.drm.roap-pdu+xml, multipart/related"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :goto_12
    const-string v1, "Connection"

    const-string v2, "Keep Alive, Keep-Alive"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v1, "Cache-Control"

    const-string v2, "no-cache"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v1, "Pragma"

    const-string v2, "no-cache"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget v1, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    if-ne v1, v3, :cond_32

    .line 569
    const-string v1, "DRM-Version"

    const-string v2, "2.1"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_32
    const/4 v1, 0x0

    :goto_33
    return v1

    .line 541
    :cond_34
    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 544
    :cond_3c
    const/4 v0, 0x0

    .line 547
    .local v0, "headerValue":Ljava/lang/String;
    iget v1, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    if-ne v1, v3, :cond_54

    .line 548
    const-string v1, "Accept"

    const-string v2, "application/vnd.oma.drm.roap-trigger+xml, multipart/related"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :goto_48
    iget v1, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    if-ne v1, v3, :cond_64

    .line 557
    const-string v1, "Content-Type"

    const-string v2, "application/vnd.oma.drm.roap-pdu+xml"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 549
    :cond_54
    iget v1, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    invoke-direct {p0, v1}, Lcom/lge/lgdrm/DrmDldClient;->getSOAPActionHeader(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 550
    const-string v1, "SOAPAction"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 552
    :cond_62
    const/4 v1, -0x1

    goto :goto_33

    .line 559
    :cond_64
    const-string v1, "Content-Type"

    const-string v2, "text/xml; charset=utf-8"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 181
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 182
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 186
    :cond_b
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->userAgent:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_24

    .line 188
    const-string v0, "DrmDldClient"

    const-string v1, "run() : Fail to get UAString"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x1

    invoke-direct {p0, v0, v3, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, v2}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V

    .line 199
    :goto_23
    return-void

    .line 194
    :cond_24
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->processRequest()I

    move-result v0

    if-nez v0, :cond_2f

    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V

    goto :goto_23

    .line 197
    :cond_2f
    invoke-direct {p0, v2}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V

    goto :goto_23
.end method

.method public setUserConfirm(Z)V
    .registers 3
    .param p1, "agreed"    # Z

    .prologue
    .line 808
    if-eqz p1, :cond_6

    .line 809
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/lgdrm/DrmDldClient;->userConfirm:I

    .line 813
    :goto_5
    return-void

    .line 811
    :cond_6
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/lgdrm/DrmDldClient;->userConfirm:I

    goto :goto_5
.end method
