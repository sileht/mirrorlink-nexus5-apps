.class public Lcom/lge/app/LocalePickerEx;
.super Landroid/app/ListFragment;
.source "LocalePickerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/app/LocalePickerEx$LocaleInfo;,
        Lcom/lge/app/LocalePickerEx$LocaleSelectionListener;
    }
.end annotation


# static fields
.field private static COUNTRY_CODE:Ljava/lang/String; = null

.field private static final DEBUG:Z = false

.field private static final HAS_CUPSS_LANG_LIST:Z

.field private static final TAG:Ljava/lang/String; = "LocalePickerEx"

.field private static sOPERATOR_CODE:Ljava/lang/String;


# instance fields
.field mListener:Lcom/lge/app/LocalePickerEx$LocaleSelectionListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 66
    const-string v0, "ro.build.target_country"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/app/LocalePickerEx;->COUNTRY_CODE:Ljava/lang/String;

    .line 68
    const-string v0, "ro.lge.custLanguageSet"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/app/LocalePickerEx;->HAS_CUPSS_LANG_LIST:Z

    .line 72
    const-string v0, "ro.build.target_operator"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/app/LocalePickerEx;->sOPERATOR_CODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/lge/app/LocalePickerEx;->COUNTRY_CODE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Lcom/lge/app/LocalePickerEx;->sOPERATOR_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/lge/app/LocalePickerEx$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/app/LocalePickerEx;->constructAdapter(Landroid/content/Context;Z)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutId"    # I
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/lge/app/LocalePickerEx$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/lge/app/LocalePickerEx;->constructAdapter(Landroid/content/Context;IIZ)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;IIZ)Landroid/widget/ArrayAdapter;
    .registers 38
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutId"    # I
    .param p2, "fieldId"    # I
    .param p3, "isInDeveloperMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIZ)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/lge/app/LocalePickerEx$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 224
    const-string v4, "development_settings_enabled"

    const/4 v5, 0x0

    .line 223
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_e9

    const/16 v20, 0x1

    .line 225
    .local v20, "inDeveloperMode":Z
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 227
    .local v28, "resources":Landroid/content/res/Resources;
    new-instance v24, Ljava/util/ArrayList;

    .line 228
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 239
    .local v24, "localeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/telephony/TelephonyManager;

    .line 241
    .local v33, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string v3, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v18

    .line 242
    .local v18, "hasMobileDataFeature":Z
    const/4 v12, 0x0

    .line 244
    .local v12, "cupssLanguageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-boolean v3, Lcom/lge/app/LocalePickerEx;->HAS_CUPSS_LANG_LIST:Z

    if-eqz v3, :cond_73

    .line 245
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "cupssLanguageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/lge/internal/R$array;->config_custLanguageSet:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 250
    .restart local v12    # "cupssLanguageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 251
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v14, v3, [Ljava/lang/String;

    .line 252
    .local v14, "custLocales":[Ljava/lang/String;
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "custLocales":[Ljava/lang/String;
    check-cast v14, [Ljava/lang/String;

    .line 253
    .restart local v14    # "custLocales":[Ljava/lang/String;
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 258
    .end local v14    # "custLocales":[Ljava/lang/String;
    :cond_73
    if-eqz v20, :cond_86

    .line 259
    const-string v3, "zz_ZZ"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_86

    .line 260
    const-string v3, "zz_ZZ"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_86
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v25, v0

    .line 269
    .local v25, "locales":[Ljava/lang/String;
    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    .end local v25    # "locales":[Ljava/lang/String;
    check-cast v25, [Ljava/lang/String;

    .line 271
    .restart local v25    # "locales":[Ljava/lang/String;
    const v3, 0x1070008

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v31

    .line 272
    .local v31, "specialLocaleCodes":[Ljava/lang/String;
    const v3, 0x1070009

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v32

    .line 273
    .local v32, "specialLocaleNames":[Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 274
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    .line 275
    .local v26, "origSize":I
    move/from16 v0, v26

    new-array v0, v0, [Lcom/lge/app/LocalePickerEx$LocaleInfo;

    move-object/from16 v27, v0

    .line 276
    .local v27, "preprocess":[Lcom/lge/app/LocalePickerEx$LocaleInfo;
    const/16 v16, 0x0

    .line 277
    .local v16, "finalSize":I
    const/16 v19, 0x0

    .local v19, "i":I
    move/from16 v17, v16

    .end local v16    # "finalSize":I
    .local v17, "finalSize":I
    :goto_ba
    move/from16 v0, v19

    move/from16 v1, v26

    if-lt v0, v1, :cond_ed

    .line 376
    move/from16 v0, v17

    new-array v7, v0, [Lcom/lge/app/LocalePickerEx$LocaleInfo;

    .line 377
    .local v7, "localeInfos":[Lcom/lge/app/LocalePickerEx$LocaleInfo;
    const/16 v19, 0x0

    :goto_c6
    move/from16 v0, v19

    move/from16 v1, v17

    if-lt v0, v1, :cond_258

    .line 381
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 384
    const-string v3, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 385
    .local v8, "inflater":Landroid/view/LayoutInflater;
    new-instance v3, Lcom/lge/app/LocalePickerEx$1;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/lge/app/LocalePickerEx$1;-><init>(Landroid/content/Context;II[Lcom/lge/app/LocalePickerEx$LocaleInfo;Landroid/view/LayoutInflater;II)V

    return-object v3

    .line 223
    .end local v7    # "localeInfos":[Lcom/lge/app/LocalePickerEx$LocaleInfo;
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "cupssLanguageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "finalSize":I
    .end local v18    # "hasMobileDataFeature":Z
    .end local v19    # "i":I
    .end local v20    # "inDeveloperMode":Z
    .end local v24    # "localeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "locales":[Ljava/lang/String;
    .end local v26    # "origSize":I
    .end local v27    # "preprocess":[Lcom/lge/app/LocalePickerEx$LocaleInfo;
    .end local v28    # "resources":Landroid/content/res/Resources;
    .end local v31    # "specialLocaleCodes":[Ljava/lang/String;
    .end local v32    # "specialLocaleNames":[Ljava/lang/String;
    .end local v33    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_e9
    const/16 v20, 0x0

    goto/16 :goto_f

    .line 278
    .restart local v12    # "cupssLanguageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "finalSize":I
    .restart local v18    # "hasMobileDataFeature":Z
    .restart local v19    # "i":I
    .restart local v20    # "inDeveloperMode":Z
    .restart local v24    # "localeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "locales":[Ljava/lang/String;
    .restart local v26    # "origSize":I
    .restart local v27    # "preprocess":[Lcom/lge/app/LocalePickerEx$LocaleInfo;
    .restart local v28    # "resources":Landroid/content/res/Resources;
    .restart local v31    # "specialLocaleCodes":[Ljava/lang/String;
    .restart local v32    # "specialLocaleNames":[Ljava/lang/String;
    .restart local v33    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_ed
    aget-object v29, v25, v19

    .line 279
    .local v29, "s":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v23

    .line 282
    .local v23, "len":I
    if-eqz v18, :cond_124

    .line 283
    const-string v3, "AME"

    sget-object v4, Lcom/lge/app/LocalePickerEx;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_124

    .line 284
    const-string v3, "iw"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_260

    const-string v3, "iw_IL"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_260

    const-string v3, "iw-IL"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_124

    move/from16 v16, v17

    .line 277
    .end local v17    # "finalSize":I
    .restart local v16    # "finalSize":I
    :goto_11f
    add-int/lit8 v19, v19, 0x1

    move/from16 v17, v16

    .end local v16    # "finalSize":I
    .restart local v17    # "finalSize":I
    goto :goto_ba

    .line 292
    :cond_124
    const-string v3, "IL"

    sget-object v4, Lcom/lge/app/LocalePickerEx;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14f

    .line 293
    const-string v3, "fa"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_260

    const-string v3, "fa_IR"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_260

    const-string v3, "fa-IR"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14f

    move/from16 v16, v17

    .line 294
    .end local v17    # "finalSize":I
    .restart local v16    # "finalSize":I
    goto :goto_11f

    .line 299
    .end local v16    # "finalSize":I
    .restart local v17    # "finalSize":I
    :cond_14f
    const/4 v3, 0x5

    move/from16 v0, v23

    if-ne v0, v3, :cond_260

    .line 300
    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 301
    .local v22, "language":Ljava/lang/String;
    const/4 v3, 0x3

    const/4 v4, 0x5

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 302
    .local v11, "country":Ljava/lang/String;
    new-instance v21, Ljava/util/Locale;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .local v21, "l":Ljava/util/Locale;
    if-nez v17, :cond_187

    .line 308
    add-int/lit8 v16, v17, 0x1

    .line 309
    .end local v17    # "finalSize":I
    .restart local v16    # "finalSize":I
    new-instance v3, Lcom/lge/app/LocalePickerEx$LocaleInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/app/LocalePickerEx;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v3, v4, v0}, Lcom/lge/app/LocalePickerEx$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 308
    aput-object v3, v27, v17

    goto :goto_11f

    .line 315
    .end local v16    # "finalSize":I
    .restart local v17    # "finalSize":I
    :cond_187
    add-int/lit8 v3, v17, -0x1

    aget-object v3, v27, v3

    iget-object v3, v3, Lcom/lge/app/LocalePickerEx$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 316
    if-eqz v3, :cond_1de

    .line 317
    add-int/lit8 v3, v17, -0x1

    aget-object v3, v27, v3

    iget-object v3, v3, Lcom/lge/app/LocalePickerEx$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zz"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1de

    .line 324
    add-int/lit8 v3, v17, -0x1

    aget-object v3, v27, v3

    .line 325
    add-int/lit8 v4, v17, -0x1

    aget-object v4, v27, v4

    iget-object v4, v4, Lcom/lge/app/LocalePickerEx$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v4, v0, v1}, Lcom/lge/app/LocalePickerEx;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 324
    invoke-static {v4}, Lcom/lge/app/LocalePickerEx;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/lge/app/LocalePickerEx$LocaleInfo;->label:Ljava/lang/String;

    .line 331
    add-int/lit8 v16, v17, 0x1

    .line 332
    .end local v17    # "finalSize":I
    .restart local v16    # "finalSize":I
    new-instance v3, Lcom/lge/app/LocalePickerEx$LocaleInfo;

    .line 333
    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/lge/app/LocalePickerEx;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 332
    invoke-static {v4}, Lcom/lge/app/LocalePickerEx;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v3, v4, v0}, Lcom/lge/app/LocalePickerEx$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 331
    aput-object v3, v27, v17

    goto/16 :goto_11f

    .line 337
    .end local v16    # "finalSize":I
    .restart local v17    # "finalSize":I
    :cond_1de
    const-string v3, "zz_ZZ"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_238

    .line 338
    const-string v15, "[Developer] Accented English"

    .line 345
    .local v15, "displayName":Ljava/lang/String;
    :goto_1ea
    const-string v3, "mk_MK"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1fe

    const-string v3, "mk-MK"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21b

    .line 346
    :cond_1fe
    invoke-virtual/range {v33 .. v33}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v30

    .line 347
    .local v30, "simOperator":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_252

    .line 348
    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 349
    .local v13, "currentMCC":Ljava/lang/String;
    const-string v3, "294"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21b

    .line 350
    const-string v15, "FYROM"

    .line 362
    .end local v13    # "currentMCC":Ljava/lang/String;
    .end local v30    # "simOperator":Ljava/lang/String;
    :cond_21b
    if-eqz v21, :cond_22b

    const-string v3, "ku_IQ"

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22b

    .line 363
    const-string v15, "Kurdish"

    .line 370
    :cond_22b
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "finalSize":I
    .restart local v16    # "finalSize":I
    new-instance v3, Lcom/lge/app/LocalePickerEx$LocaleInfo;

    move-object/from16 v0, v21

    invoke-direct {v3, v15, v0}, Lcom/lge/app/LocalePickerEx$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v27, v17

    goto/16 :goto_11f

    .line 339
    .end local v15    # "displayName":Ljava/lang/String;
    .end local v16    # "finalSize":I
    .restart local v17    # "finalSize":I
    :cond_238
    const-string v3, "zz_ZY"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_245

    .line 340
    const-string v15, "[Developer] Fake Bi-Directional"

    .line 341
    .restart local v15    # "displayName":Ljava/lang/String;
    goto :goto_1ea

    .line 342
    .end local v15    # "displayName":Ljava/lang/String;
    :cond_245
    move-object/from16 v0, v21

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/app/LocalePickerEx;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "displayName":Ljava/lang/String;
    goto :goto_1ea

    .line 354
    .restart local v30    # "simOperator":Ljava/lang/String;
    :cond_252
    if-eqz v18, :cond_21b

    move/from16 v16, v17

    .line 355
    .end local v17    # "finalSize":I
    .restart local v16    # "finalSize":I
    goto/16 :goto_11f

    .line 378
    .end local v11    # "country":Ljava/lang/String;
    .end local v15    # "displayName":Ljava/lang/String;
    .end local v16    # "finalSize":I
    .end local v21    # "l":Ljava/util/Locale;
    .end local v22    # "language":Ljava/lang/String;
    .end local v23    # "len":I
    .end local v29    # "s":Ljava/lang/String;
    .end local v30    # "simOperator":Ljava/lang/String;
    .restart local v7    # "localeInfos":[Lcom/lge/app/LocalePickerEx$LocaleInfo;
    .restart local v17    # "finalSize":I
    :cond_258
    aget-object v3, v27, v19

    aput-object v3, v7, v19

    .line 377
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_c6

    .end local v7    # "localeInfos":[Lcom/lge/app/LocalePickerEx$LocaleInfo;
    .restart local v23    # "len":I
    .restart local v29    # "s":Ljava/lang/String;
    :cond_260
    move/from16 v16, v17

    .end local v17    # "finalSize":I
    .restart local v16    # "finalSize":I
    goto/16 :goto_11f
.end method

.method public static constructAdapter(Landroid/content/Context;Z)Landroid/widget/ArrayAdapter;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isInDeveloperMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/lge/app/LocalePickerEx$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    sget v0, Lcom/lge/internal/R$layout;->locale_picker_item:I

    sget v1, Lcom/lge/internal/R$id;->locale:I

    invoke-static {p0, v0, v1, p1}, Lcom/lge/app/LocalePickerEx;->constructAdapter(Landroid/content/Context;IIZ)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "l"    # Ljava/util/Locale;
    .param p1, "specialLocaleCodes"    # [Ljava/lang/String;
    .param p2, "specialLocaleNames"    # [Ljava/lang/String;

    .prologue
    .line 430
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, p1

    if-lt v1, v2, :cond_d

    .line 438
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    :goto_c
    return-object v2

    .line 433
    :cond_d
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 434
    aget-object v2, p2, v1

    goto :goto_c

    .line 432
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 421
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 425
    .end local p0    # "s":Ljava/lang/String;
    :goto_6
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 507
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 508
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 510
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 511
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 513
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 515
    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    .line 519
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    :goto_16
    return-void

    :catch_17
    move-exception v2

    goto :goto_16
.end method


# virtual methods
.method protected isInDeveloperMode()Z
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 448
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 449
    invoke-virtual {p0}, Lcom/lge/app/LocalePickerEx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 450
    invoke-virtual {p0}, Lcom/lge/app/LocalePickerEx;->isInDeveloperMode()Z

    move-result v2

    .line 449
    invoke-static {v1, v2}, Lcom/lge/app/LocalePickerEx;->constructAdapter(Landroid/content/Context;Z)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 451
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/lge/app/LocalePickerEx$LocaleInfo;>;"
    invoke-virtual {p0, v0}, Lcom/lge/app/LocalePickerEx;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 452
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 8
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 489
    iget-object v1, p0, Lcom/lge/app/LocalePickerEx;->mListener:Lcom/lge/app/LocalePickerEx$LocaleSelectionListener;

    if-eqz v1, :cond_15

    .line 490
    invoke-virtual {p0}, Lcom/lge/app/LocalePickerEx;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/app/LocalePickerEx$LocaleInfo;

    iget-object v0, v1, Lcom/lge/app/LocalePickerEx$LocaleInfo;->locale:Ljava/util/Locale;

    .line 491
    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/lge/app/LocalePickerEx;->mListener:Lcom/lge/app/LocalePickerEx$LocaleSelectionListener;

    invoke-interface {v1, v0}, Lcom/lge/app/LocalePickerEx$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    .line 493
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_15
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 468
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 469
    invoke-virtual {p0}, Lcom/lge/app/LocalePickerEx;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 470
    return-void
.end method

.method public setLocaleSelectionListener(Lcom/lge/app/LocalePickerEx$LocaleSelectionListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/lge/app/LocalePickerEx$LocaleSelectionListener;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/lge/app/LocalePickerEx;->mListener:Lcom/lge/app/LocalePickerEx$LocaleSelectionListener;

    .line 460
    return-void
.end method
