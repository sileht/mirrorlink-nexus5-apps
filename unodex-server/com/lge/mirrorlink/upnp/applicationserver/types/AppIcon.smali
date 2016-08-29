.class public Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;
.super Lcom/lge/mirrorlink/common/XMLElement;
.source "AppIcon.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_UPnP"


# instance fields
.field public bytes:[B

.field public depth:I

.field public height:I

.field public mimetype:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/lge/mirrorlink/common/XMLElement;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->mimetype:Ljava/lang/String;

    .line 25
    iput v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->width:I

    .line 26
    iput v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->height:I

    .line 27
    iput v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->depth:I

    .line 28
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->url:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->bytes:[B

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 8
    .param p1, "mimetype"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "depth"    # I
    .param p5, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lcom/lge/mirrorlink/common/XMLElement;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->mimetype:Ljava/lang/String;

    .line 25
    iput v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->width:I

    .line 26
    iput v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->height:I

    .line 27
    iput v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->depth:I

    .line 28
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->url:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->bytes:[B

    .line 39
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->mimetype:Ljava/lang/String;

    .line 40
    iput p2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->width:I

    .line 41
    iput p3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->height:I

    .line 42
    iput p4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->depth:I

    .line 43
    iput-object p5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->url:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public applyClientProfile(Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;)V
    .registers 3
    .param p1, "profile"    # Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    .prologue
    .line 48
    if-eqz p1, :cond_1e

    iget-object v0, p1, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->iconPreference:Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;

    if-eqz v0, :cond_1e

    .line 49
    iget-object v0, p1, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->iconPreference:Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;

    iget-object v0, v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->mimetype:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->mimetype:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->iconPreference:Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;

    iget v0, v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->width:I

    iput v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->width:I

    .line 51
    iget-object v0, p1, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->iconPreference:Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;

    iget v0, v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->height:I

    iput v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->height:I

    .line 52
    iget-object v0, p1, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->iconPreference:Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;

    iget v0, v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->depth:I

    iput v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->depth:I

    .line 46
    :cond_1e
    return-void
.end method

.method public fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 12
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 119
    :try_start_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 120
    .local v2, "eventType":I
    :goto_6
    if-eq v2, v9, :cond_169

    .line 121
    if-nez v2, :cond_f

    .line 179
    :cond_a
    :goto_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_6

    .line 123
    :cond_f
    if-eq v2, v9, :cond_a

    .line 125
    const/4 v5, 0x2

    if-ne v2, v5, :cond_111

    .line 128
    const-string/jumbo v5, "mimetype"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 129
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->mimetype:Ljava/lang/String;
    :try_end_27
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_27} :catch_28
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_27} :catch_71

    goto :goto_a

    .line 181
    .end local v2    # "eventType":I
    :catch_28
    move-exception v0

    .line 182
    .local v0, "e1":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v5, "MirrorLink_UPnP"

    const-string/jumbo v6, "iconList.fromXML : XmlPullParserException"

    invoke-static {v5, v6, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    return v8

    .line 130
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

    .line 131
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_43} :catch_28
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_43} :catch_71

    move-result-object v4

    .line 132
    .local v4, "text":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 134
    :try_start_46
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->width:I
    :try_end_54
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_54} :catch_55
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_54} :catch_28
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_54} :catch_71

    goto :goto_a

    .line 135
    :catch_55
    move-exception v3

    .line 136
    .local v3, "ex":Ljava/lang/NumberFormatException;
    :try_start_56
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[AppIcon.fromXML] invalid width : "

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

    .line 184
    .end local v2    # "eventType":I
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "text":Ljava/lang/String;
    :catch_71
    move-exception v1

    .line 185
    .local v1, "e2":Ljava/io/IOException;
    const-string/jumbo v5, "MirrorLink_UPnP"

    const-string/jumbo v6, "iconList.fromXML : IOException"

    invoke-static {v5, v6, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    return v8

    .line 139
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

    .line 140
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_8c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7c .. :try_end_8c} :catch_28
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_8c} :catch_71

    move-result-object v4

    .line 141
    .restart local v4    # "text":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 143
    :try_start_8f
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->height:I
    :try_end_9d
    .catch Ljava/lang/NumberFormatException; {:try_start_8f .. :try_end_9d} :catch_9f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8f .. :try_end_9d} :catch_28
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_9d} :catch_71

    goto/16 :goto_a

    .line 144
    :catch_9f
    move-exception v3

    .line 145
    .restart local v3    # "ex":Ljava/lang/NumberFormatException;
    :try_start_a0
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[AppIcon.fromXML] invalid height : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 148
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "text":Ljava/lang/String;
    :cond_bc
    const-string/jumbo v5, "depth"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_fc

    .line 149
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_cc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a0 .. :try_end_cc} :catch_28
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_cc} :catch_71

    move-result-object v4

    .line 150
    .restart local v4    # "text":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 152
    :try_start_cf
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->depth:I
    :try_end_dd
    .catch Ljava/lang/NumberFormatException; {:try_start_cf .. :try_end_dd} :catch_df
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_cf .. :try_end_dd} :catch_28
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_dd} :catch_71

    goto/16 :goto_a

    .line 153
    :catch_df
    move-exception v3

    .line 154
    .restart local v3    # "ex":Ljava/lang/NumberFormatException;
    :try_start_e0
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[AppIcon.fromXML] invalid depth : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 157
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "text":Ljava/lang/String;
    :cond_fc
    const-string/jumbo v5, "url"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->url:Ljava/lang/String;

    goto/16 :goto_a

    .line 160
    :cond_111
    const/4 v5, 0x3

    if-ne v2, v5, :cond_164

    .line 162
    const-string/jumbo v5, "icon"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_122

    .line 163
    return v9

    .line 164
    :cond_122
    const-string/jumbo v5, "mimetype"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 165
    const-string/jumbo v5, "width"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 164
    if-nez v5, :cond_a

    .line 166
    const-string/jumbo v5, "height"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 164
    if-nez v5, :cond_a

    .line 167
    const-string/jumbo v5, "depth"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 164
    if-nez v5, :cond_a

    .line 168
    const-string/jumbo v5, "url"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_160
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e0 .. :try_end_160} :catch_28
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_160} :catch_71

    move-result v5

    .line 164
    if-nez v5, :cond_a

    .line 172
    return v8

    .line 174
    :cond_164
    const/4 v5, 0x4

    if-ne v2, v5, :cond_a

    goto/16 :goto_a

    .line 189
    :cond_169
    return v8
