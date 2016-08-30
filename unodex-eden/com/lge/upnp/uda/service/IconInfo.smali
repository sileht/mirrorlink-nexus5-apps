.class Lcom/lge/upnp/uda/service/IconInfo;
.super Lcom/lge/upnp/uda/service/IIconInfo;
.source "IconInfo.java"


# instance fields
.field private m_ObjId:J


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "ObjId"    # J

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/lge/upnp/uda/service/IIconInfo;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/lge/upnp/uda/service/IconInfo;->m_ObjId:J

    .line 28
    return-void
.end method


# virtual methods
.method public getDepth()Ljava/lang/String;
    .registers 3

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/IconInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIIconInfo;->GetDepth(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .registers 3

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/IconInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIIconInfo;->GetHeight(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/IconInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIIconInfo;->GetMimeType(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/IconInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIIconInfo;->GetUrl(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .registers 3

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/IconInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIIconInfo;->GetWidth(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
