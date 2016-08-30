.class public Lcom/lge/cic/eden/assets/AssetLoader;
.super Ljava/lang/Object;
.source "AssetLoader.java"


# static fields
.field private static ROOT_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final ENGINE_DIR:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/lge/cic/eden/assets/AssetLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/assets/AssetLoader;->TAG:Ljava/lang/String;

    .line 16
    const-string v0, ""

    sput-object v0, Lcom/lge/cic/eden/assets/AssetLoader;->ROOT_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v1, "engine_data"

    iput-object v1, p0, Lcom/lge/cic/eden/assets/AssetLoader;->ENGINE_DIR:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/lge/cic/eden/assets/AssetLoader;->context:Landroid/content/Context;

    .line 23
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lge/cic/eden/assets/AssetLoader;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "engine_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lge/cic/eden/assets/AssetLoader;->ROOT_PATH:Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_2e} :catch_45

    .line 27
    :goto_2e
    sget-object v1, Lcom/lge/cic/eden/assets/AssetLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "engine path: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/lge/cic/eden/assets/AssetLoader;->ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void

    .line 24
    :catch_45
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/data/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/cic/eden/assets/AssetLoader;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/files"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "engine_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lge/cic/eden/assets/AssetLoader;->ROOT_PATH:Ljava/lang/String;

    goto :goto_2e
.end method

