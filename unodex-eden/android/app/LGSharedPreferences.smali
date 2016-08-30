.class public Landroid/app/LGSharedPreferences;
.super Ljava/lang/Object;
.source "LGSharedPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;
.implements Landroid/content/SharedPreferences$Editor;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final mContent:Ljava/lang/Object;

.field private static final sSharedPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/LGSharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCrypt:Landroid/app/SettingsCrypto;

.field private final mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-string v0, "LGSharedPreferences"

    sput-object v0, Landroid/app/LGSharedPreferences;->TAG:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/LGSharedPreferences;->mContent:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    sput-object v0, Landroid/app/LGSharedPreferences;->sSharedPrefs:Ljava/util/HashMap;

    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LGSharedPreferences;->mListeners:Ljava/util/WeakHashMap;

    .line 65
    iput-object p1, p0, Landroid/app/LGSharedPreferences;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Landroid/app/LGSharedPreferences;->mName:Ljava/lang/String;

    .line 67
    iput p3, p0, Landroid/app/LGSharedPreferences;->mMode:I

    .line 68
    new-instance v0, Landroid/app/SettingsCrypto;

    invoke-direct {v0}, Landroid/app/SettingsCrypto;-><init>()V

    iput-object v0, p0, Landroid/app/LGSharedPreferences;->mCrypt:Landroid/app/SettingsCrypto;

    .line 69
    invoke-direct {p0}, Landroid/app/LGSharedPreferences;->updateDB()V

    .line 70
    return-void
.end method

