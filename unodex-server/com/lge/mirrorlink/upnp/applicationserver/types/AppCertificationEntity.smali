.class public Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;
.super Lcom/lge/mirrorlink/common/XMLElement;
.source "AppCertificationEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity$RestrictionLocale;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_UPnP"


# instance fields
.field public name:Ljava/lang/String;

.field public nonRestricted:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity$RestrictionLocale;",
            ">;"
        }
    .end annotation
.end field

.field public restricted:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity$RestrictionLocale;",
            ">;"
        }
    .end annotation
.end field

.field public serviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public targetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Lcom/lge/mirrorlink/common/XMLElement;-><init>()V

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->name:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->targetList:Ljava/util/List;

    .line 30
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->restricted:Ljava/util/List;

    .line 31
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->nonRestricted:Ljava/util/List;

    .line 32
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->serviceList:Ljava/util/List;

    .line 15
    return-void
.end method


# virtual methods
.method public fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 20
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 135
    const/4 v12, 0x0

    .line 136
    .local v12, "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 138
    .local v10, "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .local v5, "eventType":I
    move-object v11, v10

    .local v11, "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v13, v12

    .line 139
    .end local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v13, "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_8
    const/4 v15, 0x1

    if-eq v5, v15, :cond_1cb

    .line 140
    if-nez v5, :cond_16

    :cond_d
    :goto_d
    move-object v10, v11

    .end local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v10, "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v12, v13

    .line 212
    .end local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v12, "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_12} :catch_1cd
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_1d0

    move-result v5

    move-object v11, v10

    .end local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v13, v12

    .end local v12    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_8

    .line 142
    :cond_16
    const/4 v15, 0x1

    if-eq v5, v15, :cond_d

    .line 144
    const/4 v15, 0x2

    if-ne v5, v15, :cond_186

    .line 147
    :try_start_1c
    const-string/jumbo v15, "name"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_38

    .line 148
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->name:Ljava/lang/String;

    move-object v10, v11

    .end local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v12, v13

    .end local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_f

    .line 149
    .end local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_38
    const-string/jumbo v15, "targetList"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4c

    .line 150
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .end local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v10, v11

    .end local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_f

    .line 151
    .end local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4c
    const-string/jumbo v15, "target"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6b

    .line 152
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/lge/mirrorlink/common/StringUtil;->trimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 153
    .local v14, "text":Ljava/lang/String;
    if-eqz v14, :cond_d

    .line 154
    if-eqz v13, :cond_d

    .line 155
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v10, v11

    .end local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v12, v13

    .end local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_f

    .line 158
    .end local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "text":Ljava/lang/String;
    .restart local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6b
    const-string/jumbo v15, "restricted"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_85

    const-string/jumbo v15, "nonRestricted"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_151

    .line 160
    :cond_85
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/lge/mirrorlink/common/StringUtil;->trimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 161
    .restart local v14    # "text":Ljava/lang/String;
    if-eqz v14, :cond_d

    .line 162
    invoke-static {v14}, Lcom/lge/mirrorlink/common/StringUtil;->CommaSeparatedStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 163
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_e6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_e6

    .line 164
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v9, "locales":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity$RestrictionLocale;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "locale$iterator":Ljava/util/Iterator;
    :goto_a4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_134

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_b0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_b0} :catch_d6
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_b0} :catch_124

    .line 167
    .local v7, "locale":Ljava/lang/String;
    :try_start_b0
    invoke-static {v7}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity$RestrictionLocale;->valueOf(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity$RestrictionLocale;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b0 .. :try_end_b7} :catch_b8
    .catch Ljava/lang/NullPointerException; {:try_start_b0 .. :try_end_b7} :catch_ea
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b0 .. :try_end_b7} :catch_d6
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b7} :catch_124

    goto :goto_a4

    .line 168
    :catch_b8
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_b9
    const-string/jumbo v15, "MirrorLink_UPnP"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Invalid Locale Name in XML : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b9 .. :try_end_d5} :catch_d6
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_d5} :catch_124

    goto :goto_a4

    .line 214
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "locale":Ljava/lang/String;
    .end local v8    # "locale$iterator":Ljava/util/Iterator;
    .end local v9    # "locales":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity$RestrictionLocale;>;"
    .end local v14    # "text":Ljava/lang/String;
    :catch_d6
    move-exception v3

    .local v3, "e1":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v10, v11

    .end local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v12, v13

    .line 215
    .end local v5    # "eventType":I
    .end local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_d9
    const-string/jumbo v15, "MirrorLink_UPnP"

    const-string/jumbo v16, "AppCertificationEntity.fromXML : XmlPullParserException"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    const/4 v15, 0x0

    return v15

    .end local v3    # "e1":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v5    # "eventType":I
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "text":Ljava/lang/String;
    :cond_e6
    move-object v10, v11

    .end local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v12, v13

    .line 163
    .end local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_f

    .line 170
    .end local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "locale":Ljava/lang/String;
    .restart local v8    # "locale$iterator":Ljava/util/Iterator;
    .restart local v9    # "locales":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity$RestrictionLocale;>;"
    .restart local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_ea
    move-exception v2

    .line 171
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_eb
    const-string/jumbo v15, "MirrorLink_UPnP"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Null Locale Name in XML ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ") list size="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " -> "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_123
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_eb .. :try_end_123} :catch_d6
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_123} :catch_124

    goto :goto_a4

    .line 217
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "locale":Ljava/lang/String;
    .end local v8    # "locale$iterator":Ljava/util/Iterator;
    .end local v9    # "locales":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity$RestrictionLocale;>;"
    .end local v14    # "text":Ljava/lang/String;
    :catch_124
    move-exception v4

    .local v4, "e2":Ljava/io/IOException;
    move-object v10, v11

    .end local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v12, v13

    .line 218
    .end local v5    # "eventType":I
    .end local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_127
    const-string/jumbo v15, "MirrorLink_UPnP"

    const-string/jumbo v16, "AppCertificationEntity.fromXML : IOException"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    const/4 v15, 0x0

    return v15

    .line 175
    .end local v4    # "e2":Ljava/io/IOException;
    .restart local v5    # "eventType":I
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "locale$iterator":Ljava/util/Iterator;
    .restart local v9    # "locales":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity$RestrictionLocale;>;"
    .restart local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "text":Ljava/lang/String;
    :cond_134
    :try_start_134
    const-string/jumbo v15, "restricted"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_149

    .line 176
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->restricted:Ljava/util/List;

    move-object v10, v11

    .end local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v12, v13

    .end local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_f

    .line 178
    .end local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_149
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->nonRestricted:Ljava/util/List;

    move-object v10, v11

    .end local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v12, v13

    .end local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_f

    .line 182
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "locale$iterator":Ljava/util/Iterator;
    .end local v9    # "locales":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity$RestrictionLocale;>;"
    .end local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "text":Ljava/lang/String;
    .restart local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_151
    const-string/jumbo v15, "serviceList"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_166

    .line 183
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .end local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v12, v13

    .end local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_f

    .line 184
    .end local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_166
    const-string/jumbo v15, "service"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 185
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/lge/mirrorlink/common/StringUtil;->trimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 186
    .restart local v14    # "text":Ljava/lang/String;
    if-eqz v14, :cond_d

    .line 187
    if-eqz v11, :cond_d

    .line 188
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v10, v11

    .end local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v12, v13

    .end local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_f

    .line 193
    .end local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "text":Ljava/lang/String;
    .restart local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_186
    const/4 v15, 0x3

    if-ne v5, v15, :cond_1c6

    .line 195
    const-string/jumbo v15, "targetList"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1a0

    .line 196
    if-eqz v13, :cond_d

    .line 197
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->targetList:Ljava/util/List;

    move-object v10, v11

    .end local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v12, v13

    .end local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_f

    .line 200
    .end local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1a0
    const-string/jumbo v15, "serviceList"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1b7

    .line 201
    if-eqz v11, :cond_d

    .line 202
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->serviceList:Ljava/util/List;

    move-object v10, v11

    .end local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v12, v13

    .end local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_f

    .line 204
    .end local v10    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1b7
    const-string/jumbo v15, "entity"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1c1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_134 .. :try_end_1c1} :catch_d6
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_1c1} :catch_124

    move-result v15

    if-eqz v15, :cond_d

    .line 205
    const/4 v15, 0x1

    return v15

    .line 207
    :cond_1c6
    const/4 v15, 0x4

    if-ne v5, v15, :cond_d

    goto/16 :goto_d

    .line 222
    :cond_1cb
    const/4 v15, 0x0

    return v15

    .line 214
    .end local v5    # "eventType":I
    .end local v11    # "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1cd
    move-exception v3

    .restart local v3    # "e1":Lorg/xmlpull/v1/XmlPullParserException;
    goto/16 :goto_d9

    .line 217
    .end local v3    # "e1":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1d0
    move-exception v4

    .restart local v4    # "e2":Ljava/io/IOException;
    goto/16 :goto_127
