.class public Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;
.super Lcom/lge/mirrorlink/common/XMLElement;
.source "IconPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_UPnP"


# instance fields
.field public depth:I

.field public height:I

.field public mimetype:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Lcom/lge/mirrorlink/common/XMLElement;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->mimetype:Ljava/lang/String;

    .line 18
    iput v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->width:I

    .line 19
    iput v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->height:I

    .line 20
    iput v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->depth:I

    .line 12
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    move-object v0, p1

    .line 36
    check-cast v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;

    .line 38
    .local v0, "that":Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;
    if-nez v0, :cond_8

    .line 39
    return v3

    .line 41
    :cond_8
    if-ne p0, v0, :cond_b

    .line 42
    return v4

    .line 45
    :cond_b
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->mimetype:Ljava/lang/String;

    iget-object v2, v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 46
    return v3

    .line 49
    :cond_16
    iget v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->width:I

    iget v2, v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->width:I

    if-eq v1, v2, :cond_1d

    .line 50
    return v3

    .line 53
    :cond_1d
    iget v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->height:I

    iget v2, v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->height:I

    if-eq v1, v2, :cond_24

    .line 54
    return v3

    .line 57
    :cond_24
    iget v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->depth:I

    iget v2, v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->depth:I

    if-eq v1, v2, :cond_2b

    .line 58
    return v3

    .line 61
    :cond_2b
    return v4
.end method

.method public fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 12
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 67
    :try_start_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 68
    .local v2, "eventType":I
    :goto_6
    if-eq v2, v9, :cond_112

    .line 69
    if-nez v2, :cond_f

    .line 115
    :cond_a
    :goto_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_6

    .line 71
    :cond_f
    if-eq v2, v9, :cond_a

    .line 73
    const/4 v5, 0x2

    if-ne v2, v5, :cond_fc

    .line 75
    const-string/jumbo v5, "mimetype"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 76
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->mimetype:Ljava/lang/String;
    :try_end_27
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_27} :catch_28
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_27} :catch_71

    goto :goto_a

    .line 117
    .end local v2    # "eventType":I
    :catch_28
    move-exception v0

    .line 118
    .local v0, "e1":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v5, "MirrorLink_UPnP"

    const-string/jumbo v6, "IconPreference.fromXML : XmlPullParserException"

    invoke-static {v5, v6, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    return v8

    .line 77
    .end local v0    # "e1":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "eventType":I
    :cond_33
    :try_start_33
    const-string/jumbo v5, "width"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 78
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_43} :catch_28
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_43} :catch_71

    move-result-object v4

    .line 79
    .local v4, "text":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 81
    :try_start_46
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->width:I
    :try_end_54
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_54} :catch_55
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_54} :catch_28
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_54} :catch_71

    goto :goto_a

    .line 82
    :catch_55
    move-exception v3

    .line 83
    .local v3, "ex":Ljava/lang/NumberFormatException;
    :try_start_56
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[IconPreference.fromXML] invalid width : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_56 .. :try_end_70} :catch_28
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_70} :catch_71

    goto :goto_a

    .line 120
    .end local v2    # "eventType":I
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "text":Ljava/lang/String;
    :catch_71
    move-exception v1

    .line 121
    .local v1, "e2":Ljava/io/IOException;
    const-string/jumbo v5, "MirrorLink_UPnP"

    const-string/jumbo v6, "IconPreference.fromXML : IOException"

    invoke-static {v5, v6, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    return v8

    .line 86
    .end local v1    # "e2":Ljava/io/IOException;
    .restart local v2    # "eventType":I
    :cond_7c
    :try_start_7c
    const-string/jumbo v5, "height"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 87
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_8c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7c .. :try_end_8c} :catch_28
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_8c} :catch_71

    move-result-object v4

    .line 88
    .restart local v4    # "text":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 90
    :try_start_8f
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->height:I
    :try_end_9d
    .catch Ljava/lang/NumberFormatException; {:try_start_8f .. :try_end_9d} :catch_9f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8f .. :try_end_9d} :catch_28
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_9d} :catch_71

    goto/16 :goto_a

    .line 91
    :catch_9f
    move-exception v3

    .line 92
    .restart local v3    # "ex":Ljava/lang/NumberFormatException;
    :try_start_a0
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[IconPreference.fromXML] invalid height : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 95
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "text":Ljava/lang/String;
    :cond_bc
    const-string/jumbo v5, "depth"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 96
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_cc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a0 .. :try_end_cc} :catch_28
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_cc} :catch_71

    move-result-object v4

    .line 97
    .restart local v4    # "text":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 99
    :try_start_cf
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->depth:I
    :try_end_dd
    .catch Ljava/lang/NumberFormatException; {:try_start_cf .. :try_end_dd} :catch_df
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_cf .. :try_end_dd} :catch_28
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_dd} :catch_71

    goto/16 :goto_a

    .line 100
    :catch_df
    move-exception v3

    .line 101
    .restart local v3    # "ex":Ljava/lang/NumberFormatException;
    :try_start_e0
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[IconPreference.fromXML] invalid height : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 105
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "text":Ljava/lang/String;
    :cond_fc
    const/4 v5, 0x3

    if-ne v2, v5, :cond_10d

    .line 106
    const-string/jumbo v5, "iconPreference"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_109
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e0 .. :try_end_109} :catch_28
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_109} :catch_71

    move-result v5

    if-eqz v5, :cond_a

    .line 107
    return v9

    .line 110
    :cond_10d
    const/4 v5, 0x4

    if-ne v2, v5, :cond_a

    goto/16 :goto_a

    .line 125
    :cond_112
    return v8
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 24
    const/16 v0, 0x1f

    .line 26
    .local v0, "prime":I
    iget v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->depth:I

    add-int/lit8 v1, v2, 0x1f

    .line 27
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->height:I

    add-int v1, v2, v3

    .line 28
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->mimetype:Ljava/lang/String;

    if-nez v2, :cond_1c

    const/4 v2, 0x0

    :goto_13
    add-int v1, v3, v2

    .line 29
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->width:I

    add-int v1, v2, v3

    .line 30
    return v1

    .line 28
    :cond_1c
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->mimetype:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_13
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->hasRequiredElements()Z

    move-result v1

    if-nez v1, :cond_b

    .line 131
    const-string/jumbo v1, ""

    return-object v1

    .line 134
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v0, "strXML":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->mimetype:Ljava/lang/String;

    invoke-static {v1}, Lcom/lge/mirrorlink/common/StringUtil;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 137
    const-string/jumbo v1, "<mimetype>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</mimetype>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_2b
    iget v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->width:I

    if-lez v1, :cond_42

    .line 141
    const-string/jumbo v1, "<width>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</width>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_42
    iget v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->height:I

    if-lez v1, :cond_59

    .line 145
    const-string/jumbo v1, "<height>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</height>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_59
    iget v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->depth:I

    if-lez v1, :cond_70

    .line 149
    const-string/jumbo v1, "<depth>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->depth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</depth>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_82

    .line 153
    const-string/jumbo v1, "<iconPreference>\n"

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string/jumbo v1, "</iconPreference>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
