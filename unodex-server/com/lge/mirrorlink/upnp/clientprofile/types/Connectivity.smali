.class public Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;
.super Lcom/lge/mirrorlink/common/XMLElement;
.source "Connectivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_UPnP"


# instance fields
.field public bluetooth_bdAddr:Ljava/lang/String;

.field public bluetooth_startConnection:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcom/lge/mirrorlink/common/XMLElement;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;->bluetooth_bdAddr:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;->bluetooth_startConnection:Ljava/lang/Boolean;

    .line 15
    return-void
.end method


# virtual methods
.method public fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 10
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 27
    :try_start_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 28
    .local v2, "eventType":I
    :goto_6
    if-eq v2, v7, :cond_6b

    .line 29
    if-nez v2, :cond_f

    .line 52
    :cond_a
    :goto_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_6

    .line 31
    :cond_f
    if-eq v2, v7, :cond_a

    .line 33
    const/4 v4, 0x2

    if-ne v2, v4, :cond_56

    .line 36
    const-string/jumbo v4, "bdAddr"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 37
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;->bluetooth_bdAddr:Ljava/lang/String;
    :try_end_27
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_27} :catch_28
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_27} :catch_4b

    goto :goto_a

    .line 54
    .end local v2    # "eventType":I
    :catch_28
    move-exception v0

    .line 55
    .local v0, "e1":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v4, "MirrorLink_UPnP"

    const-string/jumbo v5, "connectivity.fromXML : XmlPullParserException"

    invoke-static {v4, v5, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    return v6

    .line 38
    .end local v0    # "e1":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "eventType":I
    :cond_33
    :try_start_33
    const-string/jumbo v4, "startConnection"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 39
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "startConnectionStr":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;->bluetooth_startConnection:Ljava/lang/Boolean;
    :try_end_4a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_4a} :catch_28
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_4a} :catch_4b

    goto :goto_a

    .line 57
    .end local v2    # "eventType":I
    .end local v3    # "startConnectionStr":Ljava/lang/String;
    :catch_4b
    move-exception v1

    .line 58
    .local v1, "e2":Ljava/io/IOException;
    const-string/jumbo v4, "MirrorLink_UPnP"

    const-string/jumbo v5, "connectivity.fromXML : IOException"

    invoke-static {v4, v5, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    return v6

    .line 42
    .end local v1    # "e2":Ljava/io/IOException;
    .restart local v2    # "eventType":I
    :cond_56
    const/4 v4, 0x3

    if-ne v2, v4, :cond_67

    .line 43
    :try_start_59
    const-string/jumbo v4, "connectivity"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_63
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_59 .. :try_end_63} :catch_28
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_63} :catch_4b

    move-result v4

    if-eqz v4, :cond_a

    .line 44
    return v7

    .line 47
    :cond_67
    const/4 v4, 0x4

    if-ne v2, v4, :cond_a

    goto :goto_a

    .line 62
    :cond_6b
    return v6
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;->hasRequiredElements()Z

    move-result v1

    if-nez v1, :cond_b

    .line 68
    const-string/jumbo v1, ""

    return-object v1

    .line 71
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v0, "strXML":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;->bluetooth_bdAddr:Ljava/lang/String;

    invoke-static {v1}, Lcom/lge/mirrorlink/common/StringUtil;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 74
    const-string/jumbo v1, "<bdAddr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;->bluetooth_bdAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</bdAddr>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_2b
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;->bluetooth_startConnection:Ljava/lang/Boolean;

    if-eqz v1, :cond_42

    .line 78
    const-string/jumbo v1, "<startConnection>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;->bluetooth_startConnection:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</startConnection>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_60

    .line 82
    const-string/jumbo v1, "<bluetooth>\n"

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string/jumbo v1, "</bluetooth>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string/jumbo v1, "<connectivity>\n"

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string/jumbo v1, "</connectivity>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