.end method

.method public hasRequiredElements()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->mimetype:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->mimetype:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 60
    :cond_d
    return v1

    .line 63
    :cond_e
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->url:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1b

    .line 64
    :cond_1a
    return v1

    .line 67
    :cond_1b
    iget v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->width:I

    if-lez v0, :cond_23

    iget v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->height:I

    if-gtz v0, :cond_24

    .line 68
    :cond_23
    return v1

    .line 67
    :cond_24
    iget v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->depth:I

    if-lez v0, :cond_23

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public makeXMLString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v0, "strXML":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "<icon>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string/jumbo v1, "<mimetype>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</mimetype>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string/jumbo v1, "<width>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</width>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string/jumbo v1, "<height>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</height>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string/jumbo v1, "<depth>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->depth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</depth>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string/jumbo v1, "<url>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</url>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string/jumbo v1, "</icon>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public matchesFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 82
    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    .line 83
    :cond_6
    return v4

    .line 87
    :cond_7
    :try_start_7
    const-string/jumbo v1, "icon@mimetype"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 88
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->mimetype:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/lge/mirrorlink/common/StringUtil;->matchesFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 89
    return v2

    .line 91
    :cond_19
    const-string/jumbo v1, "icon@width"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 92
    iget v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->width:I

    invoke-static {v1, p2}, Lcom/lge/mirrorlink/common/StringUtil;->matchesFilter(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 93
    return v2

    .line 95
    :cond_2b
    const-string/jumbo v1, "icon@height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 96
    iget v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->height:I

    invoke-static {v1, p2}, Lcom/lge/mirrorlink/common/StringUtil;->matchesFilter(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 97
    return v2

    .line 99
    :cond_3d
    const-string/jumbo v1, "icon@depth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 100
    iget v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->depth:I

    invoke-static {v1, p2}, Lcom/lge/mirrorlink/common/StringUtil;->matchesFilter(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 101
    return v2

    .line 103
    :cond_4f
    const-string/jumbo v1, "icon@url"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 104
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->url:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/lge/mirrorlink/common/StringUtil;->matchesFilter(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_5d} :catch_61

    move-result v1

    if-eqz v1, :cond_8e

    .line 105
    return v2

    .line 108
    :catch_61
    move-exception v0

    .line 109
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "MirrorLink_UPnP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid AppListingFilter with \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_8e
    return v4
.end method