.end method

.method public getEntityname()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 286
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->name:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 287
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/lge/mirrorlink/common/StringUtil;->encodeXMLText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 289
    :cond_c
    return-object v1
.end method

.method public getEntitynonrestricted()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 300
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->nonRestricted:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->nonRestricted:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 301
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->nonRestricted:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 303
    :cond_14
    return-object v1
.end method

.method public getEntityrestricted()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 293
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->restricted:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->restricted:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 294
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->restricted:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 296
    :cond_14
    return-object v1
.end method

.method public hasRequiredElements()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->name:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 127
    :cond_d
    return v1

    .line 130
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public makeXMLString(Z)Ljava/lang/String;
    .registers 11
    .param p1, "isDriveCertified"    # Z

    .prologue
    const/4 v8, 0x0

    .line 227
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->hasRequiredElements()Z

    move-result v6

    if-nez v6, :cond_b

    .line 228
    const-string/jumbo v6, ""

    return-object v6

    .line 231
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 233
    .local v3, "strXML":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "<entity>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string/jumbo v6, "<name>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/lge/mirrorlink/common/StringUtil;->encodeXMLText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string/jumbo v6, "</name>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->targetList:Ljava/util/List;

    if-eqz v6, :cond_e3

    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->targetList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_e3

    .line 240
    const-string/jumbo v6, "<targetList>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->targetList:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "target$iterator":Ljava/util/Iterator;
    :goto_45
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_63

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 242
    .local v4, "target":Ljava/lang/String;
    const-string/jumbo v6, "<target>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</target>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 244
    .end local v4    # "target":Ljava/lang/String;
    :cond_63
    const-string/jumbo v6, "</targetList>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .end local v5    # "target$iterator":Ljava/util/Iterator;
    :goto_69
    if-eqz p1, :cond_ea

    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->restricted:Ljava/util/List;

    if-eqz v6, :cond_ea

    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->restricted:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_ea

    .line 250
    const-string/jumbo v6, "<restricted>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->restricted:Ljava/util/List;

    invoke-static {v6, v8}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string/jumbo v6, "</restricted>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :goto_8c
    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->nonRestricted:Ljava/util/List;

    if-eqz v6, :cond_f1

    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->nonRestricted:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_f1

    .line 258
    const-string/jumbo v6, "<nonRestricted>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->nonRestricted:Ljava/util/List;

    invoke-static {v6, v8}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string/jumbo v6, "</nonRestricted>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :goto_ad
    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->serviceList:Ljava/util/List;

    if-eqz v6, :cond_112

    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->serviceList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_112

    .line 267
    const-string/jumbo v6, "<serviceList>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->serviceList:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "service$iterator":Ljava/util/Iterator;
    :goto_c5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 269
    .local v1, "service":Ljava/lang/String;
    const-string/jumbo v6, "<service>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</service>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c5

    .line 246
    .end local v1    # "service":Ljava/lang/String;
    .end local v2    # "service$iterator":Ljava/util/Iterator;
    :cond_e3
    const-string/jumbo v6, "<targetList><target/></targetList>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_69

    .line 254
    :cond_ea
    const-string/jumbo v6, "<restricted></restricted>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8c

    .line 262
    :cond_f1
    const-string/jumbo v6, "<nonRestricted></nonRestricted>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ad

    .line 271
    .restart local v2    # "service$iterator":Ljava/util/Iterator;
    :cond_f8
    const-string/jumbo v6, "</serviceList>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .end local v2    # "service$iterator":Ljava/util/Iterator;
    :goto_fe
    const-string/jumbo v6, "</entity>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-static {}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->getInstance()Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v0

    .line 278
    .local v0, "commonAPIMgr":Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    if-eqz v0, :cond_10d

    .line 279
    invoke-virtual {v0}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->onCertificationStatusChanged()V

    .line 281
    :cond_10d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 273
    .end local v0    # "commonAPIMgr":Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    :cond_112
    const-string/jumbo v6, "<serviceList><service/></serviceList>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_fe
