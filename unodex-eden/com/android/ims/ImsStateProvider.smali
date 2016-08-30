.class public final Lcom/android/ims/ImsStateProvider;
.super Ljava/lang/Object;
.source "ImsStateProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsStateProvider$VoLteState;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.ims.provider.ims_state"

.field public static final COLUMN_CALL_STATE:Ljava/lang/String; = "call_state"

.field public static final COLUMN_SERVICE_STATUS:Ljava/lang/String; = "service_status"

.field public static final COLUMN_SUB_ID:Ljava/lang/String; = "sub_id"

.field public static final COLUMN_VOLTE_PROVISIONED:Ljava/lang/String; = "volte_provisioned"

.field public static final COLUMN_VT_PROVISIONED:Ljava/lang/String; = "vt_provisioned"

.field private static final DBG:Z

.field private static final DEFAULT_PHONE_ID:I = 0x0

.field private static final DEFAULT_SUB_ID:I = 0x7fffffff

.field public static final STATE_ACTIVE:I = 0x1

.field public static final STATE_INACTIVE:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 46
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    :goto_b
    sput-boolean v0, Lcom/android/ims/ImsStateProvider;->DBG:Z

    .line 48
    return-void

    .line 46
    :cond_e
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(I)I
    .registers 2

    .prologue
    .line 130
    invoke-static {p0}, Lcom/android/ims/ImsStateProvider;->getSubId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    invoke-static {p0}, Lcom/android/ims/ImsStateProvider;->selectForSubId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 15
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "columnName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .prologue
    .line 142
    if-eqz p0, :cond_4

    if-nez p1, :cond_21

    .line 143
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getInt :: cr="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsStateProvider;->loge(Ljava/lang/String;)V

    .line 172
    .end local p4    # "defaultValue":I
    :cond_20
    :goto_20
    return p4

    .line 147
    .restart local p4    # "defaultValue":I
    :cond_21
    const/4 v6, 0x0

    .line 150
    .local v6, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    :try_start_28
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 152
    if-eqz v6, :cond_89

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 153
    invoke-interface {v6, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 154
    .local v7, "index":I
    if-gez v7, :cond_6c

    move v9, p4

    .line 156
    .local v9, "value":I
    :goto_3b
    sget-boolean v0, Lcom/android/ims/ImsStateProvider;->DBG:Z

    if-eqz v0, :cond_65

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getInt :: column="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 158
    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsStateProvider;->log(Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_65} :catch_71
    .catchall {:try_start_28 .. :try_end_65} :catchall_82

    .line 167
    :cond_65
    if-eqz v6, :cond_6a

    .line 168
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6a
    move p4, v9

    .line 161
    goto :goto_20

    .line 154
    .end local v9    # "value":I
    :cond_6c
    :try_start_6c
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6f} :catch_71
    .catchall {:try_start_6c .. :try_end_6f} :catchall_82

    move-result v9

    goto :goto_3b

    .line 163
    .end local v7    # "index":I
    :catch_71
    move-exception v8

    .line 164
    .local v8, "t":Ljava/lang/Throwable;
    :try_start_72
    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsStateProvider;->loge(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7c
    .catchall {:try_start_72 .. :try_end_7c} :catchall_82

    .line 167
    if-eqz v6, :cond_20

    .line 168
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_20

    .line 166
    .end local v8    # "t":Ljava/lang/Throwable;
    :catchall_82
    move-exception v0

    .line 167
    if-eqz v6, :cond_88

    .line 168
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_88
    throw v0

    .line 167
    :cond_89
    if-eqz v6, :cond_20

    .line 168
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_20
.end method

.method private static getSubId(I)I
    .registers 3
    .param p0, "phoneId"    # I

    .prologue
    .line 131
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 133
    .local v0, "subIds":[I
    if-eqz v0, :cond_d

    array-length v1, v0

    if-lez v1, :cond_d

    .line 134
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 137
    :goto_c
    return v1

    :cond_d
    const/4 v1, -0x1

    goto :goto_c
.end method

.method public static getVoLteState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 126
    sget-object v0, Lcom/android/ims/ImsStateProvider$VoLteState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/ims/ImsStateProvider;->getInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 180
    const-string v0, "LGIMS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ImsStateProvider] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 184
    const-string v0, "LGIMS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ImsStateProvider] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method private static selectForSubId(I)Ljava/lang/String;
    .registers 5
    .param p0, "subId"    # I

    .prologue
    .line 176
    const-string v0, "%s=\'%d\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "sub_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