.method static synthetic access$0(Landroid/app/LGSharedPreferences;Ljava/util/Map;)V
    .registers 2

    .prologue
    .line 337
    invoke-direct {p0, p1}, Landroid/app/LGSharedPreferences;->notifyListeners(Ljava/util/Map;)V

    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/LGSharedPreferences;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 83
    sget-object v2, Landroid/app/LGSharedPreferences;->sSharedPrefs:Ljava/util/HashMap;

    monitor-enter v2

    .line 84
    :try_start_3
    sget-object v1, Landroid/app/LGSharedPreferences;->sSharedPrefs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LGSharedPreferences;

    .line 85
    .local v0, "sp":Landroid/app/LGSharedPreferences;
    if-nez v0, :cond_17

    .line 86
    new-instance v0, Landroid/app/LGSharedPreferences;

    .end local v0    # "sp":Landroid/app/LGSharedPreferences;
    invoke-direct {v0, p0, p1, p2}, Landroid/app/LGSharedPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 87
    .restart local v0    # "sp":Landroid/app/LGSharedPreferences;
    sget-object v1, Landroid/app/LGSharedPreferences;->sSharedPrefs:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_17
    monitor-exit v2

    .line 90
    return-object v0

    .line 83
    .end local v0    # "sp":Landroid/app/LGSharedPreferences;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private notifyListeners(Ljava/util/Map;)V
    .registers 10
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 338
    iget-object v6, p0, Landroid/app/LGSharedPreferences;->mListeners:Ljava/util/WeakHashMap;

    if-eqz v6, :cond_c

    iget-object v6, p0, Landroid/app/LGSharedPreferences;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v6}, Ljava/util/WeakHashMap;->size()I

    move-result v6

    if-nez v6, :cond_d

    .line 365
    :cond_c
    :goto_c
    return-void

    .line 343
    :cond_d
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, p0, Landroid/app/LGSharedPreferences;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v6}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 345
    .local v5, "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 347
    .local v3, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    if-ne v6, v7, :cond_52

    .line 348
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_31
    if-ltz v1, :cond_c

    .line 349
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 350
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3d
    :goto_3d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_46

    .line 348
    add-int/lit8 v1, v1, -0x1

    goto :goto_31

    .line 350
    :cond_46
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 351
    .local v4, "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    if-eqz v4, :cond_3d

    .line 352
    invoke-interface {v4, p0, v2}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_3d

    .line 358
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :cond_52
    iget-object v0, p0, Landroid/app/LGSharedPreferences;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 359
    .local v0, "activity":Landroid/app/Activity;
    new-instance v6, Landroid/app/LGSharedPreferences$1;

    invoke-direct {v6, p0, p1}, Landroid/app/LGSharedPreferences$1;-><init>(Landroid/app/LGSharedPreferences;Ljava/util/Map;)V

    invoke-virtual {v0, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_c
.end method

.method private readFromSystemDB()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v2, 0x0

    .line 95
    .local v2, "map":Ljava/util/Map;
    const/4 v3, 0x0

    .line 97
    .local v3, "str":Ljava/lang/String;
    iget-object v5, p0, Landroid/app/LGSharedPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Landroid/app/LGSharedPreferences;->mName:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "encrypted":Ljava/lang/String;
    if-eqz v0, :cond_1d

    .line 100
    iget-object v5, p0, Landroid/app/LGSharedPreferences;->mCrypt:Landroid/app/SettingsCrypto;

    invoke-virtual {v5, v0}, Landroid/app/SettingsCrypto;->decrypt(Ljava/lang/String;)[B

    move-result-object v4

    .line 101
    .local v4, "temp":[B
    if-eqz v4, :cond_1d

    .line 102
    new-instance v3, Ljava/lang/String;

    .end local v3    # "str":Ljava/lang/String;
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 106
    .end local v4    # "temp":[B
    .restart local v3    # "str":Ljava/lang/String;
    :cond_1d
    if-eqz v3, :cond_34

    .line 107
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 108
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 109
    .local v1, "is":Ljava/io/ByteArrayInputStream;
    if-eqz v1, :cond_34

    .line 110
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v2

    .line 111
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 115
    .end local v1    # "is":Ljava/io/ByteArrayInputStream;
    :cond_34
    if-eqz v2, :cond_39

    .line 116
    iput-object v2, p0, Landroid/app/LGSharedPreferences;->mMap:Ljava/util/Map;

    .line 120
    :goto_38
    return-void

    .line 118
    :cond_39
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/app/LGSharedPreferences;->mMap:Ljava/util/Map;

    goto :goto_38
.end method

.method private updateDB()V
    .registers 2

    .prologue
    .line 239
    :try_start_0
    invoke-direct {p0}, Landroid/app/LGSharedPreferences;->readFromSystemDB()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 243
    :goto_3
    return-void

    .line 240
    :catch_4
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private writeToSystemDB()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 125
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    if-eqz v1, :cond_14

    .line 126
    iget-object v4, p0, Landroid/app/LGSharedPreferences;->mMap:Ljava/util/Map;

    invoke-static {v4, v1}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 127
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 130
    :cond_14
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "decrypted":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/LGSharedPreferences;->mCrypt:Landroid/app/SettingsCrypto;

    invoke-virtual {v4, v0}, Landroid/app/SettingsCrypto;->encrypt(Ljava/lang/String;)[B

    move-result-object v3

    .line 134
    .local v3, "temp":[B
    const-string v2, ""

    .line 135
    .local v2, "str":Ljava/lang/String;
    if-eqz v3, :cond_26

    .line 136
    invoke-static {v3}, Landroid/app/SettingsCrypto;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    .line 138
    :cond_26
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_39

    .line 139
    iget-object v4, p0, Landroid/app/LGSharedPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Landroid/app/LGSharedPreferences;->mName:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 140
    const/4 v4, 0x1

    .line 142
    :goto_38
    return v4

    :cond_39
    const/4 v4, 0x0

    goto :goto_38
.end method


# virtual methods
.method public apply()V
    .registers 1

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/app/LGSharedPreferences;->commit()Z

    .line 152
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .prologue
    .line 156
    monitor-enter p0

    .line 157
    :try_start_1
    iget-object v0, p0, Landroid/app/LGSharedPreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 158
    monitor-exit p0

    return-object p0

    .line 156
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public commit()Z
    .registers 4

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 166
    .local v1, "result":Z
    :try_start_1
    invoke-direct {p0}, Landroid/app/LGSharedPreferences;->writeToSystemDB()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_b

    move-result v1

    .line 170
    :goto_5
    iget-object v2, p0, Landroid/app/LGSharedPreferences;->mMap:Ljava/util/Map;

    invoke-direct {p0, v2}, Landroid/app/LGSharedPreferences;->notifyListeners(Ljava/util/Map;)V

    .line 171
    return v1

    .line 167
    :catch_b
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 232
    monitor-enter p0

    .line 233
    :try_start_1
    iget-object v0, p0, Landroid/app/LGSharedPreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 232
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .registers 1

    .prologue
    .line 146
    return-object p0
.end method

.method public getAll()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 247
    monitor-enter p0

    .line 248
    :try_start_1
    invoke-direct {p0}, Landroid/app/LGSharedPreferences;->updateDB()V

    .line 249
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Landroid/app/LGSharedPreferences;->mMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0

    return-object v0

    .line 247
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 255
    monitor-enter p0

    .line 256
    :try_start_1
    invoke-direct {p0}, Landroid/app/LGSharedPreferences;->updateDB()V

    .line 257
    iget-object v1, p0, Landroid/app/LGSharedPreferences;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 258
    .local v0, "v":Ljava/lang/Boolean;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .end local p2    # "defValue":Z
    :cond_12
    monitor-exit p0

    return p2

    .line 255
    .end local v0    # "v":Ljava/lang/Boolean;
    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 264
    monitor-enter p0

    .line 265
    :try_start_1
    invoke-direct {p0}, Landroid/app/LGSharedPreferences;->updateDB()V

    .line 266
    iget-object v1, p0, Landroid/app/LGSharedPreferences;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 267
    .local v0, "v":Ljava/lang/Float;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .end local p2    # "defValue":F
    :cond_12
    monitor-exit p0

    return p2

    .line 264
    .end local v0    # "v":Ljava/lang/Float;
    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 273
    monitor-enter p0

    .line 274
    :try_start_1
    invoke-direct {p0}, Landroid/app/LGSharedPreferences;->updateDB()V

    .line 275
    iget-object v1, p0, Landroid/app/LGSharedPreferences;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 276
    .local v0, "v":Ljava/lang/Integer;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .end local p2    # "defValue":I
    :cond_12
    monitor-exit p0

    return p2

    .line 273
    .end local v0    # "v":Ljava/lang/Integer;
    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 282
    monitor-enter p0

    .line 283
    :try_start_1
    invoke-direct {p0}, Landroid/app/LGSharedPreferences;->updateDB()V

    .line 284
    iget-object v1, p0, Landroid/app/LGSharedPreferences;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 285
    .local v0, "v":Ljava/lang/Long;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .end local p2    # "defValue":J
    :cond_12
    monitor-exit p0

    return-wide p2

    .line 282
    .end local v0    # "v":Ljava/lang/Long;
    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 291
    monitor-enter p0

    .line 292
    :try_start_1
    invoke-direct {p0}, Landroid/app/LGSharedPreferences;->updateDB()V

    .line 293
    iget-object v1, p0, Landroid/app/LGSharedPreferences;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 294
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_10

    .end local v0    # "v":Ljava/lang/String;
    :goto_e
    monitor-exit p0

    return-object v0

    .restart local v0    # "v":Ljava/lang/String;
    :cond_10
    move-object v0, p2

    goto :goto_e

    .line 291
    .end local v0    # "v":Ljava/lang/String;
    :catchall_12
    move-exception v1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 301
    :try_start_1
    invoke-direct {p0}, Landroid/app/LGSharedPreferences;->updateDB()V

    .line 302
    iget-object v1, p0, Landroid/app/LGSharedPreferences;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 303
    .local v0, "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_10

    .end local v0    # "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_e
    monitor-exit p0

    return-object v0

    .restart local v0    # "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_10
    move-object v0, p2

    goto :goto_e

    .line 300
    .end local v0    # "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_12
    move-exception v1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 176
    monitor-enter p0

    .line 177
    :try_start_1
    iget-object v0, p0, Landroid/app/LGSharedPreferences;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    monitor-exit p0

    return-object p0

    .line 176
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 184
    monitor-enter p0

    .line 185
    :try_start_1
    iget-object v0, p0, Landroid/app/LGSharedPreferences;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    monitor-exit p0

    return-object p0

    .line 184
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 192
    monitor-enter p0

    .line 193
    :try_start_1
    iget-object v0, p0, Landroid/app/LGSharedPreferences;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    monitor-exit p0

    return-object p0

    .line 192
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 200
    monitor-enter p0

    .line 201
    :try_start_1
    iget-object v0, p0, Landroid/app/LGSharedPreferences;->mMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    monitor-exit p0

    return-object p0

    .line 200
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 208
    monitor-enter p0

    .line 209
    :try_start_1
    iget-object v0, p0, Landroid/app/LGSharedPreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    monitor-exit p0

    return-object p0

    .line 208
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 216
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 217
    :try_start_1
    iget-object v1, p0, Landroid/app/LGSharedPreferences;->mMap:Ljava/util/Map;

    if-nez p2, :cond_b

    const/4 v0, 0x0

    :goto_6
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    monitor-exit p0

    return-object p0

    .line 217
    :cond_b
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_6

    .line 216
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 310
    iget-object v0, p0, Landroid/app/LGSharedPreferences;->mListeners:Ljava/util/WeakHashMap;

    sget-object v1, Landroid/app/LGSharedPreferences;->mContent:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    return-void
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 224
    monitor-enter p0

    .line 225
    :try_start_1
    iget-object v0, p0, Landroid/app/LGSharedPreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    monitor-exit p0

    return-object p0

    .line 224
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .local v0, "builder":Ljava/lang/StringBuilder;
    sget-object v3, Landroid/app/LGSharedPreferences;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\r\nName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/app/LGSharedPreferences;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    sget-object v3, Landroid/app/LGSharedPreferences;->sSharedPrefs:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 326
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_30

    .line 327
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4d

    .line 332
    :cond_30
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\r\nlistener size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/app/LGSharedPreferences;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 327
    :cond_4d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 328
    .local v1, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\r\nkey="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 316
    iget-object v0, p0, Landroid/app/LGSharedPreferences;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    return-void
.end method
