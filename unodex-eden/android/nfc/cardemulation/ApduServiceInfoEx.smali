.class public Landroid/nfc/cardemulation/ApduServiceInfoEx;
.super Ljava/lang/Object;
.source "ApduServiceInfoEx.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ApduServiceInfoEx"

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "ApduServiceInfoEx.java"

    const-class v2, Landroid/nfc/cardemulation/ApduServiceInfoEx;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "9"

    const-string v2, "setBitmapBanner"

    const-string v3, "android.nfc.cardemulation.ApduServiceInfoEx"

    const-string v4, "android.nfc.cardemulation.ApduServiceInfo:android.graphics.Bitmap"

    const-string v5, "info:banner"

    const-string v6, ""

    const-string v7, "android.nfc.cardemulation.ApduServiceInfo"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xd8

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Landroid/nfc/cardemulation/ApduServiceInfoEx;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "9"

    const-string v2, "loadBitmapBanner"

    const-string v3, "android.nfc.cardemulation.ApduServiceInfoEx"

    const-string v4, "android.nfc.cardemulation.ApduServiceInfo"

    const-string v5, "info"

    const-string v6, ""

    const-string v7, "android.graphics.Bitmap"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xdd

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Landroid/nfc/cardemulation/ApduServiceInfoEx;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "9"

    const-string v2, "getBannerHashCode"

    const-string v3, "android.nfc.cardemulation.ApduServiceInfoEx"

    const-string v4, "android.nfc.cardemulation.ApduServiceInfo"

    const-string v5, "info"

    const-string v6, ""

    const-string v7, "java.lang.String"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xe2

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Landroid/nfc/cardemulation/ApduServiceInfoEx;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "9"

    const-string v2, "setBannerHashCode"

    const-string v3, "android.nfc.cardemulation.ApduServiceInfoEx"

    const-string v4, "android.nfc.cardemulation.ApduServiceInfo:java.lang.String"

    const-string v5, "info:hashcode"

    const-string v6, ""

    const-string v7, "android.nfc.cardemulation.ApduServiceInfo"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xe7

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Landroid/nfc/cardemulation/ApduServiceInfoEx;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "9"

    const-string v2, "setStaticService"

    const-string v3, "android.nfc.cardemulation.ApduServiceInfoEx"

    const-string v4, "android.nfc.cardemulation.ApduServiceInfo:boolean"

    const-string v5, "info:isStaticService"

    const-string v6, ""

    const-string v7, "android.nfc.cardemulation.ApduServiceInfo"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xec

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Landroid/nfc/cardemulation/ApduServiceInfoEx;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "9"

    const-string v2, "isStaticService"

    const-string v3, "android.nfc.cardemulation.ApduServiceInfoEx"

    const-string v4, "android.nfc.cardemulation.ApduServiceInfo"

    const-string v5, "info"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xf1

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfoEx;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static clone(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 11
    .param p0, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 208
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-static {p0}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->getService(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v2

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->getStaticAidGroups(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {p0}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->getDynamicAidGroups(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/util/ArrayList;

    move-result-object v5

    .line 209
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->requiresUnlock()Z

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v8

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v9

    .line 208
    invoke-direct/range {v0 .. v9}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;)V

    .line 210
    .local v0, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-static {p0}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->loadBitmapBanner(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->setBitmapBanner(Landroid/nfc/cardemulation/ApduServiceInfo;Landroid/graphics/Bitmap;)Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 211
    invoke-static {p0}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->getBannerHashCode(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->setBannerHashCode(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 212
    invoke-static {p0}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->isStaticService(Landroid/nfc/cardemulation/ApduServiceInfo;)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->setStaticService(Landroid/nfc/cardemulation/ApduServiceInfo;Z)Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 213
    return-object v0
.end method

.method public static createFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 29
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    const/16 v22, 0x0

    .line 104
    .local v22, "strCurrKey":Ljava/lang/String;
    const/16 v23, 0x0

    .line 105
    .local v23, "strCurrPkgName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 107
    .local v5, "strCurrDesc":Ljava/lang/String;
    const/16 v21, 0x0

    .line 108
    .local v21, "strBannerHashCode":Ljava/lang/String;
    const/4 v10, 0x0

    .line 109
    .local v10, "nCurrUid":I
    const/16 v19, 0x0

    .line 111
    .local v19, "isStaticService":Z
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v16, "currentGroups":Ljava/util/ArrayList;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v17

    .line 114
    .local v17, "eventType":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v26

    .line 116
    .local v26, "tagName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 118
    .local v2, "apduServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :goto_18
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_28

    .line 201
    if-nez v2, :cond_26

    .line 202
    const-string v4, "ApduServiceInfoEx"

    const-string v8, "Could not finish parsing <service>"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    move-object v15, v2

    .line 204
    .end local v2    # "apduServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .local v15, "apduServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :goto_27
    return-object v15

    .line 119
    .end local v15    # "apduServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local v2    # "apduServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_28
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v26

    .line 120
    const/4 v4, 0x2

    move/from16 v0, v17

    if-ne v0, v4, :cond_ee

    .line 121
    const-string v4, "service"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v8, 0x2

    if-ne v4, v8, :cond_80

    .line 122
    const/4 v4, 0x0

    const-string v8, "key"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 123
    const/4 v4, 0x0

    const-string v8, "ServicePackageName"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 124
    const/4 v4, 0x0

    const-string v8, "Description"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 125
    const/4 v4, 0x0

    const-string v8, "uid"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 127
    .local v25, "strUid":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v8, "staticService"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 128
    .local v24, "strIsStaticService":Ljava/lang/String;
    if-eqz v22, :cond_79

    if-eqz v23, :cond_79

    if-eqz v5, :cond_79

    .line 129
    if-eqz v25, :cond_79

    if-nez v24, :cond_cd

    .line 130
    :cond_79
    const-string v4, "ApduServiceInfoEx"

    const-string v8, "Invalid service attributes"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local v24    # "strIsStaticService":Ljava/lang/String;
    .end local v25    # "strUid":Ljava/lang/String;
    :cond_80
    :goto_80
    const-string v4, "aid-group"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9e

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v8, 0x3

    if-ne v4, v8, :cond_9e

    .line 141
    invoke-static/range {p1 .. p1}, Landroid/nfc/cardemulation/AidGroup;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v18

    .line 142
    .local v18, "group":Landroid/nfc/cardemulation/AidGroup;
    if-eqz v18, :cond_e6

    .line 143
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v18    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_9e
    :goto_9e
    const-string v4, "banner"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c7

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v8, 0x3

    if-ne v4, v8, :cond_c7

    .line 149
    const/4 v4, 0x0

    const-string v8, "image"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 150
    if-eqz v21, :cond_c0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_c7

    .line 151
    :cond_c0
    const-string v4, "ApduServiceInfoEx"

    const-string v8, "Could not parse Banner Image."

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_c7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    goto/16 :goto_18

    .line 133
    .restart local v24    # "strIsStaticService":Ljava/lang/String;
    .restart local v25    # "strUid":Ljava/lang/String;
    :cond_cd
    :try_start_cd
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 134
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d4
    .catch Ljava/lang/NumberFormatException; {:try_start_cd .. :try_end_d4} :catch_dd

    move-result v4

    if-eqz v4, :cond_da

    const/16 v19, 0x1

    :goto_d9
    goto :goto_80

    :cond_da
    const/16 v19, 0x0

    goto :goto_d9

    .line 136
    :catch_dd
    move-exception v4

    const-string v4, "ApduServiceInfoEx"

    const-string v8, "Could not parse integer values"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 145
    .end local v24    # "strIsStaticService":Ljava/lang/String;
    .end local v25    # "strUid":Ljava/lang/String;
    .restart local v18    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_e6
    const-string v4, "ApduServiceInfoEx"

    const-string v8, "Could not parse AID group."

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 154
    .end local v18    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_ee
    const/4 v4, 0x3

    move/from16 v0, v17

    if-ne v0, v4, :cond_c7

    .line 155
    const-string v4, "service"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c7

    .line 157
    if-eqz v23, :cond_c7

    if-ltz v10, :cond_c7

    if-eqz v22, :cond_c7

    .line 159
    new-instance v20, Landroid/content/pm/ServiceInfo;

    invoke-direct/range {v20 .. v20}, Landroid/content/pm/ServiceInfo;-><init>()V

    .line 160
    .local v20, "serviceInfo":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 161
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 164
    :try_start_114
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v8, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_123
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_114 .. :try_end_123} :catch_162

    .line 171
    :goto_123
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 172
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v20

    iput-object v0, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 173
    iput-object v5, v3, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 175
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v6, "aidGroups":Ljava/util/ArrayList;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v7, "aidDynGroups":Ljava/util/ArrayList;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_191

    .line 187
    new-instance v2, Landroid/nfc/cardemulation/ApduServiceInfo;

    .end local v2    # "apduServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    const/4 v4, 0x0

    .line 188
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 187
    invoke-direct/range {v2 .. v11}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;)V

    .line 189
    .restart local v2    # "apduServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v21, :cond_1c4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v8, 0x40

    if-ne v4, v8, :cond_1c4

    .line 190
    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->setBannerHashCode(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 191
    move/from16 v0, v19

    invoke-static {v2, v0}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->setStaticService(Landroid/nfc/cardemulation/ApduServiceInfo;Z)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-object v15, v2

    .line 195
    .end local v2    # "apduServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local v15    # "apduServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    goto/16 :goto_27

    .line 166
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "aidGroups":Ljava/util/ArrayList;
    .end local v7    # "aidDynGroups":Ljava/util/ArrayList;
    .end local v15    # "apduServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local v2    # "apduServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catch_162
    move-exception v4

    const-string v4, "ApduServiceInfoEx"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getApplicationInfo("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", 0) - NameNotFoundException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v4, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4}, Landroid/content/pm/ApplicationInfo;-><init>()V

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 168
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v23

    iput-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_123

    .line 178
    .restart local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v6    # "aidGroups":Ljava/util/ArrayList;
    .restart local v7    # "aidDynGroups":Ljava/util/ArrayList;
    :cond_191
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/nfc/cardemulation/AidGroup;

    .line 179
    .local v13, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    new-instance v14, Landroid/nfc/cardemulation/AidGroup;

    invoke-virtual {v13}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13}, Landroid/nfc/cardemulation/AidGroupEx;->getDescription(Landroid/nfc/cardemulation/AidGroup;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v14, v8, v9}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .local v14, "aidGrp":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v13}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1ac
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1b6

    .line 183
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13c

    .line 180
    :cond_1b6
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 181
    .local v12, "aid":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1ac

    .line 193
    .end local v12    # "aid":Ljava/lang/String;
    .end local v13    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v14    # "aidGrp":Landroid/nfc/cardemulation/AidGroup;
    :cond_1c4
    new-instance v4, Ljava/io/IOException;

    const-string v8, "Banner Image is corrupted!"

    invoke-direct {v4, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getBannerHashCode(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/lang/String;
    .registers 7
    .param p0, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    const/4 v4, 0x0

    .line 1
    sget-object v0, Landroid/nfc/cardemulation/ApduServiceInfoEx;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, v4, v4, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {}, Landroid/nfc/cardemulation/AApduServiceInfo;->aspectOf()Landroid/nfc/cardemulation/AApduServiceInfo;

    move-result-object v2

    move-object v0, p0

    move-object v3, p0

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->getBannerHashCode_aroundBody5$advice(Landroid/nfc/cardemulation/ApduServiceInfo;Lorg/aspectj/lang/JoinPoint;Landroid/nfc/cardemulation/AApduServiceInfo;Landroid/nfc/cardemulation/ApduServiceInfo;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final getBannerHashCode_aroundBody4(Landroid/nfc/cardemulation/ApduServiceInfo;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/String;
    .registers 3
    .param p0, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 228
    const/4 v0, 0x0

    return-object v0
.end method

.method private static final getBannerHashCode_aroundBody5$advice(Landroid/nfc/cardemulation/ApduServiceInfo;Lorg/aspectj/lang/JoinPoint;Landroid/nfc/cardemulation/AApduServiceInfo;Landroid/nfc/cardemulation/ApduServiceInfo;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/String;
    .registers 12

    .prologue
    .line 88
    move-object v1, p0

    .local v1, "info":Landroid/nfc/cardemulation/ApduServiceInfo;
    move-object v2, p1

    .local v2, "thisJoinPoint":Lorg/aspectj/lang/JoinPoint;
    move-object v3, p2

    .local v3, "ajc$aspectInstance":Landroid/nfc/cardemulation/AApduServiceInfo;
    move-object v1, p3

    move-object v5, p4

    .local v5, "ajc$aroundClosure":Lorg/aspectj/runtime/internal/AroundClosure;
    move-object v2, p5

    if-nez v1, :cond_a

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_9
    return-object v0

    :cond_a
    invoke-static {v1}, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$interFieldGetDispatch$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mBannerHashCode(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public static getDynamicAidGroups(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/util/ArrayList;
    .registers 3
    .param p0, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    if-nez p0, :cond_4

    .line 70
    const/4 v0, 0x0

    .line 78
    :goto_3
    return-object v0

    .line 72
    :cond_4
    const/4 v0, 0x0

    .line 73
    .local v0, "groups":Ljava/util/ArrayList;
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_19

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "groups":Ljava/util/ArrayList;
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 75
    .restart local v0    # "groups":Ljava/util/ArrayList;
    goto :goto_3

    .line 76
    :cond_19
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "groups":Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "groups":Ljava/util/ArrayList;
    goto :goto_3
.end method

.method public static getPackageName(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    goto :goto_3
.end method

.method public static getService(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/content/pm/ResolveInfo;
    .registers 2
    .param p0, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 31
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    goto :goto_3
.end method

.method public static getServiceName(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 v0, 0x0

    .line 52
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    goto :goto_3
.end method

.method public static getStaticAidGroupForCategory(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;
    .registers 3
    .param p0, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 35
    if-nez p0, :cond_4

    .line 36
    const/4 v0, 0x0

    .line 38
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    goto :goto_3
.end method

.method public static getStaticAidGroups(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/util/ArrayList;
    .registers 3
    .param p0, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    .line 65
    :goto_3
    return-object v0

    .line 59
    :cond_4
    const/4 v0, 0x0

    .line 60
    .local v0, "groups":Ljava/util/ArrayList;
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_19

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "groups":Ljava/util/ArrayList;
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 62
    .restart local v0    # "groups":Ljava/util/ArrayList;
    goto :goto_3

    .line 63
    :cond_19
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "groups":Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "groups":Ljava/util/ArrayList;
    goto :goto_3
.end method

.method public static isStaticService(Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    .registers 7
    .param p0, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    const/4 v4, 0x0

    .line 1
    sget-object v0, Landroid/nfc/cardemulation/ApduServiceInfoEx;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, v4, v4, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {}, Landroid/nfc/cardemulation/AApduServiceInfo;->aspectOf()Landroid/nfc/cardemulation/AApduServiceInfo;

    move-result-object v2

    move-object v0, p0

    move-object v3, p0

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->isStaticService_aroundBody11$advice(Landroid/nfc/cardemulation/ApduServiceInfo;Lorg/aspectj/lang/JoinPoint;Landroid/nfc/cardemulation/AApduServiceInfo;Landroid/nfc/cardemulation/ApduServiceInfo;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    return v0
.end method

.method private static final isStaticService_aroundBody10(Landroid/nfc/cardemulation/ApduServiceInfo;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 3
    .param p0, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method private static final isStaticService_aroundBody11$advice(Landroid/nfc/cardemulation/ApduServiceInfo;Lorg/aspectj/lang/JoinPoint;Landroid/nfc/cardemulation/AApduServiceInfo;Landroid/nfc/cardemulation/ApduServiceInfo;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 12

    .prologue
    .line 96
    move-object v1, p0

    .local v1, "info":Landroid/nfc/cardemulation/ApduServiceInfo;
    move-object v2, p1

    .local v2, "thisJoinPoint":Lorg/aspectj/lang/JoinPoint;
    move-object v3, p2

    .local v3, "ajc$aspectInstance":Landroid/nfc/cardemulation/AApduServiceInfo;
    move-object v1, p3

    move-object v5, p4

    .local v5, "ajc$aroundClosure":Lorg/aspectj/runtime/internal/AroundClosure;
    move-object v2, p5

    if-nez v1, :cond_a

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_9
    return v0

    :cond_a
    invoke-static {v1}, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$interFieldGetDispatch$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mIsStaticService(Landroid/nfc/cardemulation/ApduServiceInfo;)Z

    move-result v0

    goto :goto_9
.end method

.method public static loadBitmapBanner(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    const/4 v4, 0x0

    .line 1
    sget-object v0, Landroid/nfc/cardemulation/ApduServiceInfoEx;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, v4, v4, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {}, Landroid/nfc/cardemulation/AApduServiceInfo;->aspectOf()Landroid/nfc/cardemulation/AApduServiceInfo;

    move-result-object v2

    move-object v0, p0

    move-object v3, p0

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->loadBitmapBanner_aroundBody3$advice(Landroid/nfc/cardemulation/ApduServiceInfo;Lorg/aspectj/lang/JoinPoint;Landroid/nfc/cardemulation/AApduServiceInfo;Landroid/nfc/cardemulation/ApduServiceInfo;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static final loadBitmapBanner_aroundBody2(Landroid/nfc/cardemulation/ApduServiceInfo;Lorg/aspectj/lang/JoinPoint;)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method private static final loadBitmapBanner_aroundBody3$advice(Landroid/nfc/cardemulation/ApduServiceInfo;Lorg/aspectj/lang/JoinPoint;Landroid/nfc/cardemulation/AApduServiceInfo;Landroid/nfc/cardemulation/ApduServiceInfo;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/graphics/Bitmap;
    .registers 12

    .prologue
    .line 80
    move-object v1, p0

    .local v1, "info":Landroid/nfc/cardemulation/ApduServiceInfo;
    move-object v2, p1

    .local v2, "thisJoinPoint":Lorg/aspectj/lang/JoinPoint;
    move-object v3, p2

    .local v3, "ajc$aspectInstance":Landroid/nfc/cardemulation/AApduServiceInfo;
    move-object v1, p3

    move-object v5, p4

    .local v5, "ajc$aroundClosure":Lorg/aspectj/runtime/internal/AroundClosure;
    move-object v2, p5

    if-nez v1, :cond_a

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_9
    return-object v0

    :cond_a
    invoke-static {v1}, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$interFieldGetDispatch$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mBannerResourceBitmap(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_9
.end method

.method public static setBannerHashCode(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 10
    .param p0, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p1, "hashcode"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1
    sget-object v0, Landroid/nfc/cardemulation/ApduServiceInfoEx;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, v6, v6, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Landroid/nfc/cardemulation/AApduServiceInfo;->aspectOf()Landroid/nfc/cardemulation/AApduServiceInfo;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p0

    move-object v5, p1

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->setBannerHashCode_aroundBody7$advice(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;Lorg/aspectj/lang/JoinPoint;Landroid/nfc/cardemulation/AApduServiceInfo;Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method private static final setBannerHashCode_aroundBody6(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;Lorg/aspectj/lang/JoinPoint;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 3
    .param p0, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p1, "hashcode"    # Ljava/lang/String;

    .prologue
    .line 233
    return-object p0
.end method

.method private static final setBannerHashCode_aroundBody7$advice(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;Lorg/aspectj/lang/JoinPoint;Landroid/nfc/cardemulation/AApduServiceInfo;Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 16

    .prologue
    .line 112
    move-object v1, p0

    .local v1, "info":Landroid/nfc/cardemulation/ApduServiceInfo;
    move-object v2, p1

    .local v2, "hashcode":Ljava/lang/String;
    move-object v3, p2

    .local v3, "thisJoinPoint":Lorg/aspectj/lang/JoinPoint;
    move-object v4, p3

    .local v4, "ajc$aspectInstance":Landroid/nfc/cardemulation/AApduServiceInfo;
    move-object v1, p4

    move-object v2, p5

    move-object v7, p6

    .local v7, "ajc$aroundClosure":Lorg/aspectj/runtime/internal/AroundClosure;
    move-object v3, p7

    if-nez v1, :cond_c

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_b
    return-object v0

    :cond_c
    invoke-static {v1, v2}, Landroid/nfc/cardemulation/AApduServiceInfo;->setBannerHashCode(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    goto :goto_b
.end method

.method public static setBitmapBanner(Landroid/nfc/cardemulation/ApduServiceInfo;Landroid/graphics/Bitmap;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 10
    .param p0, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p1, "banner"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 1
    sget-object v0, Landroid/nfc/cardemulation/ApduServiceInfoEx;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, v6, v6, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Landroid/nfc/cardemulation/AApduServiceInfo;->aspectOf()Landroid/nfc/cardemulation/AApduServiceInfo;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p0

    move-object v5, p1

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->setBitmapBanner_aroundBody1$advice(Landroid/nfc/cardemulation/ApduServiceInfo;Landroid/graphics/Bitmap;Lorg/aspectj/lang/JoinPoint;Landroid/nfc/cardemulation/AApduServiceInfo;Landroid/nfc/cardemulation/ApduServiceInfo;Landroid/graphics/Bitmap;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method private static final setBitmapBanner_aroundBody0(Landroid/nfc/cardemulation/ApduServiceInfo;Landroid/graphics/Bitmap;Lorg/aspectj/lang/JoinPoint;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 3
    .param p0, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p1, "banner"    # Landroid/graphics/Bitmap;

    .prologue
    .line 218
    return-object p0
.end method

.method private static final setBitmapBanner_aroundBody1$advice(Landroid/nfc/cardemulation/ApduServiceInfo;Landroid/graphics/Bitmap;Lorg/aspectj/lang/JoinPoint;Landroid/nfc/cardemulation/AApduServiceInfo;Landroid/nfc/cardemulation/ApduServiceInfo;Landroid/graphics/Bitmap;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 16

    .prologue
    .line 104
    move-object v1, p0

    .local v1, "info":Landroid/nfc/cardemulation/ApduServiceInfo;
    move-object v2, p1

    .local v2, "banner":Landroid/graphics/Bitmap;
    move-object v3, p2

    .local v3, "thisJoinPoint":Lorg/aspectj/lang/JoinPoint;
    move-object v4, p3

    .local v4, "ajc$aspectInstance":Landroid/nfc/cardemulation/AApduServiceInfo;
    move-object v1, p4

    move-object v6, p5

    .local v6, "bitmap":Landroid/graphics/Bitmap;
    move-object v7, p6

    .local v7, "ajc$aroundClosure":Lorg/aspectj/runtime/internal/AroundClosure;
    move-object v3, p7

    if-nez v1, :cond_c

    .line 105
    const/4 v0, 0x0

    .line 107
    :goto_b
    return-object v0

    :cond_c
    invoke-static {v1, v6}, Landroid/nfc/cardemulation/AApduServiceInfo;->setBitmapBanner(Landroid/nfc/cardemulation/ApduServiceInfo;Landroid/graphics/Bitmap;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    goto :goto_b
.end method

.method public static setStaticService(Landroid/nfc/cardemulation/ApduServiceInfo;Z)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 10
    .param p0, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p1, "isStaticService"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1
    sget-object v0, Landroid/nfc/cardemulation/ApduServiceInfoEx;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v6, v6, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Landroid/nfc/cardemulation/AApduServiceInfo;->aspectOf()Landroid/nfc/cardemulation/AApduServiceInfo;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move-object v4, p0

    move v5, p1

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->setStaticService_aroundBody9$advice(Landroid/nfc/cardemulation/ApduServiceInfo;ZLorg/aspectj/lang/JoinPoint;Landroid/nfc/cardemulation/AApduServiceInfo;Landroid/nfc/cardemulation/ApduServiceInfo;ZLorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method private static final setStaticService_aroundBody8(Landroid/nfc/cardemulation/ApduServiceInfo;ZLorg/aspectj/lang/JoinPoint;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 3
    .param p0, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p1, "isStaticService"    # Z

    .prologue
    .line 238
    return-object p0
.end method

.method private static final setStaticService_aroundBody9$advice(Landroid/nfc/cardemulation/ApduServiceInfo;ZLorg/aspectj/lang/JoinPoint;Landroid/nfc/cardemulation/AApduServiceInfo;Landroid/nfc/cardemulation/ApduServiceInfo;ZLorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 16

    .prologue
    .line 120
    move-object v1, p0

    .local v1, "info":Landroid/nfc/cardemulation/ApduServiceInfo;
    move v2, p1

    .local v2, "isStaticService":Z
    move-object v3, p2

    .local v3, "thisJoinPoint":Lorg/aspectj/lang/JoinPoint;
    move-object v4, p3

    .local v4, "ajc$aspectInstance":Landroid/nfc/cardemulation/AApduServiceInfo;
    move-object v1, p4

    move v2, p5

    move-object v7, p6

    .local v7, "ajc$aroundClosure":Lorg/aspectj/runtime/internal/AroundClosure;
    move-object v3, p7

    if-nez v1, :cond_c

    .line 121
    const/4 v0, 0x0

    .line 123
    :goto_b
    return-object v0

    :cond_c
    invoke-static {v1, v2}, Landroid/nfc/cardemulation/AApduServiceInfo;->setStaticService(Landroid/nfc/cardemulation/ApduServiceInfo;Z)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    goto :goto_b
.end method

.method public static writeAsXml(Landroid/nfc/cardemulation/ApduServiceInfo;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .param p0, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 82
    const-string v1, "service"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    const-string v1, "key"

    invoke-static {p0}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->getServiceName(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    const-string v1, "ServicePackageName"

    invoke-static {p0}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->getPackageName(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    const-string v1, "Description"

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    const-string v1, "uid"

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    const-string v2, "staticService"

    invoke-static {p0}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->isStaticService(Landroid/nfc/cardemulation/ApduServiceInfo;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v1, 0x1

    :goto_37
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    invoke-static {p0}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->getStaticAidGroups(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_67

    .line 94
    const-string v1, "banner"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    const-string v1, "image"

    invoke-static {p0}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->getBannerHashCode(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    const-string v1, "banner"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    const-string v1, "service"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    return-void

    .line 88
    :cond_65
    const/4 v1, 0x0

    goto :goto_37

    .line 91
    :cond_67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 92
    .local v0, "group":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v0, p1}, Landroid/nfc/cardemulation/AidGroup;->writeAsXml(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_46
.end method