.end method

.method public matchesFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;

    .prologue
    .line 37
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 38
    :cond_4
    const/4 v10, 0x1

    return v10

    .line 41
    :cond_6
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->hasRequiredElements()Z

    move-result v10

    if-nez v10, :cond_e

    .line 42
    const/4 v10, 0x0

    return v10

    .line 46
    :cond_e
    :try_start_e
    const-string/jumbo v10, "name"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3b

    .line 47
    iget-object v10, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->name:Ljava/lang/String;

    invoke-static {v10, p2}, Lcom/lge/mirrorlink/common/StringUtil;->matchesFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_192

    .line 48
    const-string/jumbo v10, "MirrorLink_UPnP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "check cert Filter: added by "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v10, 0x1

    return v10

    .line 51
    :cond_3b
    const-string/jumbo v10, "targetList@target"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9a

    .line 52
    iget-object v10, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->targetList:Ljava/util/List;

    if-nez v10, :cond_4a

    .line 53
    const/4 v10, 0x0

    return v10

    .line 55
    :cond_4a
    iget-object v10, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->targetList:Ljava/util/List;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "target$iterator":Ljava/util/Iterator;
    :cond_50
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 56
    .local v8, "target":Ljava/lang/String;
    invoke-static {v8, p2}, Lcom/lge/mirrorlink/common/StringUtil;->matchesFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_50

    .line 57
    const-string/jumbo v10, "MirrorLink_UPnP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "check cert Filter: added by "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v10, 0x1

    return v10

    .line 61
    .end local v8    # "target":Ljava/lang/String;
    :cond_7e
    const-string/jumbo v10, "MirrorLink_UPnP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "check cert Filter: not added by "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v10, 0x0

    return v10

    .line 63
    .end local v9    # "target$iterator":Ljava/util/Iterator;
    :cond_9a
    const-string/jumbo v10, "serviceList@service"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_df

    .line 64
    iget-object v10, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->serviceList:Ljava/util/List;

    if-nez v10, :cond_a9

    .line 65
    const/4 v10, 0x0

    return v10

    .line 67
    :cond_a9
    iget-object v10, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->serviceList:Ljava/util/List;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "service$iterator":Ljava/util/Iterator;
    :cond_af
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_dd

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 68
    .local v6, "service":Ljava/lang/String;
    invoke-static {v6, p2}, Lcom/lge/mirrorlink/common/StringUtil;->matchesFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_af

    .line 69
    const-string/jumbo v10, "MirrorLink_UPnP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "check cert Filter: added by "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v10, 0x1

    return v10

    .line 73
    .end local v6    # "service":Ljava/lang/String;
    :cond_dd
    const/4 v10, 0x0

    return v10

    .line 74
    .end local v7    # "service$iterator":Ljava/util/Iterator;
    :cond_df
    const-string/jumbo v10, "restricted"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b9

    .line 75
    iget-object v10, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->restricted:Ljava/util/List;

    if-nez v10, :cond_ee

    .line 76
    const/4 v10, 0x0

    return v10

    .line 78
    :cond_ee
    invoke-static {p2}, Lcom/lge/mirrorlink/common/StringUtil;->CommaSeparatedStringToList(Ljava/lang/String;)Ljava/util/List;
    :try_end_f1
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_f1} :catch_165

    move-result-object v5

    .line 80
    .local v5, "localesInFilter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_f2
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "locale$iterator":Ljava/util/Iterator;
    :cond_f6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 81
    .local v3, "locale":Ljava/lang/String;
    iget-object v10, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->restricted:Ljava/util/List;

    invoke-static {v3}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity$RestrictionLocale;->valueOf(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity$RestrictionLocale;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f6

    .line 82
    const-string/jumbo v10, "MirrorLink_UPnP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "check cert Filter: added by "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_128
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f2 .. :try_end_128} :catch_149
    .catch Ljava/lang/NullPointerException; {:try_start_f2 .. :try_end_128} :catch_12c
    .catch Ljava/lang/NumberFormatException; {:try_start_f2 .. :try_end_128} :catch_165

    .line 83
    const/4 v10, 0x0

    return v10

    .line 86
    .end local v3    # "locale":Ljava/lang/String;
    :cond_12a
    const/4 v10, 0x1

    return v10

    .line 89
    .end local v4    # "locale$iterator":Ljava/util/Iterator;
    :catch_12c
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/NullPointerException;
    :try_start_12d
    const-string/jumbo v10, "MirrorLink_UPnP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Null Locale Name in Filter : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_147
    const/4 v10, 0x0

    return v10

    .line 87
    :catch_149
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v10, "MirrorLink_UPnP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Invalid Locale Name in Filter : restricted="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_164
    .catch Ljava/lang/NumberFormatException; {:try_start_12d .. :try_end_164} :catch_165

    goto :goto_147

    .line 115
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "localesInFilter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_165
    move-exception v2

    .line 116
    .local v2, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v10, "MirrorLink_UPnP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Invalid AppListingFilter with \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :cond_192
    const-string/jumbo v10, "MirrorLink_UPnP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "check cert Filter: added by "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " value:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v10, 0x0

    return v10

    .line 93
    :cond_1b9
    :try_start_1b9
    const-string/jumbo v10, "nonRestricted"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_192

    .line 94
    iget-object v10, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->nonRestricted:Ljava/util/List;

    if-nez v10, :cond_1c8

    .line 95
    const/4 v10, 0x0

    return v10

    .line 97
    :cond_1c8
    invoke-static {p2}, Lcom/lge/mirrorlink/common/StringUtil;->CommaSeparatedStringToList(Ljava/lang/String;)Ljava/util/List;
    :try_end_1cb
    .catch Ljava/lang/NumberFormatException; {:try_start_1b9 .. :try_end_1cb} :catch_165

    move-result-object v5

    .line 99
    .restart local v5    # "localesInFilter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1cc
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "locale$iterator":Ljava/util/Iterator;
    :cond_1d0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_204

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 100
    .restart local v3    # "locale":Ljava/lang/String;
    iget-object v10, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->nonRestricted:Ljava/util/List;

    invoke-static {v3}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity$RestrictionLocale;->valueOf(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity$RestrictionLocale;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d0

    .line 101
    const-string/jumbo v10, "MirrorLink_UPnP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "check cert Filter: not added by "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v10, 0x0

    return v10

    .line 105
    .end local v3    # "locale":Ljava/lang/String;
    :cond_204
    const-string/jumbo v10, "MirrorLink_UPnP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "check cert Filter: added by "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1cc .. :try_end_21e} :catch_257
    .catch Ljava/lang/NullPointerException; {:try_start_1cc .. :try_end_21e} :catch_220
    .catch Ljava/lang/NumberFormatException; {:try_start_1cc .. :try_end_21e} :catch_165

    .line 106
    const/4 v10, 0x1

    return v10

    .line 109
    .end local v4    # "locale$iterator":Ljava/util/Iterator;
    :catch_220
    move-exception v1

    .line 110
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    :try_start_221
    const-string/jumbo v10, "MirrorLink_UPnP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Null Locale Name in Filter : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_23b
    const-string/jumbo v10, "MirrorLink_UPnP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "check cert Filter: not added by "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v10, 0x0

    return v10

    .line 107
    :catch_257
    move-exception v0

    .line 108
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v10, "MirrorLink_UPnP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Invalid Locale Name in Filter : nonRestricted="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_272
    .catch Ljava/lang/NumberFormatException; {:try_start_221 .. :try_end_272} :catch_165

    goto :goto_23b
.end method