.method public static getEnginePath()Ljava/lang/String;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/lge/cic/eden/assets/AssetLoader;->ROOT_PATH:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public load()Z
    .registers 27

    .prologue
    .line 35
    sget-object v21, Lcom/lge/cic/eden/assets/AssetLoader;->TAG:Ljava/lang/String;

    const-string v22, "load()"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/assets/AssetLoader;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 38
    .local v2, "assetManager":Landroid/content/res/AssetManager;
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v6, v0, [Ljava/lang/String;

    .line 40
    .local v6, "engineList":[Ljava/lang/String;
    :try_start_17
    const-string v21, "engine_data"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_29

    move-result-object v6

    .line 46
    if-eqz v6, :cond_26

    array-length v0, v6

    move/from16 v21, v0

    if-gtz v21, :cond_43

    .line 47
    :cond_26
    const/16 v21, 0x0

    .line 165
    :goto_28
    return v21

    .line 41
    :catch_29
    move-exception v4

    .line 42
    .local v4, "e":Ljava/lang/Exception;
    sget-object v21, Lcom/lge/cic/eden/assets/AssetLoader;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "engineList is null: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/16 v21, 0x0

    goto :goto_28

    .line 49
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_43
    sget-object v21, Lcom/lge/cic/eden/assets/AssetLoader;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "  engineList\'s size = "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v6

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    array-length v0, v6

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_5f
    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_76

    .line 128
    const/4 v11, 0x1

    .line 130
    .local v11, "isSuccess":Z
    array-length v0, v6

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_6b
    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_1d0

    .line 159
    if-nez v11, :cond_255

    .line 160
    const/16 v21, 0x0

    goto :goto_28

    .line 51
    .end local v11    # "isSuccess":Z
    :cond_76
    aget-object v5, v6, v21

    .line 52
    .local v5, "engineFile":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    sget-object v24, Lcom/lge/cic/eden/assets/AssetLoader;->ROOT_PATH:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v24, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 53
    .local v18, "path":Ljava/lang/String;
    sget-object v23, Lcom/lge/cic/eden/assets/AssetLoader;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "  load data at "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/16 v19, 0x0

    .line 57
    .local v19, "reader":Ljava/io/FileInputStream;
    :try_start_ad
    new-instance v19, Ljava/io/FileInputStream;

    .end local v19    # "reader":Ljava/io/FileInputStream;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b6} :catch_16f

    .line 63
    .restart local v19    # "reader":Ljava/io/FileInputStream;
    :goto_b6
    const/4 v14, 0x1

    .line 64
    .local v14, "needToCopy":Z
    if-eqz v19, :cond_19c

    .line 65
    const/4 v10, 0x0

    .line 67
    .local v10, "input":Ljava/io/InputStream;
    :try_start_ba
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "engine_data"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v24, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 68
    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v12

    .line 69
    .local v12, "lenAsset":I
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->available()I

    move-result v13

    .line 71
    .local v13, "lenFile":I
    sget-object v23, Lcom/lge/cic/eden/assets/AssetLoader;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "    cmp file size = "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " / "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_101} :catch_18f
    .catchall {:try_start_ba .. :try_end_101} :catchall_197

    .line 72
    if-lez v13, :cond_18c

    if-ne v12, v13, :cond_18c

    .line 73
    const/4 v14, 0x0

    .line 83
    :goto_106
    :try_start_106
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_109} :catch_266

    .line 91
    .end local v10    # "input":Ljava/io/InputStream;
    .end local v12    # "lenAsset":I
    .end local v13    # "lenFile":I
    :goto_109
    if-eqz v14, :cond_1c8

    .line 92
    sget-object v23, Lcom/lge/cic/eden/assets/AssetLoader;->TAG:Ljava/lang/String;

    const-string v24, "  engine data does not exist. so I\'ll try to copy from assets to data"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v3, Ljava/io/File;

    sget-object v23, Lcom/lge/cic/eden/assets/AssetLoader;->ROOT_PATH:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 96
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v15, "output":Ljava/io/File;
    const/4 v10, 0x0

    .line 99
    .restart local v10    # "input":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 101
    .local v16, "outputStream":Ljava/io/FileOutputStream;
    :try_start_128
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "engine_data"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v24, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 103
    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 104
    .local v20, "tempData":[B
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    .line 106
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    .line 107
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_15e} :catch_19f
    .catchall {:try_start_128 .. :try_end_15e} :catchall_1c0

    .line 108
    .end local v16    # "outputStream":Ljava/io/FileOutputStream;
    .local v17, "outputStream":Ljava/io/FileOutputStream;
    :try_start_15e
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_165} :catch_281
    .catchall {:try_start_15e .. :try_end_165} :catchall_279

    .line 116
    :try_start_165
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 117
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_16b} :catch_273

    .line 51
    .end local v3    # "dir":Ljava/io/File;
    .end local v10    # "input":Ljava/io/InputStream;
    .end local v15    # "output":Ljava/io/File;
    .end local v17    # "outputStream":Ljava/io/FileOutputStream;
    .end local v20    # "tempData":[B
    :goto_16b
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_5f

    .line 58
    .end local v14    # "needToCopy":Z
    .end local v19    # "reader":Ljava/io/FileInputStream;
    :catch_16f
    move-exception v4

    .line 59
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v23, Lcom/lge/cic/eden/assets/AssetLoader;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, " is empty."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/16 v19, 0x0

    .restart local v19    # "reader":Ljava/io/FileInputStream;
    goto/16 :goto_b6

    .line 75
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v10    # "input":Ljava/io/InputStream;
    .restart local v12    # "lenAsset":I
    .restart local v13    # "lenFile":I
    .restart local v14    # "needToCopy":Z
    :cond_18c
    const/4 v14, 0x1

    goto/16 :goto_106

    .line 77
    .end local v12    # "lenAsset":I
    .end local v13    # "lenFile":I
    :catch_18f
    move-exception v4

    .line 83
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_190
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_193} :catch_260

    .line 79
    :goto_193
    const/16 v21, 0x0

    goto/16 :goto_28

    .line 81
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_197
    move-exception v21

    .line 83
    :try_start_198
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_198 .. :try_end_19b} :catch_263

    .line 86
    :goto_19b
    throw v21

    .line 88
    .end local v10    # "input":Ljava/io/InputStream;
    :cond_19c
    const/4 v14, 0x1

    goto/16 :goto_109

    .line 110
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v10    # "input":Ljava/io/InputStream;
    .restart local v15    # "output":Ljava/io/File;
    .restart local v16    # "outputStream":Ljava/io/FileOutputStream;
    :catch_19f
    move-exception v4

    .line 111
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_1a0
    :try_start_1a0
    sget-object v21, Lcom/lge/cic/eden/assets/AssetLoader;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "  open file at asset is failed. "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b6
    .catchall {:try_start_1a0 .. :try_end_1b6} :catchall_1c0

    .line 116
    :try_start_1b6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 117
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1bc} :catch_27e

    .line 112
    :goto_1bc
    const/16 v21, 0x0

    goto/16 :goto_28

    .line 114
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_1c0
    move-exception v21

    .line 116
    :goto_1c1
    :try_start_1c1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 117
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_1c1 .. :try_end_1c7} :catch_276

    .line 120
    :goto_1c7
    throw v21

    .line 122
    .end local v3    # "dir":Ljava/io/File;
    .end local v10    # "input":Ljava/io/InputStream;
    .end local v15    # "output":Ljava/io/File;
    .end local v16    # "outputStream":Ljava/io/FileOutputStream;
    :cond_1c8
    sget-object v23, Lcom/lge/cic/eden/assets/AssetLoader;->TAG:Ljava/lang/String;

    const-string v24, "  engine data aleady exist."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16b

    .line 130
    .end local v5    # "engineFile":Ljava/lang/String;
    .end local v14    # "needToCopy":Z
    .end local v18    # "path":Ljava/lang/String;
    .end local v19    # "reader":Ljava/io/FileInputStream;
    .restart local v11    # "isSuccess":Z
    :cond_1d0
    aget-object v5, v6, v21

    .line 132
    .restart local v5    # "engineFile":Ljava/lang/String;
    const/4 v9, 0x0

    .line 133
    .local v9, "fileAtData":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 135
    .local v7, "fileAtAsset":Ljava/io/InputStream;
    :try_start_1d4
    new-instance v8, Ljava/io/FileInputStream;

    new-instance v23, Ljava/lang/StringBuilder;

    sget-object v24, Lcom/lge/cic/eden/assets/AssetLoader;->ROOT_PATH:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v24, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_1d4 .. :try_end_1f6} :catch_22a
    .catchall {:try_start_1d4 .. :try_end_1f6} :catchall_24c

    .line 136
    .end local v9    # "fileAtData":Ljava/io/FileInputStream;
    .local v8, "fileAtData":Ljava/io/FileInputStream;
    :try_start_1f6
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "engine_data"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v24, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 138
    invoke-virtual {v8}, Ljava/io/FileInputStream;->available()I

    move-result v13

    .line 139
    .restart local v13    # "lenFile":I
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I
    :try_end_21a
    .catch Ljava/lang/Exception; {:try_start_1f6 .. :try_end_21a} :catch_271
    .catchall {:try_start_1f6 .. :try_end_21a} :catchall_26d

    move-result v12

    .line 141
    .restart local v12    # "lenAsset":I
    if-lez v13, :cond_21f

    if-eq v12, v13, :cond_220

    .line 144
    :cond_21f
    const/4 v11, 0x0

    .line 152
    :cond_220
    :try_start_220
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 153
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_226
    .catch Ljava/lang/Exception; {:try_start_220 .. :try_end_226} :catch_269

    .line 130
    :goto_226
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_6b

    .line 146
    .end local v8    # "fileAtData":Ljava/io/FileInputStream;
    .end local v12    # "lenAsset":I
    .end local v13    # "lenFile":I
    .restart local v9    # "fileAtData":Ljava/io/FileInputStream;
    :catch_22a
    move-exception v4

    move-object v8, v9

    .line 147
    .end local v9    # "fileAtData":Ljava/io/FileInputStream;
    .restart local v4    # "e":Ljava/lang/Exception;
    .restart local v8    # "fileAtData":Ljava/io/FileInputStream;
    :goto_22c
    :try_start_22c
    sget-object v21, Lcom/lge/cic/eden/assets/AssetLoader;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "  open file at asset or data is failed. "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_242
    .catchall {:try_start_22c .. :try_end_242} :catchall_26d

    .line 152
    :try_start_242
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 153
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_248
    .catch Ljava/lang/Exception; {:try_start_242 .. :try_end_248} :catch_26f

    .line 148
    :goto_248
    const/16 v21, 0x0

    goto/16 :goto_28

    .line 150
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v8    # "fileAtData":Ljava/io/FileInputStream;
    .restart local v9    # "fileAtData":Ljava/io/FileInputStream;
    :catchall_24c
    move-exception v21

    move-object v8, v9

    .line 152
    .end local v9    # "fileAtData":Ljava/io/FileInputStream;
    .restart local v8    # "fileAtData":Ljava/io/FileInputStream;
    :goto_24e
    :try_start_24e
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 153
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_254
    .catch Ljava/lang/Exception; {:try_start_24e .. :try_end_254} :catch_26b

    .line 156
    :goto_254
    throw v21

    .line 164
    .end local v5    # "engineFile":Ljava/lang/String;
    .end local v7    # "fileAtAsset":Ljava/io/InputStream;
    .end local v8    # "fileAtData":Ljava/io/FileInputStream;
    :cond_255
    sget-object v21, Lcom/lge/cic/eden/assets/AssetLoader;->TAG:Ljava/lang/String;

    const-string v22, "loading completed"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/16 v21, 0x1

    goto/16 :goto_28

    .line 84
    .end local v11    # "isSuccess":Z
    .restart local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "engineFile":Ljava/lang/String;
    .restart local v10    # "input":Ljava/io/InputStream;
    .restart local v14    # "needToCopy":Z
    .restart local v18    # "path":Ljava/lang/String;
    .restart local v19    # "reader":Ljava/io/FileInputStream;
    :catch_260
    move-exception v21

    goto/16 :goto_193

    .end local v4    # "e":Ljava/lang/Exception;
    :catch_263
    move-exception v22

    goto/16 :goto_19b

    .restart local v12    # "lenAsset":I
    .restart local v13    # "lenFile":I
    :catch_266
    move-exception v23

    goto/16 :goto_109

    .line 154
    .end local v10    # "input":Ljava/io/InputStream;
    .end local v14    # "needToCopy":Z
    .end local v18    # "path":Ljava/lang/String;
    .end local v19    # "reader":Ljava/io/FileInputStream;
    .restart local v7    # "fileAtAsset":Ljava/io/InputStream;
    .restart local v8    # "fileAtData":Ljava/io/FileInputStream;
    .restart local v11    # "isSuccess":Z
    :catch_269
    move-exception v23

    goto :goto_226

    .end local v12    # "lenAsset":I
    .end local v13    # "lenFile":I
    :catch_26b
    move-exception v22

    goto :goto_254

    .line 150
    :catchall_26d
    move-exception v21

    goto :goto_24e

    .line 154
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_26f
    move-exception v21

    goto :goto_248

    .line 146
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_271
    move-exception v4

    goto :goto_22c

    .line 118
    .end local v7    # "fileAtAsset":Ljava/io/InputStream;
    .end local v8    # "fileAtData":Ljava/io/FileInputStream;
    .end local v11    # "isSuccess":Z
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v10    # "input":Ljava/io/InputStream;
    .restart local v14    # "needToCopy":Z
    .restart local v15    # "output":Ljava/io/File;
    .restart local v17    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v18    # "path":Ljava/lang/String;
    .restart local v19    # "reader":Ljava/io/FileInputStream;
    .restart local v20    # "tempData":[B
    :catch_273
    move-exception v23

    goto/16 :goto_16b

    .end local v17    # "outputStream":Ljava/io/FileOutputStream;
    .end local v20    # "tempData":[B
    .restart local v16    # "outputStream":Ljava/io/FileOutputStream;
    :catch_276
    move-exception v22

    goto/16 :goto_1c7

    .line 114
    .end local v16    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v17    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v20    # "tempData":[B
    :catchall_279
    move-exception v21

    move-object/from16 v16, v17

    .end local v17    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "outputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_1c1

    .line 118
    .end local v20    # "tempData":[B
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_27e
    move-exception v21

    goto/16 :goto_1bc

    .line 110
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v16    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v17    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v20    # "tempData":[B
    :catch_281
    move-exception v4

    move-object/from16 v16, v17

    .end local v17    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "outputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_1a0
.end method
