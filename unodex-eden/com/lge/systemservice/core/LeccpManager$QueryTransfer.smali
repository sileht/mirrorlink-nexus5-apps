.class public Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;
.super Ljava/lang/Object;
.source "LeccpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LeccpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryTransfer"
.end annotation


# static fields
.field public static final COLUMN_BYTES_SO_FAR:Ljava/lang/String; = "bytes_so_far"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final COLUMN_DEVICE_NAME:Ljava/lang/String; = "device_name"

.field public static final COLUMN_DIRECTION:Ljava/lang/String; = "direction"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_LAST_MODIFIED_TIMESTAMP:Ljava/lang/String; = "last_modified_timestamp"

.field public static final COLUMN_LOCAL_FILE_URI:Ljava/lang/String; = "local_file_uri"

.field public static final COLUMN_MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field public static final COLUMN_REASON:Ljava/lang/String; = "reason"

.field public static final COLUMN_SERVICE_TYPE:Ljava/lang/String; = "service_type"

.field public static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_TOTAL_SIZE_BYTES:Ljava/lang/String; = "total_size"

.field public static final COLUMN_URI:Ljava/lang/String; = "uri"

.field static final CONTENT_URI:Landroid/net/Uri;

.field public static final REASON_CANCELED:I = 0x3ec

.field public static final REASON_DEVICE_NOT_FOUND:I = 0x3ed

.field public static final REASON_INSUFFICIENT_SPACE:I = 0x3eb

.field public static final REASON_INVALID_FILE:I = 0x3e9

.field public static final REASON_NETWORK:I = 0x3ea

.field public static final REASON_UNKNOWN:I = 0x3e8

.field public static final STATUS_FAILED:I = 0x4

.field public static final STATUS_PAUSED:I = 0x2

.field public static final STATUS_PENDING:I = 0x0

.field public static final STATUS_RUNNING:I = 0x1

.field public static final STATUS_SUCCESSFUL:I = 0x3


# instance fields
.field private mIds:[J

.field private mIsDescending:Z

.field private mOrderByColumn:Ljava/lang/String;

.field private mServiceTypes:[I

.field private mStatus:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2079
    const-string v0, "content://com.lge.leccp/default/history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2081
    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;->mIds:[J

    .line 2082
    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;->mStatus:[I

    .line 2083
    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;->mServiceTypes:[I

    .line 2084
    const-string v0, "last_modified_timestamp"

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;->mOrderByColumn:Ljava/lang/String;

    .line 2085
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;->mIsDescending:Z

    .line 1872
    return-void
.end method

.method static getOrderClause(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .param p0, "column"    # Ljava/lang/String;
    .param p1, "isDescending"    # Z

    .prologue
    .line 2187
    if-nez p0, :cond_4

    .line 2188
    const/4 v0, 0x0

    .line 2191
    :goto_3
    return-object v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1a

    const-string v0, " DESC"

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_1a
    const-string v0, " ASC"

    goto :goto_11
.end method

.method static getWhereClause(Ljava/lang/String;[I)Ljava/lang/String;
    .registers 6
    .param p0, "column"    # Ljava/lang/String;
    .param p1, "ids"    # [I

    .prologue
    .line 2213
    if-nez p1, :cond_4

    .line 2214
    const/4 v2, 0x0

    .line 2227
    :goto_3
    return-object v2

    .line 2217
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2218
    .local v1, "whereClause":Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v2, p1

    if-lt v0, v2, :cond_1c

    .line 2226
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 2220
    :cond_1c
    if-lez v0, :cond_23

    .line 2221
    const-string v2, "OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2223
    :cond_23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2224
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2219
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method static getWhereClause(Ljava/lang/String;[J)Ljava/lang/String;
    .registers 8
    .param p0, "column"    # Ljava/lang/String;
    .param p1, "ids"    # [J

    .prologue
    .line 2195
    if-nez p1, :cond_4

    .line 2196
    const/4 v2, 0x0

    .line 2209
    :goto_3
    return-object v2

    .line 2199
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2200
    .local v1, "whereClause":Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v2, p1

    if-lt v0, v2, :cond_1c

    .line 2208
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 2202
    :cond_1c
    if-lez v0, :cond_23

    .line 2203
    const-string v2, "OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2205
    :cond_23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2206
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v4, p1, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2201
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method


# virtual methods
.method query(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 2141
    if-nez p1, :cond_5

    move-object v1, v10

    .line 2183
    :goto_4
    return-object v1

    .line 2145
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2146
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez v0, :cond_d

    move-object v1, v10

    .line 2147
    goto :goto_4

    .line 2151
    :cond_d
    :try_start_d
    const-string v1, "_id"

    iget-object v2, p0, Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;->mIds:[J

    invoke-static {v1, v2}, Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;->getWhereClause(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v7

    .line 2152
    .local v7, "whereIds":Ljava/lang/String;
    const-string v1, "service_type"

    iget-object v2, p0, Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;->mServiceTypes:[I

    invoke-static {v1, v2}, Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;->getWhereClause(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v8

    .line 2153
    .local v8, "whereServiceTypes":Ljava/lang/String;
    const-string v1, "status"

    iget-object v2, p0, Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;->mStatus:[I

    invoke-static {v1, v2}, Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;->getWhereClause(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v9

    .line 2155
    .local v9, "whereStatus":Ljava/lang/String;
    const-string v3, ""

    .line 2156
    .local v3, "where":Ljava/lang/String;
    if-eqz v7, :cond_3a

    .line 2157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2159
    :cond_3a
    if-eqz v8, :cond_66

    .line 2160
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_55

    .line 2161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2163
    :cond_55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2165
    :cond_66
    if-eqz v9, :cond_92

    .line 2166
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_81

    .line 2167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2169
    :cond_81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2172
    :cond_92
    iget-object v1, p0, Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;->mOrderByColumn:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;->mIsDescending:Z

    invoke-static {v1, v2}, Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;->getOrderClause(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 2174
    .local v5, "order":Ljava/lang/String;
    sget-boolean v1, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v1, :cond_c6

    .line 2175
    sget-object v1, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "query where: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", order: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    :cond_c6
    sget-object v1, Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_cd} :catch_d0

    move-result-object v1

    goto/16 :goto_4

    .line 2179
    .end local v3    # "where":Ljava/lang/String;
    .end local v5    # "order":Ljava/lang/String;
    .end local v7    # "whereIds":Ljava/lang/String;
    .end local v8    # "whereServiceTypes":Ljava/lang/String;
    .end local v9    # "whereStatus":Ljava/lang/String;
    :catch_d0
    move-exception v6

    .line 2180
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v10

    .line 2183
    goto/16 :goto_4
.end method

.method public varargs setFilterById([J)Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;
    .registers 2
    .param p1, "ids"    # [J

    .prologue
    .line 2094
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;->mIds:[J

    .line 2095
    return-object p0
.end method

.method public varargs setFilterByServiceType([I)Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;
    .registers 2
    .param p1, "serviceType"    # [I

    .prologue
    .line 2120
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;->mServiceTypes:[I

    .line 2121
    return-object p0
.end method

.method public varargs setFilterByStatus([I)Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;
    .registers 2
    .param p1, "status"    # [I

    .prologue
    .line 2107
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;->mStatus:[I

    .line 2108
    return-object p0
.end method

.method public setOrder(Ljava/lang/String;Z)Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;
    .registers 3
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "isDescending"    # Z

    .prologue
    .line 2135
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;->mOrderByColumn:Ljava/lang/String;

    .line 2136
    iput-boolean p2, p0, Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;->mIsDescending:Z

    .line 2137
    return-object p0
.end method
